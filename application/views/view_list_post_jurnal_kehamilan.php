<script type='text/javascript'>//<![CDATA[
var id;
$(document).on("click", ".open-AddBookDialog", function () {
     id = $(this).data('id');
     var base = getBaseUrl();
     $("#delete").attr("href", base+"sehati/index.php/crud/delete_jurnal_kehamilan/"+id);
});
function getBaseUrl() {
    return window.location.origin?window.location.origin+'/':window.location.protocol+'/'+window.location.host+'/';
}
$(document).ready(function(){  
      $('#search_text').keyup(function(){
           var txt = $(this).val();  
           if(txt != ''){  
                $.ajax({  
                     url:"jurnal_kehamilan_table",  
                     method:"post",  
                     data:{search:txt},  
                     dataType:"text",  
                     success:function(data)  
                     {  
                          $('#result_search').html(data);  
                     }  
                }); 
           }  
           else{  
                $('#result_search').load(document.URL +  ' #result_search');
           }  
      });  
 });  
</script>
<!-- Page Content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card col-md-12" style="">
                        <h1 align="center">Data Jurnal Kehamilan</h1><br>
                        <?php 
                          if($this->session->flashdata('delete_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses menghapus data</div>';
                          }else if($this->session->flashdata('delete_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal menghapus data</div>';
                          } ?>
                        <!--
                        <br>
                        <a href="<?php echo base_url()."index.php/sehati/tambah_post_jurnal_kehamilan"?>">
                            <button type="button" class="btn btn-default btn-sm" style="padding: 8px 25px;">
                                <span class="glyphicon glyphicon-plus"></span> Tambah Data
                            </button>
                        </a>
                        -->
                        <br><br>
                    <?php if($number<10){?>
                        <div class="input-group" style="float: right;z-index: 0;">
                          <input name="search_text" id="search_text" type="text" class="form-control" placeholder="search by title" aria-describedby="basic-addon2">
                          <span class="input-group-addon" id="basic-addon2">search</span>
                        </div>
                    <?php } ?>
                        <br>
                        <div id="result_search">
                            <div class="content table-responsive table-full-width" style="margin-top: 50px;">
                                <table class="table table-hover">
                                    <thead>
                                      <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Nama</th>
                                        <th>Tinggi Tubuh</th>
                                        <th>Berat Tubuh</th>
                                        <th>Denyut Jantung</th>
                                        <th>Tekanan Darah</th>
                                        <th>Suhu Tubuh</th>
                                        <th>Pernapasan</th>
                                        <th>Lingkar Lengan</th>
                                        <th>Action</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                    <?php $i=$number;
                                    foreach ($data as $d) {?>
                                      <tr>
                                        <td><?php echo $i?></td>
                                        <?php 
                                          $timestamp = strtotime($d->waktu_input);
                                          $date = date('j F, Y', $timestamp);
                                        ?>
                                        <td><?php echo $date ?></td>
                                        <td><?php echo $d->display_name ?></td>
                                        <td><?php echo $d->tinggi_tubuh ?></td>
                                        <td><?php echo $d->berat_tubuh ?></td>
                                        <td><?php echo $d->denyut_jantung ?></td>
                                        <td><?php echo $d->tekanan_darah ?></td>
                                        <td><?php echo $d->suhu_tubuh ?></td>
                                        <td><?php echo $d->pernapasan ?></td>
                                        <td><?php echo $d->lingkar_lengan ?></td>
                                        <td>
                                        <!--
                                            <a href="<?php //echo base_url()."edit_jurnal_kehamilan/".$d->id_jurnal_kehamilan?>">
                                                <span class="glyphicon glyphicon-edit" style="font-size: 20px;"></span>
                                            </a>
                                        -->
                                            <a data-toggle="modal" data-id="<?php echo $d->id_jurnal_kehamilan?>" class="open-AddBookDialog" href="#" data-target="#myModal">
                                            <span class="glyphicon glyphicon-remove-circle" style="font-size: 20px;"></span>
                                            </a>
                                        </td>
                                      </tr>
                                    <?php $i++; } ?>
                                    </tbody>
                                </table><br>
                            </div>
                            <div align="center">
                                <?php echo $links; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- /#page-content-wrapper -->
