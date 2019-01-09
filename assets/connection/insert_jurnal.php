<?php 

	if($_SERVER['REQUEST_METHOD']=='POST'){



		$respon = array();

		$sql;

		$status = $_POST['status'];

		$username = $_POST['username'];

		//bayi

		$panjang_tubuh_bayi =(int)$_POST['panjang_tubuh_bayi'];

		$berat_tubuh_bayi =(int)$_POST['berat_tubuh_bayi'];

		$denyut_jantung_bayi =(int)$_POST['denyut_jantung_bayi'];

		$plasenta_bentuk_bayi = $_POST['plasenta_bentuk_bayi'];

		$plasenta_proporsi_bayi = $_POST['plasenta_proporsi_bayi'];

		$plasenta_ketebalan_bayi = $_POST['plasenta_ketebalan_bayi'];

		$plasenta_letak_bayi = $_POST['plasenta_letak_bayi'];

		$cairan_ketuban_bayi = $_POST['cairan_ketuban_bayi'];

		$kelainan_kongenital_bayi = $_POST['kelainan_kongenital_bayi'];

		date_default_timezone_set('Asia/Jakarta');

		$timestamp = date("Y-m-d H:i:s");

		//kehamilan

		$tinggi_tubuh_kehamilan = (int)$_POST['tinggi_tubuh_kehamilan'];

		$berat_tubuh_kehamilan = (int)$_POST['berat_tubuh_kehamilan'];

		$denyut_jantung_kehamilan = (int)$_POST['denyut_jantung_kehamilan'];

		$tekanan_darah_kehamilan = (int)$_POST['tekanan_darah_kehamilan'];

		$suhu_tubuh_kehamilan = (int)$_POST['suhu_tubuh_kehamilan'];

		$pernapasan_kehamilan = (int)$_POST['pernapasan_kehamilan'];

		$lingkar_lengan_kehamilan = (int)$_POST['lingkar_lengan_kehamilan'];





		require_once('dbConnect.php');

		//get id_user

  		$sql_user = "SELECT * FROM user WHERE username='$username'";

		$result_user = mysqli_query($con,$sql_user);

		$row_user = mysqli_fetch_assoc($result_user);

		$id_user = $row_user['id_user'];
		$kehamilan = $row_user['kehamilan'];

		//dbConnect.php script

		if($status=="bayiku"){

			$sql = "INSERT INTO jurnal_bayi (panjang_tubuh,berat_tubuh,denyut_jantung,plasenta_bentuk,plasenta_proporsi,plasenta_ketebalan,plasenta_letak,cairan_ketuban,kelainan_kongenital,waktu_input,id_user,kehamilan) VALUES ('$panjang_tubuh_bayi','$berat_tubuh_bayi','$denyut_jantung_bayi','$plasenta_bentuk_bayi','$plasenta_proporsi_bayi','$plasenta_ketebalan_bayi','$plasenta_letak_bayi','$cairan_ketuban_bayi','$kelainan_kongenital_bayi','$timestamp','$id_user','$kehamilan')";

		}else if($status=="kehamilanku"){

			$sql = "INSERT INTO jurnal_kehamilan (tinggi_tubuh,berat_tubuh,denyut_jantung,tekanan_darah,suhu_tubuh,pernapasan,lingkar_lengan,waktu_input,id_user,kehamilan) VALUES ('$tinggi_tubuh_kehamilan','$berat_tubuh_kehamilan','$denyut_jantung_kehamilan','$tekanan_darah_kehamilan','$suhu_tubuh_kehamilan','$pernapasan_kehamilan','$lingkar_lengan_kehamilan','$timestamp','$id_user','$kehamilan')";

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
