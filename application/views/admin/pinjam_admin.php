<div style="margin-top:7px;">
        <div class="container box" id="table1" style="background-color:#ffffff;">
            <form style="padding:11px;">
                <h1>Data Peminjaman Admin</h1>
                <div class="form-group">
                    <div class="table-responsive" style="padding:0px;">
                        <table class="table table-striped" id="table_id5">
                            <thead>
                                <tr>
                                    <th style="width:132px;">Tgl Pengajuan</th>
                                    <th>Nama Barang</th>
                                    <th>Kode Inventaris</th>
                                    <th>Nama Peminjam</th>
                                    <th style="width:100px;">Jumlah</th>
                                    <th>Status</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <?php
                                    foreach($peminjaman as $pinjam):
                                        $but = 1;
                                        if($pinjam['sts'] == '0')
                                        {
                                            $ket = 'Ditolak';
                                            $kelas = "badge badge-success";
                                            $kelas2 = "badge badge-danger";
                                            $keterangan = "Batal Penolakan";
                                            $keterangan2 = "Hapus Data";
                                            $but = $but+1;
                                        }
                                        if($pinjam['sts'] == '1')
                                        {
                                            $ket = 'Pengajuan';
                                            $kelas = "badge badge-success";
                                            $kelas2 = "badge badge-danger";
                                            $keterangan = "Setujui";
                                            $keterangan2 = "Tolak";
                                        }
                                        if($pinjam['sts'] == '2')
                                        {
                                            $ket = 'Disetujui';
                                            $kelas = "badge badge-success";
                                            $kelas2 = "badge badge-danger";
                                            $keterangan = "Konfirm Pengambilan";
                                            $keterangan2 = "Batal Setuju";
                                        }
                                        if($pinjam['sts'] == '3')
                                        {
                                            $ket = 'Terpinjam';
                                            $kelas = "badge badge-success";
                                            $kelas2 = "badge badge-danger";
                                            $keterangan = "Konfirm Pengembalian";
                                            $keterangan2 = "Batal Pengambilan";
                                        }
                                        if($pinjam['sts'] == '4')
                                        {
                                            $ket = 'Dikembalikan';
                                            $kelas = "badge badge-success";
                                            $kelas2 = "badge badge-danger";
                                            $keterangan = "Konfirm Ketersediaan";
                                            $keterangan2 = "Batal Pengengembalian";
                                            $but = $but+1;
                                        }
                                        echo'<tr>
                                            <td>'.$pinjam['tgl_aju'].'</td>
                                            <td>'.$pinjam['namabarang'].'</td>
                                            <td>'.$pinjam['kode_inventaris'].'</td>
                                            <td>'.$pinjam['nama_peminjam'].'</td>
                                            <td>'.$pinjam['jumlah'].'</td>
                                            <td>'.$ket.'</td>';
                                        if($but != 2)
                                        {
                                            echo'
                                            <td><a href="'.base_url().'data/edit/'.$pinjam['id'].'" class="'.$kelas.'">'.$keterangan.'</a></td>
                                            <td><a href="'.base_url().'data/edit2/'.$pinjam['id'].'" class="'.$kelas2.'">'.$keterangan2.'</a></td>
                                            </tr>';
                                        }
                                    endforeach;
                                    ?>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/index.js"></script>
    <script type="text/javascript" src="assets/datatables/datatables.min.js"></script>
    <!-- <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.js"></script> -->
    <script type="text/javascript" src="assets/js/table.js"></script>
</body>