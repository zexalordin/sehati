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
		
		$sql = "SELECT * FROM momen WHERE id_user='$id_user' AND kehamilan='$kehamilan' ORDER BY waktu_upload_momen ASC";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
                $timestamp = strtotime($row['waktu_upload_momen']);
	            $time = date('H:i:s', $timestamp);
                $date = date('d/m/y', $timestamp);
                $respon["id_momen"][$i] = $row['id_momen'];
                $respon["photo_momen"][$i] = $row['photo_momen'];
		    	$respon["caption"][$i] = $row['caption_momen'];
                $respon["time"][$i] = $time;
		    	$respon["date"][$i] = $date;
		    	$respon["post_momen"][$i] = $row['post_momen'];
		    	$i++;
		    }
		  mysqli_free_result($result);
		}
		else{
			$i=0;
		    	$respon["caption"][$i] = "belum ada";
                        $respon["time"][$i] = "belum ada";
		}
		mysqli_close($con);

		echo json_encode($respon);
	}
?>
