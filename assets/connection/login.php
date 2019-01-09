<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array("status" => "", "pesan" => "", "minggu" => "",);
		//Nilai parameter 
		$username = $_POST['username']; 
		$password = md5($_POST['password']); 
		//Buatkan sql query 
		$sql = "SELECT * FROM user WHERE username='$username' AND password='$password'"; 
		//dbConnect.php script 
		require_once('dbConnect.php'); 
		//executing query 
		$result = mysqli_query($con,$sql); 
		//Tampilkan result 
		$check = mysqli_fetch_array($result); 
		//Jika sesuai tampilkan data result 
		//selisih minggu
		$result = mysqli_query($con,$sql);
		$row = mysqli_fetch_row($result);
		$reset = false;
		if ($row[4] == "2001-01-01") {
			$reset = true;
		}
		$datetime1=strtotime($row[4]);
		$datetime2=strtotime(date("Y-m-d"));
		$difference = $datetime2 - $datetime1;
		$selisih_hari = (round($difference / 86400))+1;
		$selisih_minggu = floor($selisih_hari/7);

		if($selisih_minggu>40 ||$selisih_minggu<1){
			$selisih_minggu = 1;
		}

		//end-selisih minggu
		if(isset($check)){ 
			//Tampilkan dan kirimkan ke aplikasi android pesan Sukses jika berhasil 
			$respon["status"] = "success"; 
			$respon["pesan"] = "berhasil login ke server";
			$respon["minggu"] = $selisih_minggu;
			$respon["status_reset"] = $reset;
		}else{ 
			//Tampilkan dan kirimkan ke aplikasi android pesan Gagal jika Gagal 
			$respon["status"] = "Gagal"; 
			$respon["pesan"] = "gagal login ke server";
		}
		mysqli_close($con);

		echo json_encode($respon);
	}
?>
