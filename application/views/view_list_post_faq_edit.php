<!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1" style=""></div>
                    <div class="col-lg-10" style="">
                        <h1 align="center">Form Edit Post FAQ</h1><br>
                        <?php 
                          if($this->session->flashdata('edit_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses mengedit data</div>';
                          }else if($this->session->flashdata('edit_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal mengedit data</div>';
                          } ?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/edit_faq/".$data->id_faq?>" enctype="multipart/form-data">
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Judul</label>
                                <input name="judul" type="text" class="form-control" id="formGroupExampleInput2" required value="<?php echo $data->judul_faq ?>">
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput">Post Minggu ke-</label>
                            <select name="minggu_post" class="form-control" id="sel1" required>
                                <?php 
                                  for ($x = 1; $x <= 40; $x++) {
                                    if($x == $data->post_faq)
                                      echo "<option value=".$x." selected>".$x."</option>";
                                    else
                                      echo "<option value=".$x.">".$x."</option>";
                                  } 
                                ?>
                            </select>
                          </div>
                            <textarea name="text-ckeditor" id="text-ckeditor"><?php echo $data->detail_faq ?></textarea>
                            <script>CKEDITOR.replace('text-ckeditor');</script><br>
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