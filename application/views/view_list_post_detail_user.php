<style type="text/css">
.table-fixed thead {
  width: 97%;
}
.table-fixed tbody {
  height: 230px;
  overflow-y: auto;
  width: 100%;
}
.table-fixed thead, .table-fixed tbody, .table-fixed tr, .table-fixed td, .table-fixed th {
  display: block;
}
.table-fixed tbody td, .table-fixed thead > tr> th {
  float: left;
  border-bottom-width: 0;
}
</style>

<!-- Page Content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card col-md-12" style="">
                        <h1 align="center">Data User</h1><br>
                        <br>
                        <br>
                        <label for="formGroupExampleInput2"><u>Jadwal User</u></label>
                        <div class="content table-responsive table-full-width" style="overflow-y: auto;height: 187px;margin-top: 10px;">
                            <table class="table table-responsive">
                              <thead>
                                <tr>
                                  <th>No</th>
                                  <th>Jadwal</th>
                                  <th>Minggu</th>
                                  <th>Status</th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php $i=1;
                                    foreach ($data_jadwal as $d) {?>
                                <tr>
                                  <td><?php echo $i ?></td>
                                  <td><?php echo $d['judul_jadwal'] ?></td>
                                  <td><?php echo $d['post_jadwal'] ?></td>
                                  <td><?php echo $d['status_jadwal'] ?></td>
                                </tr>
                                <?php $i++; } ?>
                              </tbody>
                            </table>
                        </div><br><br>

                        <label for="formGroupExampleInput2"><u>Jurnal Bayi</u></label>
                        <div class="content table-responsive table-full-width" style="overflow-y: auto;height: 187px;margin-top: 10px;">
                            <table class="table table-responsive">
                              <thead>
                                <tr>
                                  <th>No</th>
                                  <th>Panjang Tubuh</th>
                                  <th>Berat Tubuh</th>
                                  <th>Denyut Jantung</th>
                                  <th>Cairan Ketuban</th>
                                  <th>Tembuni</th>
                                  <th>Kelainan Kongenital</th>
                                  <th>Waktu</th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php $i=1;
                                    foreach ($data_jurnal_bayi as $d) {?>
                                <tr>
                                  <td><?php echo $i ?></td>
                                  <td><?php echo $d['panjang_tubuh'] ?></td>
                                  <td><?php echo $d['berat_tubuh'] ?></td>
                                  <td><?php echo $d['denyut_jantung'] ?></td>
                                  <td><?php echo $d['cairan_ketuban'] ?></td>
                                  <td><?php echo $d['tembuni'] ?></td>
                                  <td><?php echo $d['kelainan_kongenital'] ?></td>
                                  <td><?php echo $d['waktu_input'] ?></td>
                                </tr>
                                <?php $i++; } ?>
                              </tbody>
                            </table>
                        </div><br><br>

                        <label for="formGroupExampleInput2"><u>Jurnal Kehamilan</u></label>
                        <div class="content table-responsive table-full-width" style="overflow-y: auto;height: 187px;margin-top: 10px;">
                            <table class="table table-responsive">
                              <thead>
                                <tr>
                                  <th>No</th>
                                  <th>Berat Tubuh</th>
                                  <th>Denyut Jantung</th>
                                  <th>Tekanan Darah</th>
                                  <th>Suhu Tubuh</th>
                                  <th>Pernapasan</th>
                                  <th>Lingkar Lengan</th>
                                  <th>Waktu</th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php $i=1;
                                    foreach ($data_jurnal_kehamilan as $d) {?>
                                <tr>
                                  <td><?php echo $i ?></td>
                                  <td><?php echo $d['berat_tubuh'] ?></td>
                                  <td><?php echo $d['denyut_jantung'] ?></td>
                                  <td><?php echo $d['tekanan_darah'] ?></td>
                                  <td><?php echo $d['suhu_tubuh'] ?></td>
                                  <td><?php echo $d['pernapasan'] ?></td>
                                  <td><?php echo $d['lingkar_lengan'] ?></td>
                                  <td><?php echo $d['waktu_input'] ?></td>
                                </tr>
                                <?php $i++; } ?>
                              </tbody>
                            </table>
                        </div><br><br>

                        <label for="formGroupExampleInput2"><u>List Tendangan</u></label>
                        <div class="content table-responsive table-full-width" style="overflow-y: auto;height: 187px;margin-top: 10px;">
                            <table class="table table-responsive">
                              <thead>
                                <tr>
                                  <th>No</th>
                                  <th>Waktu Tendangan</th>
                                  <th>Durasi</th>
                                  <th>Banyak Tendangan</th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php $i=1;
                                    foreach ($data_tendangan as $d) {?>
                                <tr>
                                  <td><?php echo $i ?></td>
                                  <td><?php echo $d['waktu_tendangan'] ?></td>
                                  <td><?php echo $d['durasi_tendangan'] ?></td>
                                  <td><?php echo $d['count_tendangan'] ?></td>
                                </tr>
                                <?php $i++; } ?>
                              </tbody>
                            </table>
                        </div><br><br>

                        <label for="formGroupExampleInput2"><u>List Kontraksi</u></label>
                        <div class="content table-responsive table-full-width" style="overflow-y: auto;height: 187px;margin-top: 10px;">
                            <table class="table table-responsive">
                              <thead>
                                <tr>
                                  <th>No</th>
                                  <th>Durasi</th>
                                  <th>Jeda</th>
                                  <th>Waktu Mulai</th>
                                  <th>Waktu Berhenti</th>
                                  <th>Tanggal Kontraksi</th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php $i=1;
                                    foreach ($data_kontraksi as $d) {?>
                                <tr>
                                  <td><?php echo $i ?></td>
                                  <td><?php echo $d['durasi_kontraksi'] ?></td>
                                  <td><?php echo $d['time_apart'] ?></td>
                                  <td><?php echo $d['time_start'] ?></td>
                                  <td><?php echo $d['time_stop'] ?></td>
                                  <td><?php echo $d['tanggal_kontraksi'] ?></td>
                                </tr>
                                <?php $i++; } ?>
                              </tbody>
                            </table>
                        </div><br><br>

                    </div>
                </div>
            </div>
        </div>
<!-- /#page-content-wrapper -->
