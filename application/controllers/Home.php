<?php

class Home extends CI_Controller {
 
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Logistik_model');
    }
    public function index()
    {
        $this->load->model('Logistik_model');
        $data['logistik'] = $this->Logistik_model->getAllLogistik();
        $data['judul'] = 'Inventaris TPCC';
        $this->load->view('templates/header', $data);
        $this->load->view('home/index');
        $this->load->view('templates/footer');
        $this->session->unset_userdata('admin');
    }
    public function pinjam()
    {
        $this->load->view('templates/header');
        $this->load->view('home/pinjam');
        $this->load->view('templates/footer');
    }
    public function formPinjam()
    {
        $this->Logistik_model->pinjam();
        redirect ('home');
    }

}