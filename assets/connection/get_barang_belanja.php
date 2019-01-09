<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		
		require_once('dbConnect.php');
		
		$sql = "SELECT * FROM barang_belanja ORDER BY kategori_barang_belanja ASC";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon[$i]["nama_barang_belanja"] = $row['nama_barang_belanja'];
		    	$respon[$i]["merk_barang_belanja"] = $row['merk_barang_belanja'];
		    	$respon[$i]["detail_barang_belanja"] = $row['detail_barang_belanja'];
		    	$respon[$i]["fitur_barang_belanja"] = $row['fitur_barang_belanja'];
		    	$respon[$i]["spesifikasi_barang_belanja"] = $row['spesifikasi_barang_belanja'];
		    	$respon[$i]["harga_barang_belanja"] = $row['harga_barang_belanja'];
		    	$respon[$i]["kategori_barang_belanja"] = $row['kategori_barang_belanja'];
		    	$respon[$i]["photo1_barang_belanja"] = $row['photo1_barang_belanja'];
		    	$respon[$i]["photo2_barang_belanja"] = $row['photo2_barang_belanja'];
		    	$respon[$i]["photo3_barang_belanja"] = $row['photo3_barang_belanja'];
		    	$i++;
		    }
		  mysqli_free_result($result);
		} 
		mysqli_close($con);

		echo json_encode($respon);
	}
?>