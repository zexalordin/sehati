<?php

if($_SERVER['REQUEST_METHOD']=='POST'){ 

	//Getting values nama, email, katasandi, no telp, hari petama haid, keguguran, hamil

	$respon = array();

	$email = $_POST['email'];



	//Creating an sql query 

	$sql = "SELECT COUNT(username) AS countUsername FROM user WHERE email='$email' AND login_type='normal'"; 

	//Panggil Koneksi

	require_once('dbConnect.php');

	$result = mysqli_query($con,$sql);

	$count = mysqli_fetch_row($result);

	//Executing query ke database 

	if($count[0]==0){

		$respon["status"] = "gagal"; 

	}else{ 

		$respon["status"] = "success"; 

	}

	//Closing the database 

	mysqli_close($con); 

	echo json_encode($respon);

} 

?>
