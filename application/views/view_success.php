<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>STATUS CHANGE PASSWORD</title>
    <link rel="stylesheet" href="<?php echo base_url()."index.php/sehati/assets/css/"?>bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url()."index.php/sehati/assets/css/"?>style.css">
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="<?php echo base_url()."assets/js/"?>bootstrap.min.js"></script>
</head>
<body style="background-color: #ecf0f1;">
<hr>
<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                        <?php 
                          if($this->session->flashdata('edit_msg')=="success"){
                            echo '<h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">SUCCESS!!!</h2>
                            <div class="panel-body">
                              <h5>SUCCESS CHANGE PASSWORD</h5>                         
                            </div>';
                          }else if($this->session->flashdata('edit_msg')=="failed" || $this->session->flashdata('available_msg')=="failed"){
                            echo '<h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">GAGAL!!!</h2>
                            <div class="panel-body">
                              <h5>FAILED TO CHANGE PASSWORD</h5>                         
                            </div>';
                          } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
