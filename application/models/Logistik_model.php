<?php

class Logistik_model extends CI_model {
    public function getAllLogistik(){
        $query = $this->db->get('barang');
        return $query->result_array();
    }
    
    public function getPindahBarang(){
        $query = $this->db->get('pindah');
        return $query->result_array();
    }
    
    public function getKodeBarang(){
        $query = $this->db->get('kodebarang');
        return $query->result_array();
    }
    
    public function tambahBarang(){
        $nambar = $this->input->post('nama_barang',true);
        $explode = explode('_',$nambar);
        $nabar = $explode[0];
        $tgl = $this->input->post('tgl_beli', true);
            if ($tgl == null)
            {
                $tahun_beli = "XX";
            }
            else
            {
                $tahun_beli = $tgl[2].$tgl[3];
            }
        $lokasi = htmlspecialchars($this->input->post('kode_lokasi', true));
        $unit = htmlspecialchars($this->input->post('nama_unit', true));
        $urut = htmlspecialchars($this->input->post('nomor_urut', true));
        $mtp = htmlspecialchars($this->input->post('nomor_mtp', true));

        $inven = $lokasi.$unit.$tahun_beli.$explode[1].$urut.$mtp;

        $data = [
            "tempat" => htmlspecialchars($this->input->post('tempat', true)),
            "kode_lokasi" => htmlspecialchars($this->input->post('kode_lokasi', true)),
            "nama_unit" => htmlspecialchars($this->input->post('nama_unit', true)),
            "kode_barang" => $explode[1],
            "nomor_urut" => htmlspecialchars($this->input->post('nomor_urut', true)),
            "nomor_mtp" => htmlspecialchars($this->input->post('nomor_mtp', true)),
            "nama_barang" => $nabar,
            "nilai_barang" => htmlspecialchars($this->input->post('nilai_barang', true)),
            "tgl_beli" => htmlspecialchars($this->input->post('tgl_beli', true)),
            "kondisi" => htmlspecialchars($this->input->post('kondisi', true)),
            "spesifikasi" => htmlspecialchars($this->input->post('spesifikasi', true)),
            "kode_tahun" => $tahun_beli,
            "kode_inventaris" => $inven
        ];
        $this->db->insert('barang', $data);
    }
    
    public function tambahKode(){
        $data = [
            "kode_jenis" => htmlspecialchars($this->input->post('kode_jenis', true)),
            "namabarang" => htmlspecialchars($this->input->post('namabarang', true))
        ];
        $this->db->insert('kodebarang', $data);
    }
    
    public function pindah(){
        $invent = htmlspecialchars($this->input->post('kode_inventaris', true));
        $this->db->where('kode_inventaris', $invent);
        $query = $this->db->get('barang');
        $result = $query->result_array();
        $nama_barang = '';
        $lokasi_awal = '';
        $kode_awal = '';
        $nama_unit = '';
        $tahun = '';
        $nomor_urut = '';
        $nomor_mtp = '';
        $kode_barang = '';
        $lokasi_baru = htmlspecialchars($this->input->post('kode_lokasi_b', true));
        foreach ($result as $r)
        {
            $nama_barang = $r['nama_barang'];
            $lokasi_awal = $r['tempat'];
            $kode_awal = $r['kode_lokasi'];
            $nama_unit = $r['nama_unit'];
            $tahun = $r['kode_tahun'];
            $nomor_urut = $r['nomor_urut'];
            $nomor_mtp = $r['nomor_mtp'];
            $kode_barang = $r['kode_barang'];
        }
        $data = [
            "kode_inventaris" => $invent,
            "nama_barang" => $nama_barang,
            "tempat_a" => $lokasi_awal,
            "kode_lokasi_a" => $kode_awal,
            "tempat_b" => htmlspecialchars($this->input->post('tempat_b', true)),
            "kode_lokasi_b" => htmlspecialchars($this->input->post('kode_lokasi_b', true))
        ];
        $kode_baru = $lokasi_baru.$nama_unit.$tahun.$kode_barang.$nomor_urut.$nomor_mtp;
        $data2 = [
            "kode_inventaris" => $kode_baru,
            "kode_lokasi" => $lokasi_baru,
            "tempat" => htmlspecialchars($this->input->post('tempat_b', true))
        ];
        $this->db->where('kode_inventaris', $invent);
        $this->db->update('barang', $data2);
        $this->db->insert('pindah', $data);
        return $result;      
    }

    public function pinjam(){
        $invent = htmlspecialchars($this->input->post('kode_inventaris', true));
        $this->db->where('kode_inventaris', $invent);
        $query = $this->db->get('barang');
        $hasil = $query->result_array();
        $lokasi = '';
        $namabarang = '';
        foreach ($hasil as $h){
            $namabarang = $h['nama_barang'];
            $lokasi = $h['tempat'];
        }
        $sts = '1';
        $data = [
            "nama_peminjam" => htmlspecialchars($this->input->post('nama_peminjam', true)),
            "nomor_identitas" => htmlspecialchars($this->input->post('nomor_identitas', true)),
            "nomor_telp" => htmlspecialchars($this->input->post('nomor_telp', true)),
            "kode_inventaris" => $invent,
            "namabarang" => $namabarang,
            "lokasi" => $lokasi,
            "jumlah" => htmlspecialchars($this->input->post('jumlah', true)),
            "keperluan" => htmlspecialchars($this->input->post('keperluan', true)),
            "tgl_pinjam" => htmlspecialchars($this->input->post('tgl_pinjam', true)),
            "waktu_pinjam" => htmlspecialchars($this->input->post('waktu_pinjam', true)),
            "tgl_balik" => htmlspecialchars($this->input->post('tgl_balik', true)),
            "waktu_balik" => htmlspecialchars($this->input->post('waktu_balik', true)),
            "tgl_aju" => date('d-M-Y'),
            "sts" => $sts
        ];
        $this->db->insert('peminjaman', $data);
        return $hasil;

    }

    public function getPinjam(){
        $query = $this->db->get('peminjaman');
        return $query->result_array();
    }
    
    public function tambah($id){
        $this->db->where("id", $id);
        $query = $this->db->get('peminjaman');
        $hasil = $query->result_array();
        $sts = '';
        foreach ($hasil as $h) {
            if($h['sts'] != '4'){
                $sts = (int)$h['sts']+1;
            }
            else{
                $sts = 0;
            }
        }
        $data = [
            "sts" => $sts
        ];
        
        $this->db->where("id",$id);
        $this->db->update("peminjaman", $data);
        return $hasil;
    }
    
    public function kurang($id){
        $this->db->where("id", $id);
        $query = $this->db->get('peminjaman');
        $hasil = $query->result_array();
        $sts = '';
        foreach ($hasil as $h) {
            $sts = (int)$h['sts'];
        }

        if ($sts != 0)
        {
            $sts = (int)$sts-1;
            $data = [
                "sts" => $sts
            ];
            $this->db->where("id",$id);
            $this->db->update("peminjaman", $data);
        }
        else
        {
            $data = [
                "sts" => $sts
            ];
            $this->db->where("id",$id);
            $this->db->delete("peminjaman", $data);
        }
        
        return $hasil;

    }

    public function verifikasi()
    {
        $user = $this->input->post('username', true);
        $pass = $this->input->post('password', true);
        $word = '$2y$10$meN833jxqXdKve6BTkkKjezrOO42bGEGD9JVTcplpZ0wpuESjwRO2';
        if ($user == 'admin'){
            if(password_verify($pass, $word)){
                $this->session->set_userdata('admin', true);
                redirect('admin');
            }
            else{
                $this->session->set_flashdata('pass', 'Password Salah');
                redirect('login');
            }
        }
        else{
            $this->session->set_flashdata('user', 'Username salah');
            redirect('login');
        }
    }
}