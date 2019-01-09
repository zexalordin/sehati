<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];

		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		$kehamilan = $row_user['kehamilan'];
		$kehamilan_reset = $kehamilan + 1;

		//dbConnect.php script
			$sql = "UPDATE user SET haid_terakhir='2001-01-01', kehamilan='$kehamilan_reset', pengalaman_hamil='0',pengalaman_keguguran='0' WHERE id_user='$id_user'";

		//if ($result=mysqli_query($con,$sql)&&$result=mysqli_query($con,$sql2)){
		if ($result=mysqli_query($con,$sql)){
			//jadwal baru
			$sql_jadwal = "SELECT * FROM jadwal_static";
			if ($result=mysqli_query($con,$sql_jadwal)){
			  $timestamp=date("Y-m-d H:i:s");
			  while ($row=mysqli_fetch_row($result))
			    {
			    	$sql_jadwal = "INSERT INTO jadwal_user (nama_rs,nama_dokter,waktu_buat_janji,status_jadwal,id_user,id_jadwal_static,waktu_pertemuan,waktu_pengingat,kehamilan) VALUES ('','','2001-01-01 00:00:00','belum',$id_user,'$row[0]','2001-01-01 00:00:00','1','$kehamilan_reset')";
			    	mysqli_query($con,$sql_jadwal);
			    }
			  mysqli_free_result($result);
			}
		  	$respon["status"] = "success";
		}else{
			$respon["status"] = "Gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>
