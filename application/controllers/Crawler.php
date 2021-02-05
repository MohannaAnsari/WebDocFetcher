<?php


class Crawler extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    private function fire_and_forget($site)
    {
        $post_params = array();

        foreach (array('site_id' => $site->id) as $key => &$val) {
            if (is_array($val)) $val = implode(',', $val);
            $post_params[] = $key.'='.urlencode($val);
        }
        $post_string = implode('&', $post_params);

        $parts=parse_url(site_url('crawler/init_crawl'));

        $fp = fsockopen($parts['host'],
            isset($parts['port'])?$parts['port']:80,
            $errno, $errstr, 30);

        $out = "POST ".$parts['path']." HTTP/1.1\r\n";
        $out.= "Host: ".$parts['host']."\r\n";
        $out.= "Content-Type: application/x-www-form-urlencoded\r\n";
        $out.= "Content-Length: ".strlen($post_string)."\r\n";
        $out.= "Connection: Close\r\n\r\n";
        if (isset($post_string)) $out.= $post_string;

        fwrite($fp, $out);
        fclose($fp);
    }

    public function init_crawl()
    {
        $site_id = $_POST['site_id'];
        $this->load->model('Site');
        $site = $this->Site->get_site_by_id($site_id);
        $this->load->model('DocCrawler');
        $this->DocCrawler->set_target($site);
        $this->DocCrawler->crawlDocs();
    }

    public function crawl($id = null)
    {
        $data = array();
        if (!isset($id))
            redirect('sites');
        $this->load->model('Site');
        $site = $this->Site->get_site_by_id($id);
        if (!$site)
            redirect('sites');
        if ($site->status == SITE_IS_BEING_CRAWLED) {
            // RETURN AND RAISE ALERT
            $data['alerts'][] = 'خزش در حال انجام است.';
        } else {
            if ($site->status == SITE_CRAWLED) {
                // Recrawl, Clearing old crawled data
                $this->load->model('Doc');
                $this->Doc->clear_site_docs($site->id);
            }
            // Change status, and start crawling
            $this->Site->change_status($site->id, SITE_IS_BEING_CRAWLED);
            $this->fire_and_forget($site);
            $data['alerts'][] = 'خزش شروع شد.';
            $data['alerts'][] = "<a href='" . site_url('crawler/docs/'.$site->id) . "'>برای نمایش نتایح کلیک کنید</a>";
        }
        $this->load->view('template/container', $data);
    }

    public function docs($id){
        $data = array();
        if (!isset($id))
            redirect('sites');
        $this->load->model('Site');
        $site = $this->Site->get_site_by_id($id);
        if (!$site)
            redirect('sites');
        $this->load->model('Doc');
        $data['site'] = $site;
        $docs = $this->Doc->get_docs($site->id);
        $data['docs'] = $docs;
        $data['content'] = $this->load->view('docs', $data, true);
        $this->load->view('template/container', $data);
    }
}