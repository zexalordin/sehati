<?php
if($_SERVER['REQUEST_METHOD']=='POST'){ 
	//Getting values nama, email, katasandi, no telp, hari petama haid, keguguran, hamil
	$respon = array();
	$username = $_POST['username'];

	//Creating an sql query 
	$sql = "SELECT COUNT(username) AS countUsername FROM user WHERE username='$username'"; 
	//Panggil Koneksi
	require_once('dbConnect.php');
	$result = mysqli_query($con,$sql);
	$count = mysqli_fetch_row($result);
	//Executing query ke database 
	if($count[0]==0){
		$respon["status"] = "success"; 
	}else{ 
		$respon["status"] = "Gagal"; 
	}
	//Closing the database 
	mysqli_close($con); 
	echo json_encode($respon);
} 
?>