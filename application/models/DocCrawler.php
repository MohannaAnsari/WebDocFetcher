<?php


class DocCrawler extends CI_Model
{
    private $links;
    private $target;
    private $doc_count;
    public function __construct()
    {
        parent::__construct();
        set_time_limit(500);
        $this->load->model('Doc');
        $this->load->model('Site');
    }

    public function set_target($site){
        $this->target = $site;
    }

    private function head_request($url){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_NOBODY, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, true);
        $headers = curl_exec($ch);
        curl_close($ch);
        return $headers;
    }

    private function get_base_url(){
        return ($this->target->is_ssl ? 'https' : 'http') . '://' . $this->target->domain;
    }

    public function crawlDocs(){
        $this->links = array();
        $this->doc_count = 0;
        $this->crawlLinks($this->get_base_url(),1, $this->target->depth);
        $this->Site->change_status($this->target->id, SITE_CRAWLED);
    }

    private function url_is_relative($url){
        return !(strpos($url, "/") === 0);
    }

    private function is_doc($ab_url){
        if (isset(parse_url($ab_url)['path']) && isset(pathinfo(parse_url($ab_url)['path'])['extension'])){
            $ext = pathinfo(parse_url($ab_url)['path'])['extension'];
            return in_array($ext, $this->target->doc_formats);
        }
        return false;
    }

    private function crawlLinks($url, $layer, $depth){
        $handle = curl_init();
        $options = Array(
            CURLOPT_RETURNTRANSFER => TRUE,
            CURLOPT_FOLLOWLOCATION => TRUE,
            CURLOPT_CONNECTTIMEOUT => 5,
            CURLOPT_TIMEOUT => 5,
            CURLOPT_MAXREDIRS => 20,
            CURLOPT_URL => $url,
        );
        curl_setopt_array($handle, $options);
        $response = curl_exec($handle);
        curl_close($handle);
        // Parse the Source of the Current Visited Link
        $this->simple_html_dom->load($response);
        foreach($this->simple_html_dom->find('a') as $element){
            // URL Encoding (Removing non-ascii chars)
            $encoded_href = preg_replace_callback('/[^\x20-\x7f]/', function($match) {
                return urlencode($match[0]);
            }, $element->href);
            // Validating href, generating absolute url
            if (filter_var($encoded_href, FILTER_VALIDATE_URL)){
                if (strpos($encoded_href, $this->target->domain) == false)
                    continue;
                $final_href = $encoded_href;
            }
            else{
                if ($this->url_is_relative($encoded_href)){
                    $final_href = $url . (substr($url, -1) == "/" ? "" : "/") . $encoded_href;
                }
                else{
                    $final_href = $this->get_base_url() . $encoded_href;
                }
            }
            if (in_array($final_href, $this->links))
                continue;
            // Check if it's a doc
            if ($this->is_doc($final_href)){
                $this->doc_count++;
                // Save the doc
                $data = array(
                    'site_id'   =>  $this->target->id,
                    'page'      =>  $url,
                    'link'      =>  $final_href,
                    'title'     =>  $this->simple_html_dom->find('title')[0]->innertext,
                    'topic'     =>  $this->simple_html_dom->find('h1')[0]->plaintext
                );
                $this->Doc->save_doc($data);
                if ($this->doc_count >= $this->target->max_docs)
                    return;
            }
            $this->links[] = $final_href;
            if ($layer < $depth)
                $this->crawlLinks($final_href,$layer+1, $depth);
        }
    }
}