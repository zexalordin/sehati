<!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3" style=""></div>
                    <div class="col-lg-6" style="">
                        <h1 align="center">Form Input Data User</h1><br>
                        <?php 
                          if($this->session->flashdata('input_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses menambah data</div>';
                          }else if($this->session->flashdata('input_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal menambah data</div>';
                          } ?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/tambah_user"?>">
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Nama</label>
                            <input name="nama" class="form-control" id="formGroupExampleInput2" placeholder="e.g. Nanda Putri" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Username</label>
                            <input name="username" class="form-control" id="formGroupExampleInput2" placeholder="e.g. root" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Password</label>
                            <input type="password" name="password" class="form-control" id="formGroupExampleInput2" placeholder="e.g. Password" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">No HP</label>
                            <input type="number" name="kontak_user" class="form-control" id="formGroupExampleInput2" placeholder="e.g. 087xxxxxxxxx" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Email</label>
                            <input name="email" class="form-control" id="formGroupExampleInput2" placeholder="e.g. abc@def.com" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Haid Terakhir</label>
                            <input name="haid" type="text" class="form-control" placeholder="klik untuk membuka kalender"  id="example1">
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Pengalaman Hamil</label>
                            <input name="hamil" max="100" min="0" type="number" class="form-control" id="formGroupExampleInput2" placeholder="e.g. 1">
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">pengalaman keguguran</label>
                            <input name="keguguran" max="100" min="0" type="number" class="form-control" id="formGroupExampleInput2" placeholder="e.g. 1">
                          </div>
                          <div class="form-group" style="float:right">
                            <input type="submit" class="btn btn-success" value="submit" />
                          </div>                        
                        </form>
                    </div>
                    <div class="col-lg-3" style=""></div>
                </div>
            </div>
        </div>
<!-- /#page-content-wrapper -->