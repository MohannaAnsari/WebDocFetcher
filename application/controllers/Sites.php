<?php


class Sites extends CI_Controller
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function index(){
            $data = array();
            $this->load->model('Site');
            $this->load->model('Doc');
            $data['sites'] = $this->Site->get_sites();
            if (!$data['sites'])
                $data['alerts'] = array('سایتی تعریف نشده است');
            $data['content'] = $this->load->view('sites', $data, true);
            $this->load->view('template/container', $data);
        }

        public function add(){
        $data = array();
        $data['alerts'] = array();
        if (count($_POST) === 6){
            if (strpos($_POST['domain'], 'http') or strpos($_POST['domain'], '/')){
                $data['alerts'][] = 'فرم دامین نادرست است';
            } else{
                $this->load->model('Site');
                $_POST['doc_formats'] = serialize($_POST['format']);
                unset($_POST['format']);
                $this->Site->create_site($_POST);
                redirect('sites');
            }
        }
        else if (count($_POST) > 0)
            $data['alerts'][] = 'لطفا همه فیلد ها را کامل کنید';
        $data['content'] = $this->load->view('new-site', null, true);
        $this->load->view('template/container', $data);
    }
}