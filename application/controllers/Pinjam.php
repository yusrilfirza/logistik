<?php

class Pinjam extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Logistik_model');
    }
 
    public function index()
    {
        $data['peminjaman'] = $this->Logistik_model->getPinjam();
        $data['judul'] = 'Data Peminjaman';
        $this->load->view('templates/header', $data);
        $this->load->view('pinjam/index');
        $this->load->view('templates/footer');
    }
    
}