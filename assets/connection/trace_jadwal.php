<?php
	require_once('dbConnect.php');
	
	$sql_user = "SELECT * FROM user LIMIT 500 OFFSET 2000";
	$timestamp=date("Y-m-d H:i:s");
	if ($result_user=mysqli_query($con,$sql_user)){
		while ($row_user=mysqli_fetch_row($result_user)){
			$sql_cek = "SELECT * FROM jadwal_user WHERE id_user=$row_user[0]";
	    	$result_cek=mysqli_query($con,$sql_cek);
	    	$count = mysqli_num_rows($result_cek);
	    	if ($count==0) {
	    		echo $row_user[0]."<br>";
	    		$sql_jadwal = "SELECT * FROM jadwal_static";
				if ($result=mysqli_query($con,$sql_jadwal)){
				  	while ($row=mysqli_fetch_row($result)){
				    	$sql_jadwal = "INSERT INTO jadwal_user (nama_rs,nama_dokter,waktu_buat_janji,status_jadwal,id_user,id_jadwal_static,waktu_pertemuan,waktu_pengingat) VALUES ('','','2001-01-01 00:00:00','belum',$row_user[0],'$row[0]','2001-01-01 00:00:00','1')";

				    	mysqli_query($con,$sql_jadwal);
				 	}
				  mysqli_free_result($result);
				}
	    	}
	    }
		mysqli_free_result($result_user);

	}
echo"ok";


		// $result_jadwal=mysqli_query($con,$sql_jadwal);
	 //    	while ($row_jadwal=mysqli_fetch_row($result_jadwal)){
	 //    		$sql_cek = "SELECT * FROM jadwal_user WHERE id_user=$row_user[0] AND id_jadwal_static=$row_jadwal[0]";
	 //    		$result_cek=mysqli_query($con,$sql_cek);
	 //    		$count = mysqli_num_rows($result_cek);
	 //    		if ($count==0) {
	 //    			$sql_jadwal_user = "INSERT INTO jadwal_user (status_jadwal,id_user,id_jadwal_static,waktu_pertemuan,waktu_pengingat) VALUES ('belum','$row_user[0]','$row_jadwal[0]','$timestamp','1')";
		// 	    	mysqli_query($con,$sql_jadwal_user);
	 //    		}
	 //    	}
	 //    	mysqli_free_result($result_jadwal);
