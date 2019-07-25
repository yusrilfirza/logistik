<?php

class Data extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Logistik_model');
    }

    public function index()
    {
        
        if($this->session->userdata('admin'))
        {
            $data['peminjaman'] = $this->Logistik_model->getPinjam();
            $data['judul'] = "Data Pinjam (Admin)";
            $this->load->view('templates/header2', $data);
            $this->load->view('admin/pinjam_admin');
            $this->load->view('templates/footer');
        }
        else 
        {
            // $this->Logistik_model->aa();
            redirect('home');
        }
    }
    public function Edit($id)
    {
        $this->Logistik_model->tambah($id);
        redirect('data');
    }
    
    public function Edit2($id)
    {
        $this->Logistik_model->kurang($id);
        redirect('data');
    }
}