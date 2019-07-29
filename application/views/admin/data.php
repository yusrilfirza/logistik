<div id="pindahbox" style="background-color:transparent;margin-bottom:16px;">
        <div class="container box" style="background-color:#ffffff;padding:19px;">
            <h1>Pindah Barang</h1>
            <form style="margin-bottom:13px;" autocomplete="off" method="post" action="<?php echo base_url();?>admin/pindah">
                <div class="form-row">
                    <div class="col"><input class="form-control" type="text" placeholder="Kode Inventaris" name="kode_inventaris"></div>
                    <div class="col d-flex justify-content-center"><i class="fa fa-exchange" style="font-size:31px;"></i></div>
                    <div class="col"><input class="form-control" type="text" placeholder="Lokasi Baru" name="tempat_b"></div>
                    <div class="col"><input class="form-control" type="text" placeholder="Kode Ruang" name="kode_lokasi_b"></div>
                    <div class="col"><button class="btn btn-primary btn-block" type="button" id="batalbut" style="background-color:rgb(149,149,149);">Batal</button></div>
                    <div class="col"><button class="btn btn-primary btn-block" type="submit" id="pindahbut" style="background-color:rgb(238,24,24);">Pindah</button></div>
                </div>
            </form>
            <div class="table-responsive">
                <table class="table table-striped" id="table_id3">
                    <thead>
                        <tr>
                            <th>Kode Inventaris</th>
                            <th>Nama Barang</th>
                            <th>Lokasi Awal</th>
                            <th>Lokasi Baru</th>
                        </tr>
                    </thead>
                    <tbody>
                            <?php
                            $i = 0;
                            $j = 0;
                            foreach($pindah_barang as $pindah) :
                                if($pindah['kode_inventaris'] != null)
                                {
                                //    if($i%2 == true)
                                //    {
                                //          $style = "background-color:#f5f5f5;";
                                //    }
                                //    if($i%2 == false)
                                //    {
                                //          $style = "background-color:#ebebeb;";
                                //    }
                                   echo'<tr>
                                   <td>'.$pindah['kode_inventaris'].'</td>
                                   <td>'.$pindah['nama_barang'].'</td>
                                   <td>'.$pindah['tempat_a'].' '.$pindah['kode_lokasi_a'].'</td>
                                   <td>'.$pindah['tempat_b'].' '.$pindah['kode_lokasi_b'].'</td>
                                   </tr>';
                                   $i=$i+1;
                                   $j=$j+1;                 
                                }
                            endforeach;
                            if($j==0)
                            {
                                echo'<tr><td><p style="text-align: center;">Tidak Ada Riwayat Pemindahan </p></td></tr>';
                            }
                            
                            ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div id="kodebarang">
        <div class="container box" style="background-color:#ffffff;padding:25px;">
            <h1>Tambah Kode Jenis Barang</h1>
            <form method="post" autocomplete="off" action="<?php echo base_url(); ?>admin/kode">
                <div class="form-group">
                    <div class="form-row align-items-center mt-2">
                        <div class="col"><input class="form-control" type="text" placeholder="Kode Barang" name="kode_jenis"></div>
                        <div class="col"><input class="form-control" type="text" placeholder="Jenis Barang" name="namabarang"></div>
                        <div class="col"><button class="btn btn-primary btn-block" type="button" id="batalkode" style="background-color:rgb(149,149,149);">Batal</button></div>
                        <div class="col"><button class="btn btn-primary btn-block" type="submit" id="masukkode" style="background-color:rgb(238,24,24);">Masukkan Kode Baru</button></div>
                    </div>
                </div>
            </form>
            <div class="table-responsive">
                <table class="table table-striped" id="table_id1">
                    <thead>
                        <tr>
                            <th>Kode Barang</th>
                            <th>Nama Barang</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php   $i = 0;
                            foreach($kodebarang as $kode) : 
                            if($kode['kode_jenis'] != null)
                             {
                                //   if($i%2 == true)
                                //    {
                                //      $style = "background-color:#f5f5f5;";
                                //     }
                                //   if($i%2 == false)
                                //    {
                                //      $style = "background-color:#ebebeb;";
                                //    }
                                  echo'<tr>
                                  <td>'.$kode['kode_jenis'].'</td>
                                  <td>'.$kode['namabarang'].'</td>
                                  </tr>';
                                  $i=$i+1;  
                                  } 
                                  endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div id="divtambah" style="margin-top:12px;">
        <div class="container box" id="table0" style="background-color:#ffffff;">
            <form style="padding:10px;" autocomplete="off" method="post" action="<?php echo base_url(); ?>admin/tambah">
                <h1>Form Penambahan</h1>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col">
                            <p style="margin-bottom:4px;">Tempat</p>
                                <select class="form-control" name="tempat">
                                <?php
                                    foreach($kodetempat as $tempat):

                                            echo '<option value="'.$tempat['lokasi'].'_'.$tempat['kode_lokasi'].'">'.$tempat['lokasi'].'</option>';
                                    
                                    endforeach;
                                    
                                    ?>
                                </select>
                            </div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Nama Akun</p>
                                <select class="form-control" name="akun">
                                <?php
                                    foreach($kodemtp as $mtp):
                                        if($mtp['kode_mtp'] != null)
                                        {
                                            echo '<option value="'.$mtp['akun'].'_'.$mtp['kode_mtp'].'">'.$mtp['akun'].'</option>';
                                        }
                                    endforeach;
                                    
                                    ?>
                                </select>
                            </div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Nama Unit</p>
                                <select class="form-control" name="unit">
                                <?php
                                    foreach($kodeunit as $unit):
                                        if($unit['kode_unit'] != null)
                                        {
                                            echo '<option value="'.$unit['nama'].'_'.$unit['kode_unit'].'">'.$unit['nama'].'</option>';
                                        }
                                    endforeach;
                                    
                                    ?>
                                </select>
                            </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col">
                        <p style="margin-bottom:4px;">Jenis</p>
                        <select class="form-control" name="nama_barang">
                        <?php
                            foreach($kodebarang as $kode):
                                if($kode['kode_jenis'] != null)
                                {
                                    echo '<option value="'.$kode['namabarang'].'_'.$kode['kode_jenis'].'">'.$kode['namabarang'].'</option>';
                                }
                            endforeach;

                        ?>
                            <!-- <option>Large select</option> -->
                        </select>
                        </div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Nilai Barang</p><input class="form-control" type="text" placeholder="Nilai Barang" name="nilai_barang"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Tanggal Pembelian</p><input class="form-control" type="date" style="margin-right:10px;" name="tgl_beli"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Kondisi</p><input class="form-control" type="text" placeholder="Kondisi" name="kondisi"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Spesifikasi</p><input class="form-control" type="text" placeholder="Spesifikasi" name="spesifikasi"></div>
                    </div>
                </div>
                <div class="form-group d-flex justify-content-end"><button class="btn btn-primary" type="button" id="bataltambah" style="margin-right:9px;background-color:rgb(149,149,149);">Batal</button>
                <button class="btn btn-primary" type="submit" id="tambahkan" style="background-color:rgb(238,24,24);" name="tambahkan">Tambah Barang</button></div>
            </form>
        </div>
    </div>
    <div style="margin-top:7px;">
        <div class="container box" id="table1" style="background-color:#ffffff;">
            <form style="padding:11px;">
                <div class="form-row mt-90">
                    <div class="col"><h1>Data Logistik</h1></div>
                    <div class="col">
                        <div class="form-group d-flex mt-2 justify-content-end">
                            <button class="btn btn-primary" type="button" id="kode" style="background-color:rgb(238,24,24);margin-left:8px;">Kode Barang</button><button class="btn btn-primary" type="button" id="tambah" style="background-color:rgb(238,24,24);margin-left:8px;">Tambah</button>
                            <button class="btn btn-primary" type="button" id="pindah" style="background-color:rgb(238,24,24);margin-left:8px;">Pindah</button>
                        </div>
                    </div>
                </div> 
                <?php echo validation_errors();?>
                <div class="form-group">
                    <div class="table-responsive" style="padding:0px;">
                        <table class="table table-striped" id="table_id">
                            <thead>
                                <tr>
                                    <th style="width:132px;">Kode Inventaris</th>
                                    <th>Nama Barang</th>
                                    <th style="width:100px;">Kondisi</th>
                                    <th style="width:250px;">Spesifikasi</th>
                                    <th>Tempat</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php       $i = 0;
                                            foreach($logistik as $log) : 
                                                if($log['kode_inventaris'] != null)
                                                {
                                                    // if($i%2 == true)
                                                    // {
                                                    //     $style = "background-color:#f5f5f5;";
                                                    // }
                                                    // if($i%2 == false)
                                                    // {
                                                    //     $style = "background-color:#ebebeb;";
                                                    // }
                                                    echo'<tr>
                                                    <td>'.$log['kode_inventaris'].'</td>
                                                    <td>'.$log['nama_barang'].'</td>
                                                    <td>'.$log['kondisi'].'</td>
                                                    <td>'.$log['spesifikasi'].'</td>
                                                    <td>'.$log['tempat'].'</td>
                                                    </tr>';
                                                    $i=$i+1;  
                                                } 
                                                endforeach ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
        </div>
    </div>