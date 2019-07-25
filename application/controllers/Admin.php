<?php

class Admin extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('Logistik_model');
    }

    public function index(){
        if ($this->session->userdata('admin'))
        {
            $data['logistik'] = $this->Logistik_model->getAllLogistik();
            $data['pindah_barang'] = $this->Logistik_model->getPindahBarang();
            $data['kodebarang'] = $this->Logistik_model->getKodeBarang();
            $data['kodemtp'] = $this->Logistik_model->getKodeMtp();
            $data['kodetempat'] = $this->Logistik_model->getKodeTempat();
            $data['kodeunit'] = $this->Logistik_model->getKodeUnit();
            $data['pindahbarang'] = $this->Logistik_model->pindah();
            $data['judul'] = 'Admin';
            $this->load->view('templates/header2',$data);
            $this->load->view('admin/data');
            $this->load->view('templates/footer');
        }
        else{
            redirect('home');
        }

        // $this->form_validation->set_rules('tempat','Tempat','required');
        // $this->form_validation->set_rules('kode_lokasi','Kode Lokasi','required');
        // $this->form_validation->set_rules('nama_unit','Nama Unit','required');
        // $this->form_validation->set_rules('kode_barang','Kode Jenis Barang','required');
        // $this->form_validation->set_rules('nomor_urut','Nomor Urut','required');
        // $this->form_validation->set_rules('nomor_mtp','Nomor MTP','required');
        // $this->form_validation->set_rules('nama_barang','Nama Barang','required');
        // $this->form_validation->set_rules('nilai_barang','Nilai Barang','required');
        // $this->form_validation->set_rules('kondisi','Kondisi','required');
        // $this->form_validation->set_rules('spesifikasi','Spesifikasi','required');

    }

    public function tambah(){
        $this->Logistik_model->tambahBarang();
        redirect('admin');
    }
    
    public function kode(){
        $this->Logistik_model->tambahKode();
        redirect('admin');
    }
    
    public function pindah(){
        $this->Logistik_model->pindah();
        redirect('admin');
    }
}