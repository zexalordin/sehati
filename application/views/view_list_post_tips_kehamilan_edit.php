<!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1" style=""></div>
                    <div class="col-lg-10" style="">
                        <h1 align="center">Form Edit Post Tips Kehamilan</h1><br>
                        <?php 
                          if($this->session->flashdata('edit_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses mengedit data</div>';
                          }else if($this->session->flashdata('edit_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal mengedit data</div>';
                          } ?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/edit_tips_kehamilan/".$data->id_tips ?>" enctype="multipart/form-data">
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Judul</label>
                                <input name="judul" type="text" class="form-control" id="formGroupExampleInput2" value="<?php echo $data->judul_tips ?>" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput">Post Minggu ke-</label>
                            <select name="minggu_post" class="form-control" id="sel1" required>
                                <?php 
                                  for ($x = 1; $x <= 40; $x++) {
                                    if($x == $data->post_tips)
                                      echo "<option value=".$x." selected>".$x."</option>";
                                    else
                                      echo "<option value=".$x.">".$x."</option>";
                                  } 
                                ?>
                            </select>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Kategori</label>
                                <select class="form-control" id="sel1" name="kategori">
                                    <?php foreach ($data_kategori as $d){
                                        if($d['id_kategori_tips'] == $data->id_kategori_tips){?>
                                        <option value="<?php echo $d['id_kategori_tips'] ?>" selected><?php echo $d['nama_kategori_tips'] ?></option>
                                        <?php }else{ ?>
                                        <option value="<?php echo $d['id_kategori_tips'] ?>"><?php echo $d['nama_kategori_tips'] ?></option>
                                    <?php }
                                    } ?>
                                </select>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Sumber</label>
                                <input name="sumber" type="text" class="form-control" id="formGroupExampleInput2" value="<?php echo $data->sumber_tips ?>">
                          </div>
                            <!-- image-preview-filename input [CUT FROM HERE]-->
                            <div class="form-group">
                                <label for="formGroupExampleInput2">Image</label>
                                <div class="input-group image-preview">
                                    <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                                    <span class="input-group-btn">
                                        <!-- image-preview-clear button -->
                                        <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                                            <span class="glyphicon glyphicon-remove"></span> Clear
                                        </button>
                                        <!-- image-preview-input -->
                                        <div class="btn btn-default image-preview-input">
                                            <span class="glyphicon glyphicon-folder-open"></span>
                                            <span class="image-preview-input-title">Browse</span>
                                            <input type="file" name="userfile" accept="image/gif, image/jpeg, image/png"/> <!-- rename it -->
                                        </div>
                                    </span>
                                </div>
                            </div><!-- /input-group image-preview [TO HERE]--> 
                            <textarea name="text-ckeditor" id="text-ckeditor"><?php echo $data->detail_tips ?></textarea>
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
