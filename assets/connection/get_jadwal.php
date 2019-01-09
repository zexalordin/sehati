<?php 

	if($_SERVER['REQUEST_METHOD']=='POST'){



		$respon = array();

		$username = $_POST['username'];

		$minggu = (int)$_POST['minggu'];

		

		require_once('dbConnect.php');

  		$sql_user = "SELECT * FROM user WHERE username='$username'";

		$result_user = mysqli_query($con,$sql_user);

		$row_user = mysqli_fetch_assoc($result_user);

		$id_user = $row_user['id_user'];
		$kehamilan = $row_user['kehamilan'];

		//dbConnect.php script 

		

		$sql = "SELECT * FROM jadwal_user INNER JOIN jadwal_static 

  		ON  jadwal_user.id_jadwal_static = jadwal_static.id_jadwal_static WHERE id_user='$id_user' AND post_jadwal='$minggu' AND kehamilan='$kehamilan'";



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
		    	 if (strpos($respon[$i]["judul_jadwal"], 'dokter') !== false) {
                   $respon[$i]["tipe_jadwal"] = "lokadok";
                }else if (strpos($respon[$i]["judul_jadwal"], 'Laboratorium') !== false) {
                   $respon[$i]["tipe_jadwal"] = "pesanlab";
                }else {
                     $respon[$i]["tipe_jadwal"] = "sehati";
                }

		    	$i++;

		    }

		  mysqli_free_result($result);

		}

		else{

			$i=0;

		    	$respon[$i]["judul_jadwal"] = "belum ada";

		    	$respon[$i]["judul_detail_jadwal"] = "belum ada";

		    	$respon[$i]["detail_jadwal"] = "belum ada";

		    	$respon[$i]["status_jadwal"] = "belum ada";

		    	$respon[$i]["nama_rs"] = "belum ada";

		    	$respon[$i]["nama_dokter"] = "belum ada";

		    	$respon[$i]["waktu_pertemuan"] = "belum ada";

		    	$respon[$i]["waktu_pengingat"] = "belum ada";

		}

		mysqli_close($con);



		echo json_encode($respon);

	}

?>
