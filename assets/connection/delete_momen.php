<?php
	if($_SERVER['REQUEST_METHOD']=='POST'){
		$respon = array();
        $id = (int)$_POST['id_momen'];
        $username = $_POST['username'];
		
		require_once('dbConnect.php');
		
		$delete = ($_SERVER['DOCUMENT_ROOT'])."/sehati/uploads/user/".$username."/$id.png";
		
		
		$sql = "DELETE FROM momen WHERE id_momen=$id";
		if(mysqli_query($con,$sql)){
			unlink($delete);
			$respon["status"] = "sukses";
		}else{
			$respon["status"] = "gagal";
		}
		
		mysqli_close($con);
		echo json_encode($respon);
	}else{
		echo "Error";
	}
?>