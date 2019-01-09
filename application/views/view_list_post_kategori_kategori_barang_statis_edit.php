<!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1" style=""></div>
                    <div class="col-lg-10" style="">
                        <h1 align="center">Form Edit Post Kategori Kategori Barang Statis</h1><br>
                        <?php 
                          if($this->session->flashdata('input_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses menambah data</div>';
                          }else if($this->session->flashdata('input_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal menambah data</div>';
                          } ?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/edit_kategori_kategori_barang_statis/".$data->id_kategori_kategori_barang_statis ?>">
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama Kategori</label>
                                <input name="nama_kategori" type="text" class="form-control" id="formGroupExampleInput2" value="<?php echo $data->nama_kategori_kategori_barang_statis ?>" required>
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