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
                        <h1 align="center">Form Input Jurnal Kehamilan</h1><br>
                        <?php 
                          if($this->session->flashdata('input_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses menambah data</div>';
                          }else if($this->session->flashdata('input_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal menambah data</div>';
                          } ?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/tambah_jurnal_kehamilan"?>" enctype="multipart/form-data">
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama User</label>
                                <input name="" type="text" class="form-control" id="input_user" required>
                                <div id="livesearch_user"></div>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Berat Tubuh (kg)</label>
                                <input name="berat" type="number" class="form-control" id="formGroupExampleInput2" min="0" required>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Denyut Jantung (bpm)</label>
                                <input name="denyut_jantung" type="number" class="form-control" id="formGroupExampleInput2" min="0" required>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Suhu Tubuh (C)</label>
                                <input name="suhu" type="number" class="form-control" id="formGroupExampleInput2" min="0" required>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Lingkar Lengan (cm)</label>
                                <input name="lingkar_lengan" type="number" class="form-control" id="formGroupExampleInput2" min="0" required>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Pernapasan (/menit)</label>
                                <input name="pernapasan" type="number" min="0" class="form-control" id="formGroupExampleInput2" required>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Tekanan Darah (mmHg)</label>
                                <input name="tekanan_darah" type="text" class="form-control" id="formGroupExampleInput2" required>
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