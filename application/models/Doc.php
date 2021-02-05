<?php


class Doc extends CI_Model
{
    private $table = 'docs';

    public function __construct()
    {
        parent::__construct();
    }

    public function save_doc($data){
        $this->db->insert($this->table, $data);
    }

    public function clear_site_docs($site_id){
        $this->db->simple_query("DELETE FROM $this->table WHERE site_id=$site_id");
    }

    public function site_doc_count($site_id){
        return $this->db->where('site_id', $site_id)
            ->from($this->table)
            ->count_all_results();
    }

    public function get_docs($site_id){
        return $this->db->where('site_id', $site_id)
            ->get($this->table)
            ->result();
    }
}