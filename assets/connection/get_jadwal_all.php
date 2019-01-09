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
		
		$sql = "SELECT * FROM jadwal_user INNER JOIN jadwal_static 
  		ON  jadwal_user.id_jadwal_static = jadwal_static.id_jadwal_static WHERE id_user='$id_user' AND kehamilan='$kehamilan' ORDER BY post_jadwal ASC";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon[$i]["judul_jadwal"] = $row['judul_jadwal'];
		    	$respon[$i]["judul_detail_jadwal"] = $row['judul_detail_jadwal'];
		    	$respon[$i]["detail_jadwal"] = $row['detail_jadwal'];
		    	$respon[$i]["status_jadwal"] = $row['status_jadwal'];
		    	$respon[$i]["nama_rs"] = $row['nama_rs'];
		    	$respon[$i]["nama_dokter"] = $row['nama_dokter'];
		    	$respon[$i]["waktu_pertemuan"] = $row['waktu_pertemuan'];
		    	$respon[$i]["waktu_pengingat"] = $row['waktu_pengingat'];
                        $respon[$i]["id_jadwal_user"] = $row['id_jadwal_user'];
		    	$respon[$i]["post_jadwal"] = $row['post_jadwal'];
		    	$i++;
		    }
		  mysqli_free_result($result);
		} 
		mysqli_close($con);

		echo json_encode($respon);
	}
?>
