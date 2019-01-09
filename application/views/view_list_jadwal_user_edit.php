<!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1" style=""></div>
                    <div class="col-lg-10" style="">
                        <h1 align="center">Form Edit Post Jadwal User</h1><br>
                        <?php 
                          if($this->session->flashdata('edit_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses mengedit data</div>';
                          }else if($this->session->flashdata('edit_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal mengedit data</div>';
                          }
                          $datetime = explode(" ",$data->waktu_pertemuan);
                          $date = $datetime[0];
                          $time = $datetime[1];?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/edit_jadwal_user/".$data->id_jadwal_user ?>">
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama User</label>
                                <input name="" type="text" class="form-control" id="input_user" required value="<?php echo $data->display_name ?>" disabled>
                                <div id="livesearch_user"></div>
                          </div>
                          
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Judul Jadwal</label>
                                <input name="" type="text" class="form-control" id="input_jadwal" required value="<?php echo $data->judul_jadwal ?>" disabled>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama Rumah Sakit</label>
                                <input name="nama_rs" type="text" class="form-control" id="formGroupExampleInput2" required value="<?php echo $data->nama_rs ?>">
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama Dokter</label>
                                <input name="nama_dokter" type="text" class="form-control" id="formGroupExampleInput2" required value="<?php echo $data->nama_dokter ?>">
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Tanggal Pertemuan</label>
                            <input name="tanggal_pertemuan" type="text" class="form-control" placeholder="klik untuk membuka kalender"  id="example1" value="<?php echo $date ?>">
                          </div>
                          <label for="formGroupExampleInput2">Waktu Pertemuan</label>
                          <div class="input-group clockpicker">
                            <input name="jam_pertemuan" type="text" class="form-control" value="<?php echo $time ?>">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                            </span>
                          </div><br>   
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Pengingat (jam)</label>
                                <input name="pengingat" type="number" class="form-control" id="formGroupExampleInput2" min="0" required value="<?php echo $data->waktu_pengingat ?>">
                          </div>               
                            <div class="form-group" style="float:right">
                                <input type="submit" class="btn btn-success" value="submit" />
                            </div>                         
                        </form>
                    </div>
                    <div class="col-lg-1" style=""></div>
                </div>
            </div>
        </div>
<!-- /#page-content-wrapper -->