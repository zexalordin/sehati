<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];
		$id_jadwal = (int)$_POST['id_jadwal'];

		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		$kehamilan = $row_user['kehamilan'];
		//get status_jadwal
		$sql_jadwal = "SELECT * FROM jadwal_user WHERE id_jadwal_user='$id_jadwal'";
		$result_jadwal = mysqli_query($con,$sql_jadwal);
		$row_jadwal = mysqli_fetch_assoc($result_jadwal);
		$status_jadwal = $row_jadwal['status_jadwal'];
		//dbConnect.php script
		if($status_jadwal == "sudah"){
			$sql = "UPDATE jadwal_user SET status_jadwal='belum' WHERE id_jadwal_user='$id_jadwal' AND id_user='$id_user' AND kehamilan='$kehamilan'";
		}else{
			$sql = "UPDATE jadwal_user SET status_jadwal='sudah' WHERE id_jadwal_user='$id_jadwal' AND id_user='$id_user' AND kehamilan='$kehamilan'";
		}

		if ($result=mysqli_query($con,$sql)){
		  	$respon["status"] = "success";
		}else{
			$respon["status"] = "Gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>
