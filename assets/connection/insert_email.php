<?php 

	if($_SERVER['REQUEST_METHOD']=='POST'){



		$respon;

		$sql;

		$email = $_POST['email'];

		$username = $_POST['username'];

		require_once('dbConnect.php');

		//get id_user

  		$sql_user = "SELECT * FROM user WHERE username='$username'";

		$result_user = mysqli_query($con,$sql_user);

		$row_user = mysqli_fetch_assoc($result_user);

		$id_user = $row_user['id_user'];

		//dbConnect.php script
			$sql = "INSERT INTO user (email) VALUES ('$email')";


		if ($result=mysqli_query($con,$sql)){

		  	$respon["status"] = "success";

		}else{

			$respon["status"] = "Gagal";

		}

		mysqli_close($con);



		echo json_encode($respon);

}

?>