<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$image = $_POST['image'];
		$username = $_POST['username'];
		$caption_momen = $_POST['caption'];
		$minggu = (int)$_POST['minggu'];

		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		$kehamilan = $row_user['kehamilan'];
		//dbConnect.php script
		if ($image!="null") {
			//getid
			$sql ="SELECT id_momen FROM momen ORDER BY id_momen ASC";
			
			$res = mysqli_query($con,$sql);
			
			$id = 0;
			
			while($row = mysqli_fetch_array($res)){
					$id = $row['id_momen'];
			}
			$id++;
			//end get id
			//path
			$path = ($_SERVER['DOCUMENT_ROOT'])."/uploads/user/".$username."/$id.png";
			$path_user = "$username/$id.png";
			
			$actualpath = "http://sehati-project.net/uploads/user/$path_user";
			//end path

			$sql = "INSERT INTO momen (photo_momen,caption_momen,id_user,status_momen,post_momen,kehamilan) VALUES ('$actualpath','$caption_momen','$id_user','foto','$minggu','$kehamilan')";

			if (mysqli_query($con,$sql)){
				file_put_contents($path,base64_decode($image));
			  	$respon["status"] = "success";
			}else{
				$respon["status"] = "gagal";
			}
		}
		else{
			$sql = "INSERT INTO momen (photo_momen,caption_momen,id_user,status_momen,post_momen,kehamilan) VALUES ('','$caption_momen','$id_user','caption','$minggu','$kehamilan')";

			if ($result=mysqli_query($con,$sql)){
			  	$respon["status"] = "success";
			}else{
				$respon["status"] = "gagal";
			}
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>
