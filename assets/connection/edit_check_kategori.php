<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];
		$id_kategori = (int)$_POST['id_kategori'];

		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];
		//get status_jadwal
		$sql_kategori = "SELECT * FROM kategori_barang_user WHERE id_kategori_barang_user='$id_kategori'";
		$result_kategori = mysqli_query($con,$sql_kategori);
		$row_kategori = mysqli_fetch_assoc($result_kategori);
		$status_kategori = $row_kategori['status_kategori_barang'];
		//dbConnect.php script
		if($status_kategori == "sudah"){
			$sql = "UPDATE kategori_barang_user SET status_kategori_barang='belum' WHERE id_kategori_barang_user='$id_kategori' AND id_user='$id_user'";
		}else{
			$sql = "UPDATE kategori_barang_user SET status_kategori_barang='sudah' WHERE id_kategori_barang_user='$id_kategori' AND id_user='$id_user'";
		}

		if ($result=mysqli_query($con,$sql)){
		  	$respon["status"] = "success";
		}else{
			$respon["status"] = "Gagal";
		}
		mysqli_close($con);

		echo json_encode($respon);
}
?>