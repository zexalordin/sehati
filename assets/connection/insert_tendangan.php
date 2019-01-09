<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		date_default_timezone_set('Asia/Jakarta');
		$tanggal_tendangan = date("Y-m-d");
		$waktu_tendangan = $_POST['waktu_tendangan'];
		$durasi_tendangan = $_POST['durasi_tendangan'];
		$username = $_POST['username'];
		$count_tendangan = (int)$_POST['count_tendangan'];


		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		$kehamilan = $row_user['kehamilan'];
		//dbConnect.php script

		$sql = "INSERT INTO tendangan (tanggal_tendangan,waktu_tendangan,durasi_tendangan,count_tendangan,id_user,kehamilan) VALUES ('$tanggal_tendangan','$waktu_tendangan','$durasi_tendangan','$count_tendangan','$id_user','$kehamilan')";

		if ($result=mysqli_query($con,$sql)){
		  	$respon["status"] = "success";
		}else{
			$respon["status"] = "Gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>
