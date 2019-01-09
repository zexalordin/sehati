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
		
		$sql = "SELECT * FROM tendangan WHERE id_user='$id_user' AND kehamilan='$kehamilan' ORDER BY waktu_tendangan ASC";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon["id_tendangan"][$i] = $row['id_tendangan'];
		    	$respon["waktu_tendangan"][$i] = $row['waktu_tendangan'];
		    	$respon["durasi_tendangan"][$i] = $row['durasi_tendangan'];
		    	$respon["count_tendangan"][$i] = $row['count_tendangan'];
		    	$timestamp = strtotime($row['tanggal_tendangan']);
		    	$date = date('d/m/y', $timestamp);
		    	$respon["tanggal_tendangan"][$i] = $date;
		    	$i++;
		    }
		  mysqli_free_result($result);
		}
		else{
			$i=0;
				$respon["id_tendangan"][$i] = "belum ada";
				$respon["durasi_tendangan"][$i] = "belum ada";
		    	$respon["count_tendangan"][$i] = "belum ada";
		    	$respon["tanggal_tendangan"][$i] = "belum ada";
		}

		mysqli_close($con);

		echo json_encode($respon);
}
?>
