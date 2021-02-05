<?php


class Site extends CI_Model
{
    private $table = 'sites';

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function create_site($data){
        $this->db->insert($this->table, $data);
    }

    public function get_sites(){
        return $this->db->get($this->table)->result();
    }

    public function get_site_by_id($id){
        $site = $this->db->get_where($this->table, array('id' => $id))->row();
        $site->doc_formats = unserialize($site->doc_formats);
        return $site;
    }

    public function change_status($id, $status){
        $this->db->set('status', $status)
            ->where('id', $id)
            ->update($this->table);
    }
}