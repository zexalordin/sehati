<script type="text/javascript">
  $().ready(function() {
    $('#cg-password').click(function() {
        $('#password').each(function() {
            if ($(this).attr('disabled')) {
                $(this).removeAttr('disabled');
            }
            else {
                $(this).attr({
                    'disabled': 'disabled'
                });
            }
        });
    });
  });
</script>
<!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3" style=""></div>
                    <div class="col-lg-6" style="">
                        <h1 align="center">Form Edit Data Kader</h1><br>
                        <?php 
                          if($this->session->flashdata('edit_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses mengedit data</div>';
                          }else if($this->session->flashdata('edit_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal mengedit data</div>';
                          } ?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/edit_kader/".$data->id_kader?>" enctype="multipart/form-data">
                          <!-- image-preview-filename input [CUT FROM HERE]-->
                            <div class="form-group">
                                <label for="formGroupExampleInput2">Foto Kader</label>
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
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Nama</label>
                            <input name="nama" class="form-control" id="formGroupExampleInput2" placeholder="e.g. Nanda Putri" value="<?php echo $data->nama_kader ?>" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Password</label>
                            <input type="password" name="password" class="form-control" id="password" placeholder="e.g. Password" required disabled>
                          </div>
                          <div class="form-group">
                            <label><input name="cg-password" id="cg-password" type="checkbox" value="">Cek jika ingin mengubah password</label>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">No HP</label>
                            <input type="number" name="kontak_kader" class="form-control" id="formGroupExampleInput2" placeholder="e.g. 087xxxxxxxxx" value="<?php echo $data->kontak_kader ?>" required>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama Bidan</label>
                                <select class="form-control" id="sel1" name="bidan_kader">
                                    <?php foreach ($data_bidan as $d){
                                        if($d['id_bidan'] == $data->id_bidan){?>
                                        <option value="<?php echo $d['id_bidan'] ?>" selected><?php echo $d['nama_bidan'] ?></option>
                                        <?php }else{ ?>
                                        <option value="<?php echo $d['id_bidan'] ?>"><?php echo $d['nama_bidan'] ?></option>
                                    <?php }
                                    } ?>
                                </select>
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
