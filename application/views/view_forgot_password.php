<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Forgot Password | Sehati</title>
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
                          <h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">Forgot Password?</h2>
                          <p>You can reset your password here.</p>
                            <div class="panel-body">
                              
                              <form class="form" action="<?php echo base_url()."index.php/crud/newPassword/".$data->id_user."/".$data->password ?>" method="post">
                                <fieldset>
                                  <div class="form-group">
                                    <div class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-link color-blue"></i></span>
                                      
                                      <input name="password" id="password" placeholder="new password" class="form-control" type="password" required>
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <input class="btn btn-lg btn-primary btn-block" value="Send My Password" type="submit" style="background-color:#1fa67b">
                                  </div>
                                </fieldset>
                              </form>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
