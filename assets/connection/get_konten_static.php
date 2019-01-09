<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$sql = "SELECT * FROM konten_static";

		//dbConnect.php script 
		require_once('dbConnect.php'); 

		if ($result=mysqli_query($con,$sql)){
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon[$row['status_konten_static']]["judul"] = $row['judul_konten_static'];
		    	$respon[$row['status_konten_static']]["status"] = $row['status_konten_static'];
		    	$respon[$row['status_konten_static']]["isi"] = $row['detail_konten_static'];
		    }
		  mysqli_free_result($result);
		}else{ 
			$respon[$row['status_konten_static']]["judul"] = "tidak ada";
		    $respon[$row['status_konten_static']]["status"] = "tidak ada";
		    $respon[$row['status_konten_static']]["isi"] = "tidak ada";
		} 
		mysqli_close($con);

		echo json_encode($respon);
	}
?>