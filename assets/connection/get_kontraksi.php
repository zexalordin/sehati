<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];
		
		require_once('dbConnect.php');
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		$kehamilan = $row_user['kehamilan'];
		//dbConnect.php script 
		
		$sql = "SELECT * FROM kontraksi WHERE id_user='$id_user' AND kehamilan='$kehamilan' ORDER BY id_kontraksi ASC";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon["id_kontraksi"][$i] = $row['id_kontraksi'];
		    	$respon["durasi_kontraksi"][$i] = $row['durasi_kontraksi'];
		    	$respon["time_apart"][$i] = $row['time_apart'];
		    	$respon["time_kontraksi"][$i] = $row['time_kontraksi'];
		    	$respon["tanggal_kontraksi"][$i] = $row['tanggal_kontraksi'];
		    	$i++;
		    }
		  mysqli_free_result($result);
		}
		else{
			$i=0;
				$respon["id_kontraksi"][$i] = "belum ada";
				$respon["durasi_kontraksi"][$i] = "belum ada";
		    	$respon["time_apart"][$i] = "belum ada";
		    	$respon["time_kontraksi"][$i] = "belum ada";
		    	$respon["tanggal_kontraksi"][$i] = "belum ada";
		}

		mysqli_close($con);

		echo json_encode($respon);
}
?>
