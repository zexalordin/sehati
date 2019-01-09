<!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1" style=""></div>
                    <div class="col-lg-10" style="">
                        <h1 align="center">Form Input Post Belanja</h1><br>
                        <?php 
                          if($this->session->flashdata('input_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses menambah data</div>';
                          }else if($this->session->flashdata('input_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal menambah data</div>';
                          } ?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/tambah_barang_belanja"?>" enctype="multipart/form-data">
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama Barang</label>
                                <input name="nama_barang" type="text" class="form-control" id="formGroupExampleInput2" required>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Merk Barang</label>
                                <input name="merk_barang" type="text" class="form-control" id="formGroupExampleInput2">
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Harga Barang</label>
                                <input name="harga_barang" type="text" class="form-control" id="formGroupExampleInput2">
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Kategori Barang</label>
                                <select class="form-control" id="sel1" name="kategori_barang">
                                    <?php foreach ($data as $d){?>
                                        <option><?php echo $d['nama_kategori_barang_statis'] ?></option>
                                    <?php } ?>
                                </select>
                          </div>
                            <!-- image-preview-filename input [CUT FROM HERE]-->
                            <div class="form-group">
                                <label for="formGroupExampleInput2">Image 1</label>
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
                            </div><!-- photo 1-->
                            <div class="form-group">
                                <label for="formGroupExampleInput2">Image 2</label>
                                <div class="input-group image-preview2">
                                    <input type="text" class="form-control image-preview2-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                                    <span class="input-group-btn">
                                        <!-- image-preview-clear button -->
                                        <button type="button" class="btn btn-default image-preview2-clear" style="display:none;">
                                            <span class="glyphicon glyphicon-remove"></span> Clear
                                        </button>
                                        <!-- image-preview-input -->
                                        <div class="btn btn-default image-preview2-input">
                                            <span class="glyphicon glyphicon-folder-open"></span>
                                            <span class="image-preview2-input-title">Browse</span>
                                            <input type="file" name="userfile2" accept="image/gif, image/jpeg, image/png"/> <!-- rename it -->
                                        </div>
                                    </span>
                                </div>
                            </div><!-- photo 2-->
                            <div class="form-group">
                                <label for="formGroupExampleInput2">Image 3</label>
                                <div class="input-group image-preview3">
                                    <input type="text" class="form-control image-preview3-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                                    <span class="input-group-btn">
                                        <!-- image-preview-clear button -->
                                        <button type="button" class="btn btn-default image-preview3-clear" style="display:none;">
                                            <span class="glyphicon glyphicon-remove"></span> Clear
                                        </button>
                                        <!-- image-preview-input -->
                                        <div class="btn btn-default image-preview3-input">
                                            <span class="glyphicon glyphicon-folder-open"></span>
                                            <span class="image-preview3-input-title">Browse</span>
                                            <input type="file" name="userfile3" accept="image/gif, image/jpeg, image/png"/> <!-- rename it -->
                                        </div>
                                    </span>
                                </div>
                            </div><!-- photo 3-->
                            <label for="formGroupExampleInput2">Detail Barang</label>
                            <textarea name="detail_barang" id="text-ckeditor"></textarea>
                            <script>CKEDITOR.replace('text-ckeditor');</script><br>

                            <div class="form-group">
                              <label for="comment">Fitur Barang</label>
                              <textarea class="form-control" rows="5" id="comment" name="fitur_barang"></textarea>
                            </div>

                            <div class="form-group">
                              <label for="comment">Spesifikasi Barang</label>
                              <textarea class="form-control" rows="5" id="comment" name="spesifikasi_barang"></textarea>
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