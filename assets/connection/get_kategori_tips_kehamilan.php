<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		
		require_once('dbConnect.php');
		
		$sql = "SELECT * FROM kategori_tips_kehamilan ORDER BY nama_kategori_tips ASC";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon[$i]["nama_kategori"] = $row['nama_kategori_tips'];
		    	$respon[$i]["photo_kategori_tips"] = $row['photo_kategori_tips'];
		    	$i++;
		    }
		  mysqli_free_result($result);
		} 
		mysqli_close($con);

		echo json_encode($respon);
	}
?>