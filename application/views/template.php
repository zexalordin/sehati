<?php
defined('BASEPATH') OR exit('No direct script access allowed');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <link rel="shortcut icon" type="image/png" href="http://sehati-project.net/assets/img/favicon.png"/>
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/"?>bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/"?>github.min.css">
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/"?>datepicker.css">
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/"?>bootstrap-clockpicker.min.css">
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/"?>simple-sidebar.css">
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/"?>imagepicker.css">
    <script src="<?php echo base_url()."assets/js/"?>jquery-min.js"></script>
    <!--<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>-->
    <script src="<?php echo base_url()."assets/js/"?>bootstrap-clockpicker.min.js"></script>
    <script src="<?php echo base_url()."assets/js/"?>bootstrap.min.js"></script>
    <script src="<?php echo base_url()."assets/js/"?>bootstrap-datepicker.min.js"></script>
    <script src="<?php echo base_url()."assets/js/"?>imagepicker.js"></script>
    <script src="<?php echo base_url()."assets/ckeditor/"?>ckeditor.js"></script>  

</head>
<body>
    <div id="wrapper">

        <?php echo $sidebar; ?>
        <?php echo $header; ?>
        <?php echo $content; ?>

    </div>
    <!-- /#wrapper -->
    <!-- Modal -->
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <h3 align="center">Apakah benar anda ingin menghapus ini ?</h3><br><br>
                <a id="delete" align="center"><button type="button" class="btn btn-success">YES</button></a>
                <button type="button" class="btn btn-warning" data-dismiss="modal" style="float:right;">NO</button>
            </div>
          </div>
          <!-- end Modal content-->
        </div>
      </div>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    $('.clockpicker').clockpicker();
    $(document).ready(function () {            
        $('#example1').datepicker({
            format: "yyyy-mm-dd"
        });          
    });
    </script>
</body>
</html>
