<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		$username = $_POST['username'];
		$nama = $_POST['nama'];
		$tanggal_lahir = $_POST['tanggal_lahir'];
		$alamat = $_POST['alamat'];
		$propinsi = $_POST['propinsi'];
		$kabupaten = $_POST['kabupaten'];
		$kode_pos = $_POST['kode_pos'];
		$email = $_POST['email'];
		$haid_terakhir = $_POST['haid_terakhir'];

		require_once('dbConnect.php');
		//get id_user
  		$sql_user = "SELECT * FROM user WHERE username='$username'";
		$result_user = mysqli_query($con,$sql_user);
		$row_user = mysqli_fetch_assoc($result_user);
		$id_user = $row_user['id_user'];

		//dbConnect.php script
		if (isset($_POST['alamat'])) {
			$sql = "UPDATE user SET display_name='$nama',tanggal_lahir='$tanggal_lahir' ,alamat_user='$alamat' ,propinsi_user='$propinsi' ,kabupaten_user='$kabupaten',kode_pos_user='$kode_pos',email='$email',haid_terakhir='$haid_terakhir' WHERE id_user='$id_user'";
		}else{
			$sql = "UPDATE user SET display_name='$nama',email='$email',haid_terakhir='$haid_terakhir' WHERE id_user='$id_user'";
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
