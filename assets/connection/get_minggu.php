<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){
		$username = $_POST['username']; 
		//Buatkan sql query 
		$sql = "SELECT * FROM user WHERE username='$username'"; 
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

		$datetime1= new DateTime("$row[4]");
		$datetime2=	new DateTime(date("Y-m-d"));
		$difference = $datetime1->diff($datetime2);
		$selisih_hari = $difference->days;
		$selisih_minggu = floor($selisih_hari/7);

		if($selisih_minggu>40 ||$selisih_minggu<1){
			$selisih_minggu = 1;
		}
		//end-selisih minggu
		if(isset($check)){ 
			$respon["minggu"] = $selisih_minggu;
		}else{ 
			$respon["minggu"] = 0;
		} 
		mysqli_close($con);

		echo json_encode($respon);
	}
?>
