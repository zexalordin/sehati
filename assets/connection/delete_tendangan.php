<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();

		$id = (int)$_POST['id_tendangan'];

		require_once('dbConnect.php');
		//dbConnect.php script

		$sql = "DELETE FROM tendangan WHERE id_tendangan='$id'";

		if ($result=mysqli_query($con,$sql)){
		  	$respon["status"] = "success";
		}else{
			$respon["status"] = "Gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>