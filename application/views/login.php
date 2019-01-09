<?php
defined('BASEPATH') OR exit('No direct script access allowed');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" type="image/png" href="http://sehati-project.net/assets/img/favicon.png"/>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CMS | Sehati</title>
	<link rel="stylesheet" href="<?php echo base_url()."assets/css/"?>bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url()."assets/css/"?>style.css">
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="<?php echo base_url()."assets/js/"?>bootstrap.min.js"></script>
    <script type="text/javascript">
        function showPassword() {
            var key_attr = $('#key').attr('type');
            if(key_attr != 'text') {
                $('.checkbox').addClass('show');
                $('#key').attr('type', 'text');
            } else {
                $('.checkbox').removeClass('show');
                $('#key').attr('type', 'password');
            }
        }
    </script>
</head>
<body style="background-color: #ecf0f1;">
<div class="container">
        <?php 
            if($this->session->flashdata('login_msg')=="failed"){
                echo '<div class="alert alert-success" role="alert" style="color: #ffffff;background-color: #e74c3c;"><h4 align="center">username atau password salah</h4></div>';
            }
        ?>
	<section id="login">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-wrap">
                    <h1>CMS | SEHATI</h1>
                        <form role="form" action="<?php echo base_url('index.php/sehati/validasi'); ?>" method="post" id="login-form" autocomplete="off">
                            <div class="form-group">
                                <label for="username" class="sr-only">Username</label>
                                <input type="text" name="username" id="email" class="form-control" placeholder="root" required>
                            </div>
                            <div class="form-group">
                                <label for="key" class="sr-only">Password</label>
                                <input type="password" name="password" id="key" class="form-control" placeholder="Password" required>
                            </div>
                            <div class="checkbox">
                                <span class="character-checkbox" onclick="showPassword()"></span>
                                <span class="label">Show password</span>
                            </div>
                            <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Log in">
                        </form>
                        <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">Forgot your password?</a>
                        <hr>
                    </div>
                </div> <!-- /.col-xs-12 -->
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </section>

    <div class="modal fade forget-modal" tabindex="-1" role="dialog" aria-labelledby="myForgetModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Recovery password</h4>
                </div>
                <div class="modal-body">
                    <p>Type your email account</p>
                    <input type="email" name="recovery-email" id="recovery-email" class="form-control" autocomplete="off">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-custom">Recovery</button>
                </div>
            </div> <!-- /.modal-content -->
        </div> <!-- /.modal-dialog -->
    </div> <!-- /.modal -->
</div>
	<script src="<?php echo base_url()."assets/js/"?>login-alert.js"></script>
</body>
</html>
