<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];
		
		require_once('dbConnect.php');
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		//dbConnect.php script 
		$sql = "SELECT * FROM user WHERE id_user='$id_user'";

		if ($result=mysqli_query($con,$sql)){
			$row=mysqli_fetch_assoc($result);
			$respon["status"] = "sukses";
			$respon["nama"] = $row['display_name'];
			//$respon["ttl"] = $row['tanggal_lahir'];
			// $respon["alamat"] = $row['alamat_user'];
			// $respon["propinsi"] = $row['propinsi_user'];
			// $respon["kabupaten"] = $row['kabupaten_user'];
			// $respon["kode_pos"] = $row['kode_pos_user'];
			$respon["email"] = $row['email'];
			$respon["haid_terakhir"] = $row['haid_terakhir'];
		  mysqli_free_result($result);
		}
		else{
			$repon["status"] = "gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
	}
?>
