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
 $(document).ready(function(){  
      $('#input_jadwal').keyup(function(){
           var txt = $(this).val();  
           if(txt != ''){  
                $.ajax({  
                     url:"live_search_table/jadwal_static/judul_jadwal/id_jadwal_static/id_jadwal",  
                     method:"post",  
                     data:{search:txt},  
                     dataType:"text",  
                     success:function(data)  
                     {  
                          $('#livesearch_jadwal').html(data);  
                     }  
                }); 
           }  
           else{  
                $('#livesearch_jadwal').load(document.URL +  ' #livesearch_jadwal');
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
                        <h1 align="center">Form Input Post Jadwal User</h1><br>
                        <?php 
                          if($this->session->flashdata('input_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses menambah data</div>';
                          }else if($this->session->flashdata('input_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal menambah data</div>';
                          } ?>
                        <!--FORM-->
                        <form method="POST" action="<?php echo base_url()."index.php/crud/tambah_jadwal_user"?>">
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama User</label>
                                <input name="" type="text" class="form-control" id="input_user" required>
                                <div id="livesearch_user"></div>
                          </div>
                          
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Judul Jadwal</label>
                                <input name="" type="text" class="form-control" id="input_jadwal" required>
                                <div id="livesearch_jadwal"></div>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama Rumah Sakit</label>
                                <input name="nama_rs" type="text" class="form-control" id="formGroupExampleInput2" required>
                          </div>
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Nama Dokter</label>
                                <input name="nama_dokter" type="text" class="form-control" id="formGroupExampleInput2" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Tanggal Pertemuan</label>
                            <input name="tanggal_pertemuan" type="text" class="form-control" placeholder="klik untuk membuka kalender"  id="example1">
                          </div>
                          <label for="formGroupExampleInput2">Waktu Pertemuan</label>
                          <div class="input-group clockpicker">
                            <input name="jam_pertemuan" type="text" class="form-control" value="09:30">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                            </span>
                          </div><br>   
                          <div class="form-group">
                                <label for="formGroupExampleInput2">Pengingat (jam)</label>
                                <input name="pengingat" type="number" class="form-control" id="formGroupExampleInput2" min="0" required>
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