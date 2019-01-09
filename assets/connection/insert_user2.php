<?php

if($_SERVER['REQUEST_METHOD']=='POST'){ 

	//Getting values nama, email, katasandi, no telp, hari petama haid, keguguran, hamil

	$respon = array();

	$username = $_POST['username'];

	$nama = $_POST['nama']; 

	$email = $_POST['email'];

	$password = md5($_POST['password']); 

	$haid_terakhir = $_POST['haid_terakhir'];

	$keguguran = (int)$_POST['keguguran'];

	$hamil = (int)$_POST['hamil'];

	$no_hp = $_POST['no_hp'];

	$login_type = $_POST['login_type'];



	//Creating an sql query

	$sql_user = "SELECT * FROM user WHERE username='$username'";

		//send minggu

	require_once('dbConnect.php'); 

	$result = mysqli_query($con,$sql_user);

	$num_rows = mysqli_num_rows($result);

	if($num_rows==0){

		$sql = "INSERT INTO user (username,password,display_name,haid_terakhir,pengalaman_hamil,pengalaman_keguguran,email,kontak_user,login_type,token_user) VALUES ('$username','$password','$nama','$haid_terakhir','$hamil','$keguguran','$email','$no_hp','$login_type','')"; 



		//Executing query ke database 

		if(mysqli_query($con,$sql)){
                    $dirname = $username;  
		    $filename = "../../uploads/user/{$dirname}/";  
		    
		    if (file_exists($filename)) {  
		    } else {  
		        mkdir("../../uploads/user/{$dirname}", 0777,true);
		        chmod("../../uploads/user/{$dirname}", 0777);  
		    }


			$respon["status"] = "success"; 

			$sql_user = "SELECT * FROM user WHERE username='$username'";

			//send minggu

			$result = mysqli_query($con,$sql_user);

			$row = mysqli_fetch_row($result);

			date_default_timezone_set('Asia/Jakarta');

			$datetime1=strtotime($row[4]);

			$datetime2=strtotime(date("Y-m-d"));

			$difference = $datetime2 - $datetime1;

			$selisih_hari = (round($difference / 86400))+1;

			$selisih_minggu = floor($selisih_hari/7);



			if($selisih_minggu>40 ||$selisih_minggu<1){

				$selisih_minggu = 1;

			}

			$respon["minggu"] = $selisih_minggu;

			//get id_user

			$result_user = mysqli_query($con,$sql_user);

			$row_user = mysqli_fetch_row($result_user);

			$id_user = $row_user[0];

			//end get id_user

			$sql_jadwal = "SELECT * FROM jadwal_static";

			if ($result=mysqli_query($con,$sql_jadwal)){

			  $timestamp=date("Y-m-d H:i:s");

			  while ($row=mysqli_fetch_row($result))

			    {
			    	$sql_jadwal = "INSERT INTO jadwal_user (nama_rs,nama_dokter,waktu_buat_janji,status_jadwal,id_user,id_jadwal_static,waktu_pertemuan,waktu_pengingat) VALUES ('','','2001-01-01 00:00:00','belum',$id_user,'$row[0]','2001-01-01 00:00:00','1')";

			    	mysqli_query($con,$sql_jadwal);

			    }

			  mysqli_free_result($result);

			}

			$sql_kategori_barang = "SELECT * FROM kategori_barang_statis";

			if ($result=mysqli_query($con,$sql_kategori_barang )){

			  while ($row=mysqli_fetch_row($result))

			    {

			    	$sql_kategori_barang  = "INSERT INTO kategori_barang_user (id_user,id_kategori_barang_statis,status_kategori_barang) VALUES ('$id_user','$row[0]','belum')";

			    	mysqli_query($con,$sql_kategori_barang);

			    }

			  mysqli_free_result($result);

			}

		}else{ 

			$respon["status"] = "Gagal"; 

		} 

		//Closing the database 

		mysqli_close($con);





	}else{

		$respon["status"] = "conflictUsername"; 

	}

	echo json_encode($respon);

} 

?>
