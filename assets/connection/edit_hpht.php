<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];
		$haid_terakhir = $_POST['haid_terakhir'];

		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];

		//dbConnect.php script
		$sql = "UPDATE user SET haid_terakhir='$haid_terakhir' WHERE id_user='$id_user'";

		$datetime1=strtotime($haid_terakhir);
		$datetime2=strtotime(date("Y-m-d"));
		$difference = $datetime2 - $datetime1;
		$selisih_hari = (round($difference / 86400))+1;
		$selisih_minggu = floor($selisih_hari/7);

		if($selisih_minggu>40 ||$selisih_minggu<1){
			$selisih_minggu = 1;
		}

		if ($result=mysqli_query($con,$sql)){
		  	$respon["status"] = "success";
		  	$respon["minggu"] = $selisih_minggu;
		}else{
			$respon["status"] = "Gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>
