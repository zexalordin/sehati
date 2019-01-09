<script type='text/javascript'>//<![CDATA[
var id;
$(document).on("click", ".open-AddBookDialog", function () {
     id = $(this).data('id');
     var base = getBaseUrl();
     $("#delete").attr("href", base+"index.php/crud/delete_admin/"+id);
});
function getBaseUrl() {
    return window.location.origin?window.location.origin+'/':window.location.protocol+'/'+window.location.host+'/';
}
</script>
<!-- Page Content -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="card col-md-12" style="">
                        <h1 align="center">Data Admin</h1><br>
                        <?php 
                          if($this->session->flashdata('delete_msg')=="success"){
                            echo '<div class="alert alert-success" role="alert">Sukses menghapus data</div>';
                          }else if($this->session->flashdata('delete_msg')=="failed"){
                            echo '<div class="alert alert-danger" role="alert">Gagal menghapus data</div>';
                          } ?>
                        <br>
                        <a href="<?php echo base_url()."index.php/sehati/tambah_admin"?>">
                            <button type="button" class="btn btn-default btn-sm" style="padding: 8px 25px;">
                                <span class="glyphicon glyphicon-plus"></span> Tambah Data
                            </button>
                        </a>
                        <br>
                        <div class="content table-responsive table-full-width" style="margin-top: 50px;">
                            <table class="table table-hover">
                                <thead>
                                  <tr>
                                    <th>No</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Action</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <?php $i=1;
                                foreach ($data as $d) {?>
                                  <tr>
                                    <td><?php echo $i?></td>
                                    <td><?php echo $d['username']?></td>
                                    <td><?php echo $d['email']?></td>
                                    <td>
                                        <a href="<?php echo base_url()."index.php/sehati/edit_admin/".$d['id_admin']?>">
                                            <span class="glyphicon glyphicon-edit" style="font-size: 20px;"></span>
                                        </a>
                                        <a data-toggle="modal" data-id="<?php echo $d['id_admin'] ?>" class="open-AddBookDialog" href="#" data-target="#myModal">
                                        <span class="glyphicon glyphicon-remove-circle" style="font-size: 20px;"></span>
                                        </a>
                                    </td>
                                  </tr>
                                <?php $i++; } ?>
                                </tbody>
                            </table><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- /#page-content-wrapper -->
