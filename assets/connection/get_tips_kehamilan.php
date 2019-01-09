<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		
		require_once('dbConnect.php');
		
		$sql = "SELECT * FROM tips_kehamilan INNER JOIN kategori_tips_kehamilan	ON  tips_kehamilan.id_kategori_tips = kategori_tips_kehamilan.id_kategori_tips ORDER BY nama_kategori_tips ASC";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon[$i]["judul_tips"] = $row['judul_tips'];
		    	$respon[$i]["kategori_tips"] = $row['nama_kategori_tips'];
		    	$respon[$i]["detail_tips"] = $row['detail_tips'];
		    	$respon[$i]["photo_tips"] = $row['photo_tips'];
		    	$respon[$i]["sumber_tips"] = $row['sumber_tips'];
		    	$respon[$i]["tanggal_tips"] = $row['tanggal_tips'];
		    	$i++;
		    }
		  mysqli_free_result($result);
		} 
		mysqli_close($con);

		echo json_encode($respon);
	}
?>