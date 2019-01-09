<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];
		
		require_once('dbConnect.php');
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		//dbConnect.php script 
		
		$sql = "SELECT * FROM kategori_barang_user INNER JOIN kategori_barang_statis
  		ON  kategori_barang_user.id_kategori_barang_statis = kategori_barang_statis.id_kategori_barang_statis INNER JOIN kategori_kategori_barang_statis
  		ON  kategori_barang_statis.id_kategori_kategori_barang_statis = kategori_kategori_barang_statis.id_kategori_kategori_barang_statis WHERE id_user='$id_user'";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon[$i]["nama_kategori"] = $row['nama_kategori_barang_statis'];
		    	$respon[$i]["status_kategori_barang"] = $row['status_kategori_barang'];
		    	$respon[$i]["nama_kategori_kategori"] = $row['nama_kategori_kategori_barang_statis'];
		    	$respon[$i]["id_kategori_barang_user"] = $row['id_kategori_barang_user'];
		    	$i++;
		    }
		  mysqli_free_result($result);
		} 
		mysqli_close($con);

		echo json_encode($respon);
	}
?>