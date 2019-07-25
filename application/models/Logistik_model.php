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

    public function getKodeMtp(){
        $query = $this->db->get('kode_akun');
        return $query->result_array();
    }
    
    public function getKodeTempat(){
        $query = $this->db->get('kodetempat');
        return $query->result_array();
    }
    
    public function getKodeUnit(){
        $query = $this->db->get('kodeunit');
        return $query->result_array();
    }
    
    public function tambahBarang(){
        $nambar = $this->input->post('nama_barang',true);
        $explode = explode('_',$nambar);
        $nabar = $explode[0];
        $this->db->where('nama_barang', $nabar);
        $ngurut = $this->db->get('barang');
        $no_urut = $ngurut->result_array();
        $tgl = $this->input->post('tgl_beli', true);
            if ($tgl == null)
            {
                $tahun_beli = "XX";
            }
            else
            {
                $tahun_beli = $tgl[2].$tgl[3];
            }
        $tpt = htmlspecialchars($this->input->post('tempat', true));
        $tempat = explode('_', $tpt);
        $lokasi = $tempat[1];

        $nama_unit = htmlspecialchars($this->input->post('unit', true));
        $nama_unit2 = explode('_', $nama_unit);
        $unit = $nama_unit2[1];

        $urut = sprintf("%03d", count($no_urut)+1);

        $akun = htmlspecialchars($this->input->post('akun', true));
        $akun2 = explode('_', $akun);
        $mtp = $akun2[1];

        $inven = $lokasi.$unit.$tahun_beli.$explode[1].$urut.$mtp;

        $data = [
            "tempat" => $tempat[0],
            "kode_lokasi" => $tempat[1],
            "nama_unit" => $nama_unit2[0],
            "kode_unit" => $unit,
            "kode_barang" => $explode[1],
            "nomor_urut" => $urut,
            "nomor_mtp" => $mtp,
            "nama_barang" => $nabar,
            "nilai_barang" => htmlspecialchars($this->input->post('nilai_barang', true)),
            "tgl_beli" => htmlspecialchars($this->input->post('tgl_beli', true)),
            "kondisi" => htmlspecialchars($this->input->post('kondisi', true)),
            "spesifikasi" => htmlspecialchars($this->input->post('spesifikasi', true)),
            "kode_tahun" => $tahun_beli,
            "kode_inventaris" => $inven,
            "nama_akun" => $akun2[0]
        ];
        $this->db->insert('barang', $data);
        return $no_urut;
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
                $sts = '0';
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

    public function aa()
    {
        $data = array("MKT", "SOL", "RR2", "RR6", "RDR", "401", "402", "403", "404", "405", "406", "507", "UKM", "LTF", "LTC");
        $data2 = array("RUANG MARKETING", "RUANG SOLUTION", "RUANG RAPAT R2", "RUANG RAPAT R6", "RUANG DIREKTUR", "RUANG ", "RUANG ", "RUANG ", "RUANG ", "RUANG ", "RUANG ", "RUANG ", "RUANG UKM", "LABORATORIUM TIFO", "LABORATORIUM TEST CENTER");
        $i=0;
        foreach ($data as $row)
        {
            // $this->db->where('kode_lokasi', $data5[$i]);
            // $query = $this->db->get('kodetempat');
            // $hasil = $query->result_array();
            // $tempat = '';
            // if($data5[$i]=='4FO')
            // {
            //     $tempat='Fiber Optik';
            // }
            // if($data5[$i]=='401')
            // {
            //     $tempat='Ruangan 401';
            // }
            // if($data5[$i]=='4GR')
            // {
            //     $tempat = 'Graphic Room';
            // }
            // else
            // {
            //     foreach($hasil as $h)
            //     {
            //         $tempat=$h['lokasi'];
            //     }
            // }
            // if($data10[$i]=='101')
            // {
            //     $data3[$i]="PC";
            // }
            // if($data10[$i]=='160')
            // {
            //     $data3[$i]="MIC";
            // }
            // if($data10[$i]=='224')
            // {
            //     $data3[$i]="CCTV";
            // }
           
            $this->db->insert("kodetempat", array(
                'kode_lokasi'=>$row, 'lokasi'=>$data2[$i]
                // // 'kode_barang'=>$row, 
                // 'nomor_urut'=>$data2[$i],
                // 'nama_barang'=>$data3[$i],
                // 'spesifikasi'=>$data4[$i],
                // 'kode_lokasi'=>$data5[$i],
                // 'kode_unit'=>$data6[$i],
                // 'kode_tahun'=>$data7[$i],
                // 'kode_inventaris'=>$data8[$i],
                // 'nomor_mtp'=>$data9[$i],
                // 'tempat'=>$tempat,
                // 'kode_barang'=>$data10[$i]
                ));
            $i=$i+1;
        }
        // return $hasil;
    }
}