<script type="text/javascript">
$(document).ready(function(){  
      $('#input_user').keyup(function(){
           var txt = $(this).val();  
           if(txt != ''){  
                $.ajax({  
                     url:"live_search_table/user/display_name/id_user/id_user",  
                     method:"post",  
                     data:{search:txt},  
                     dataType:"text",  
                     success:function(data)  
                     {  
                          $('#livesearch_user').html(data);  
                     }  
                }); 
           }  
           else{  
                $('#livesearch_user').load(document.URL +  ' #livesearch_user');
           }  
      });  
 }); 
</script>
<!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1" style=""></div>
                    <div class="col-lg-10" style="">
                        <h1 align="center">Form Edit Jurnal Bayi</h1><br>
                        <?php 
                          if($this->session->flashdata('edit_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses mengedit data</div>';
                          }else if($this->session->flashdata('edit_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal mengedit data</div>';
                          } ?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/edit_jurnal_bayi/".$data->id_jurnal_bayi ?>" enctype="multipart/form-data">
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama User</label>
                                <input name="" type="text" class="form-control" id="input_user" required disabled value="<?php echo $data->display_name ?>">
                                <div id="livesearch_user"></div>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Panjang Tubuh (cm)</label>
                                <input name="panjang" type="number" class="form-control" id="formGroupExampleInput2" min="0" required value="<?php echo $data->panjang_tubuh?>">
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Berat Tubuh (kg)</label>
                                <input name="berat" type="number" class="form-control" id="formGroupExampleInput2" min="0" required value="<?php echo $data->berat_tubuh ?>">
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Denyut Jantung (bpm)</label>
                                <input name="denyut_jantung" type="number" class="form-control" id="formGroupExampleInput2" min="0" required value="<?php echo $data->denyut_jantung ?>">
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Cairan Ketuban</label>
                                <input name="cairan_ketuban" type="text" class="form-control" id="formGroupExampleInput2" required value="<?php echo $data->cairan_ketuban?>">
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Tembuni</label>
                                <input name="tembuni" type="text" class="form-control" id="formGroupExampleInput2" required value="<?php echo $data->tembuni ?>">
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Kelainan kongenital</label>
                                <input name="kelainan_kongenital" type="text" class="form-control" id="formGroupExampleInput2" required value="<?php echo $data->kelainan_kongenital ?>">
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