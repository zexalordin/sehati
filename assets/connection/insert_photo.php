<?php
	if($_SERVER['REQUEST_METHOD']=='POST'){
		$respon = array();
		$image = $_POST['image'];
                $username = $_POST['username'];
		
		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		
                

		$sql ="SELECT id_momen FROM momen ORDER BY id_momen ASC";
		
		$res = mysqli_query($con,$sql);
		
		$id = 0;
		
		while($row = mysqli_fetch_array($res)){
				$id = $row['id_momen'];
		}
		$id++;
		$path = ($_SERVER['DOCUMENT_ROOT'])."/uploads/user/".$username."/$id.png";
		$path_user = "$username/$id.png";
		
		$actualpath = "http://sehati-project.net/uploads/user/$path_user";
		
		$sql = "INSERT INTO momen (photo_momen,id_user) VALUES ('$actualpath','$id_user')";

		if(mysqli_query($con,$sql)){
			file_put_contents($path,base64_decode($image));
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