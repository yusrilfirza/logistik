    <div id="divpinj" style="margin-top:96px;">
        <div class="container box" id="table0" style="background-color:#ffffff;">
            <form style="padding:10px;" method="post" autocomplete="off" action="<?php echo base_url();?>home/formPinjam">
                <h1>Form Peminjaman</h1>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col">
                            <p style="margin-bottom:4px;">Nama Peminjam</p><input class="form-control" type="text" placeholder="Nama Peminjam" name="nama_peminjam"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Nomor Identitas</p><input class="form-control" type="text" placeholder="Nomor Identitas" name="nomor_identitas"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Nomor Telp.</p><input class="form-control" type="text" placeholder="Nomor Telp." name="nomor_telp"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col">
                            <p style="margin-bottom:4px;">Kode Inventaris</p><input class="form-control" type="text" placeholder="Kode Inventaris" name="kode_inventaris"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Jumlah</p><input class="form-control" type="number" placeholder="Jumlah Barang" name="jumlah"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Keperluan</p><input class="form-control" type="text" placeholder="Keperluan" name="keperluan"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col">
                            <p style="margin-bottom:4px;">Tanggal Peminjaman</p><input class="form-control" type="date" style="margin-right:10px;" name="tgl_pinjam"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Waktu</p><input class="form-control" type="time" style="width:113px;" name="waktu_pinjam"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Tanggal Pengembalian</p><input class="form-control" type="date" style="margin-right:10px;" name="tgl_balik"></div>
                        <div class="col">
                            <p style="margin-bottom:4px;">Waktu</p><input class="form-control" type="time" style="width:113px;" name="waktu_balik"></div>
                    </div>
                </div>
                <div class="form-group d-flex justify-content-end"><button class="btn btn-primary" type="button" id="batalpinj" style="margin-right:9px;background-color:rgb(149,149,149);">Batal</button><button class="btn btn-primary" type="submit" id="ajukan" style="background-color:rgb(238,24,24);">Ajukan Peminjaman</button></div>
            </form>
        </div>
    </div>
    <div style="margin-top:7px;">
        <div class="container box" id="table1" style="background-color:#ffffff;">
            <form style="padding:11px;">
            <div class="form-row mt-90">
                <div class="col"><h1>Data Logistik</h1></div>
                <div class="col">
                    <div class="container-fluid d-flex justify-content-end ">
                        <button class="btn btn-primary" type="button" id="pinjam" style="background-color:rgb(238,24,24);margin-left:8px;margin-top:20px;">Form Peminjaman</button>
                    </div>
                </div>
            </div>
                <div class="form-group d-flex"></div>
                <div class="form-group">
                    <div class="table-responsive" style="padding:0px;">
                        <table class="table table-striped" id="table_id1">
                            <thead style="background-color: #a3a3a3">
                                <tr>
                                    <th style="width:132px;">Kode Inventaris</th>
                                    <th>Nama Barang</th>
                                    <th style="width:100px;">Kondisi</th>
                                    <th style="width:250px;">Spesifikasi</th>
                                    <th>Lokasi</th>
                                </tr>
                            </thead>
                            <tbody style="background-color: #ededed;"> <?php   $i = 0;
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
    <footer style="height:21px;"></footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/index.js"></script>
</body>