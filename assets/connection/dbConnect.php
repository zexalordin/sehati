<?php 

/* author: Ridwan website: http://blogciqwan.com/ */

//Defining Constants 

define('HOST','localhost'); 

define('USER','root'); 

define('PASS',''); 

define('DB','sehatipr_sehati'); 

//Connecting to Database 

$con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect'); 

?>
