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
		$respon["panjang_tubuh_bayi"][$i] = "belum ada";
		    	$respon["berat_tubuh_bayi"][$i] = "belum ada";
		    	$respon["denyut_jantung_bayi"][$i] = "belum ada";
		    	$respon["cairan_ketuban_bayi"][$i] = "belum ada";
		    	$respon["tembuni_bayi"][$i] = "belum ada";
		    	$respon["kelainan_kongenital_bayi"][$i] = "belum ada";
		
		$respon["berat_tubuh_kehamilan"][$i] = "belum ada";
		    	$respon["denyut_jantung_kehamilan"][$i] = "belum ada";
		    	$respon["tekanan_darah_kehamilan"][$i] = "belum ada";
		    	$respon["suhu_tubuh_kehamilan"][$i] = "belum ada";
		    	$respon["pernapasan_kehamilan"][$i] = "belum ada";
		    	$respon["lingkar_lengan_kehamilan"][$i] = "belum ada";
		
		mysqli_close($con);

		echo json_encode($respon);
	}
?>
