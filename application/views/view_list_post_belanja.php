<script type='text/javascript'>//<![CDATA[
var id;
$(document).on("click", ".open-AddBookDialog", function () {
     id = $(this).data('id');
     var base = getBaseUrl();
     $("#delete").attr("href", base+"index.php/crud/delete_belanja/"+id);
});
function getBaseUrl() {
    return window.location.origin?window.location.origin+'/':window.location.protocol+'/'+window.location.host+'/';
}
$(document).ready(function(){  
      $('#search_text').keyup(function(){
           var txt = $(this).val();  
           if(txt != ''){  
                $.ajax({  
                     url:"belanja_table",  
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
                        <h1 align="center">Data Post Barang Belanja</h1><br>
                        <?php 
                          if($this->session->flashdata('delete_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses menghapus data</div>';
                          }else if($this->session->flashdata('delete_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal menghapus data</div>';
                          } ?>
                        <br>
                        <a href="<?php echo base_url()."index.php/sehati/tambah_post_belanja"?>">
                            <button type="button" class="btn btn-default btn-sm" style="padding: 8px 25px;">
                                <span class="glyphicon glyphicon-plus"></span> Tambah Data
                            </button>
                        </a>
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
                                        <th>Nama</th>
                                        <th>Merk</th>
                                        <th>Kategori</th>
                                        <th>Foto 1</th>
                                        <th>Foto 2</th>
                                        <th>Foto 3</th>
                                        <th>Harga</th>
                                        <th>Action</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                    <?php $i=$number;
                                    foreach ($data as $d) {?>
                                      <tr>
                                        <td><?php echo $i?></td>
                                        <td><?php echo $d->nama_barang_belanja ?></td>
                                        <td><?php echo $d->merk_barang_belanja ?></td>
                                        <td><?php echo $d->nama_kategori_barang_statis ?></td>
                                        <?php if($d->photo1_barang_belanja!=null){?>
                                        <td><img src="<?php echo $d->photo1_barang_belanja ?>" style="width: 100px;border-style: ridge;border-width: 1px;"></td>
                                        <?php }else {
                                              echo "<td>-</td>";
                                              }?>
                                        <?php if($d->photo2_barang_belanja!=null){?>      
                                        <td><img src="<?php echo $d->photo2_barang_belanja ?>" style="width: 100px;border-style: ridge;border-width: 1px;"></td>
                                        <?php }else {
                                              echo "<td>-</td>";
                                              }?>
                                        <?php if($d->photo3_barang_belanja!=null){?>   
                                        <td><img src="<?php echo $d->photo3_barang_belanja ?>" style="width: 100px;border-style: ridge;border-width: 1px;"></td>
                                        <?php }else {
                                              echo "<td>-</td>";
                                              }?>
                                        <td><?php echo $d->harga_barang_belanja?></td>
                                        <td>
                                            <a href="<?php echo base_url()."index.php/sehati/edit_belanja/".$d->id_barang_belanja ?>">
                                                <span class="glyphicon glyphicon-edit" style="font-size: 20px;"></span>
                                            </a>
                                            <a data-toggle="modal" data-id="<?php echo $d->id_barang_belanja ?>" class="open-AddBookDialog" href="#" data-target="#myModal">
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
