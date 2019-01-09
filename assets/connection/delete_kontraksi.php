<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();

		$id = (int)$_POST['id_kontraksi'];

		require_once('dbConnect.php');
		//dbConnect.php script

		$sql = "DELETE FROM kontraksi WHERE id_kontraksi='$id'";

		if ($result=mysqli_query($con,$sql)){
		  	$respon["status"] = "success";
		}else{
			$respon["status"] = "Gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>