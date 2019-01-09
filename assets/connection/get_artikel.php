<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$minggu = (int)$_POST['minggu']; 
		$sql_bayiku = "SELECT * FROM artikel WHERE status_artikel='bayiku' AND post_artikel='$minggu'";
		$sql_kehamilanku = "SELECT * FROM artikel WHERE status_artikel='kehamilanku' AND post_artikel='$minggu'";

		//dbConnect.php script 
		require_once('dbConnect.php'); 
		$result_bayiku = mysqli_query($con,$sql_bayiku);
		$row_bayiku = mysqli_fetch_row($result_bayiku);

		$judul_bayiku = $row_bayiku[1];
		$isi_bayiku = $row_bayiku[2];
		$source_photo_bayiku = $row_bayiku[3];
		//
		$result_kehamilanku = mysqli_query($con,$sql_kehamilanku);
		$row_kehamilanku = mysqli_fetch_row($result_kehamilanku);

		$judul_kehamilanku = $row_kehamilanku[1];
		$isi_kehamilanku = $row_kehamilanku[2];
		$source_photo_kehamilanku = $row_kehamilanku[3];

		if(isset($row_kehamilanku)||isset($row_bayiku)){ 
			//Tampilkan dan kirimkan ke aplikasi android pesan Sukses jika berhasil 
			$respon["judul_bayiku"] = $judul_bayiku; 
			$respon["isi_bayiku"] = $isi_bayiku;
			$respon["source_photo_bayiku"] = $source_photo_bayiku;
			$respon["judul_kehamilanku"] = $judul_kehamilanku; 
			$respon["isi_kehamilanku"] = $isi_kehamilanku;
			$respon["source_photo_kehamilanku"] = $source_photo_kehamilanku;

		}else{ 
			$respon["judul_bayiku"] = "not found"; 
			$respon["isi_bayiku"] = "not found";
			$respon["source_photo_bayiku"] = "not found";
			$respon["judul_kehamilanku"] = "not found"; 
			$respon["isi_kehamilanku"] = "not found";
			$respon["source_photo_kehamilanku"] = "not found";
		}
		mysqli_close($con);

		echo json_encode($respon);
	}
?>