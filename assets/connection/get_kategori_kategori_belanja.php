<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		
		require_once('dbConnect.php');

		$sql = "SELECT * FROM kategori_kategori_barang_statis";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon[$i]["nama_kategori_kategori"] = $row['nama_kategori_kategori_barang_statis'];
		    	$i++;
		    }
		  mysqli_free_result($result);
		} 
		mysqli_close($con);

		echo json_encode($respon);
	}
?>