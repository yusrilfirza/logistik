    <div style="margin-top:7px;">
        <div class="container box" id="table1" style="background-color:#ffffff;">
            <form style="padding:11px;">
                <h1>Data Peminjaman</h1>
                <div class="form-group">
                    <div class="table-responsive" style="padding:0px;">
                        <table class="table table-striped" id="table_id">
                            <thead>
                                <tr>
                                    <th style="width:132px;">Tgl Pengajuan</th>
                                    <th>Nama Barang</th>
                                    <th>Kode Inventaris</th>
                                    <th>Nama Peminjam</th>
                                    <th style="width:100px;">Jumlah</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <?php
                                    foreach($peminjaman as $pinjam):
                                        if($pinjam['sts'] == 0)
                                        {
                                            $ket = 'Ajuan Ditolak';
                                        }
                                        if($pinjam['sts'] == 1)
                                        {
                                            $ket = 'Pengajuan';
                                        }
                                        if($pinjam['sts'] == 2)
                                        {
                                            $ket = 'Disetujui';
                                        }
                                        if($pinjam['sts'] == 3)
                                        {
                                            $ket = 'Terpinjam';
                                        }
                                        if($pinjam['sts'] == 4)
                                        {
                                            $ket = 'Dikembalikan';
                                        }
                                        echo'<tr>
                                            <td>'.$pinjam['tgl_aju'].'</td>
                                            <td>'.$pinjam['namabarang'].'</td>
                                            <td>'.$pinjam['kode_inventaris'].'</td>
                                            <td>'.$pinjam['nama_peminjam'].'</td>
                                            <td>'.$pinjam['jumlah'].'</td>
                                            <td>'.$ket.'</td>
                                            </tr>';
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
</body>