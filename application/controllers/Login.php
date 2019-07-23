<?php

class Login extends CI_Controller {
    public function index(){
        $this->load->view('admin/login');
    }
    public function verif(){
        $this->load->model('Logistik_model');
        $this->Logistik_model->verifikasi();
    }

}