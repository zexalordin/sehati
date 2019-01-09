<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];
		$id_jadwal = (int)$_POST['id_jadwal'];
		$nama_rs = $_POST['nama_rs'];
		$nama_dokter = $_POST['nama_dokter'];
		$waktu_pertemuan = $_POST['waktu_pertemuan'];
		date_default_timezone_set('Asia/Jakarta');
		$timestamp = date("Y-m-d H:i:s");
		$waktu_pengingat = (int)$_POST['waktu_pengingat'];

		//$username = "coba_baru";
		//$jadwal = "BUAT JANJI DENGAN OB/GYN!";
		//$nama_rs = "RS Sakinah";
		//$nama_dokter = "Dokter Melani";
		//$waktu_pertemuan = "2016-09-30 09:30:00";
		//date_default_timezone_set('Asia/Jakarta');
		//$timestamp = date("Y-m-d H:i:s");
		//$waktu_pengingat = "1";

		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];

		//dbConnect.php script
			$sql = "UPDATE jadwal_user SET nama_dokter='$nama_dokter',nama_rs='$nama_rs' ,waktu_buat_janji='$timestamp' ,waktu_pertemuan='$waktu_pertemuan' ,waktu_pengingat='$waktu_pengingat' WHERE id_jadwal_user='$id_jadwal'";

		if ($result=mysqli_query($con,$sql)){
		  	$respon["status"] = "success";
		}else{
			$respon["status"] = "Gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>