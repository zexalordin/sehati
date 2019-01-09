<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		date_default_timezone_set('Asia/Jakarta');
		$tanggal_kontraksi = date("Y-m-d");
		$durasi_kontraksi = (int)$_POST['durasi_kontraksi'];
		$time_apart = (int)$_POST['time_apart'];
		$time_kontraksi = $_POST['time_kontraksi'];
		$username= $_POST['username'];

		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		$kehamilan = $row_user['kehamilan'];
		//dbConnect.php script

		$sql = "INSERT INTO kontraksi (durasi_kontraksi, time_apart, time_kontraksi, tanggal_kontraksi, id_user, kehamilan) VALUES ('$durasi_kontraksi','$time_apart','$time_kontraksi','$tanggal_kontraksi','$id_user','$kehamilan')";

		if ($result=mysqli_query($con,$sql)){
		  	$respon["status"] = "success";
		}else{
			$respon["status"] = "Gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>
