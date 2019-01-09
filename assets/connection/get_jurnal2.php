<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];
		
		require_once('dbConnect.php');
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		$kehamilan = $row_user['kehamilan'];
		//dbConnect.php script 
		
		$sql_bayi = "SELECT * FROM jurnal_bayi WHERE id_user='$id_user' AND kehamilan='$kehamilan' ORDER BY waktu_input ASC";
		$sql_kehamilan = "SELECT * FROM jurnal_kehamilan WHERE id_user='$id_user' AND kehamilan='$kehamilan' ORDER BY waktu_input ASC";

		if ($result=mysqli_query($con,$sql_bayi)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon["panjang_tubuh_bayi"][$i] = $row['panjang_tubuh'];
		    	$respon["berat_tubuh_bayi"][$i] = $row['berat_tubuh'];
		    	$respon["denyut_jantung_bayi"][$i] = $row['denyut_jantung'];
		    	$respon["plasenta_bentuk_bayi"][$i] = $row['plasenta_bentuk'];
		    	$respon["plasenta_proporsi_bayi"][$i] = $row['plasenta_proporsi'];
		    	$respon["plasenta_ketebalan_bayi"][$i] = $row['plasenta_ketebalan'];
		    	$respon["plasenta_letak_bayi"][$i] = $row['plasenta_letak'];
		    	$respon["cairan_ketuban_bayi"][$i] = $row['cairan_ketuban'];
		    	$respon["kelainan_kongenital_bayi"][$i] = $row['kelainan_kongenital'];
		    	$timestamp = strtotime($row['waktu_input']);
		    	$date = date('d/m/y', $timestamp);
		    	$respon["tanggal_bayi"][$i] = $date;
		    	$i++;
		    }
		  mysqli_free_result($result);
		}
		else{
			$i=0;
				$respon["panjang_tubuh_bayi"][$i] = "belum ada";
		    	$respon["berat_tubuh_bayi"][$i] = "belum ada";
		    	$respon["denyut_jantung_bayi"][$i] = "belum ada";
		    	$respon["plasenta_bentuk_bayi"][$i] = "belum ada";
		    	$respon["plasenta_proporsi_bayi"][$i] = "belum ada";
		    	$respon["plasenta_ketebalan_bayi"][$i] = "belum ada";
		    	$respon["plasenta_letak_bayi"][$i] = "belum ada";
		    	$respon["cairan_ketuban_bayi"][$i] = "belum ada";
		    	$respon["kelainan_kongenital_bayi"][$i] = "belum ada";
		    	$respon["tanggal_bayi"][$i] = "belum ada";
		}

		if ($result=mysqli_query($con,$sql_kehamilan)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon["tinggi_tubuh_kehamilan"][$i] = $row['tinggi_tubuh'];
		    	$respon["berat_tubuh_kehamilan"][$i] = $row['berat_tubuh'];
		    	$respon["denyut_jantung_kehamilan"][$i] = $row['denyut_jantung'];
		    	$respon["tekanan_darah_kehamilan"][$i] = $row['tekanan_darah'];
		    	$respon["suhu_tubuh_kehamilan"][$i] = $row['suhu_tubuh'];
		    	$respon["pernapasan_kehamilan"][$i] = $row['pernapasan'];
		    	$respon["lingkar_lengan_kehamilan"][$i] = $row['lingkar_lengan'];
		    	$timestamp = strtotime($row['waktu_input']);
		    	$date = date('d/m/y', $timestamp);
		    	$respon["tanggal_kehamilan"][$i] = $date;
		    	$i++;
		    }
		  mysqli_free_result($result);
		}
		else{
			$i=0;
				$respon["tinggi_tubuh_kehamilan"][$i] = "belum ada";
				$respon["berat_tubuh_kehamilan"][$i] = "belum ada";
		    	$respon["denyut_jantung_kehamilan"][$i] = "belum ada";
		    	$respon["tekanan_darah_kehamilan"][$i] = "belum ada";
		    	$respon["suhu_tubuh_kehamilan"][$i] = "belum ada";
		    	$respon["pernapasan_kehamilan"][$i] = "belum ada";
		    	$respon["lingkar_lengan_kehamilan"][$i] = "belum ada";
		    	$respon["tanggal_kehamilan"][$i] = "belum ada";
		}
		mysqli_close($con);

		echo json_encode($respon);
	}
?>
