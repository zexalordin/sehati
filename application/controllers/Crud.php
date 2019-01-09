<?php

defined('BASEPATH') OR exit('No direct script access allowed');



class Crud extends CI_Controller {

	function __construct(){

		parent::__construct();		

		$this->load->model('model');

		$this->load->helper(array('form', 'url'));

 

	}



	public function tambah_admin(){

		$data_insert = array(

			'username' => $_POST['username'],

			'password' => md5($_POST['password']),

			'email' => $_POST['email'],

		);

		$res = $this->model->insert_data('admin',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_admin");

	}



	public function tambah_user(){

		$data_insert = array(

			'display_name' => $_POST['nama'],

			'username' => $_POST['username'],

			'password' => md5($_POST['password']),

			'kontak_user' => $_POST['kontak_user'],

			'email' => $_POST['email'],

			'haid_terakhir' => $_POST['haid'],

			'pengalaman_hamil' => $_POST['hamil'],

			'pengalaman_keguguran' => $_POST['keguguran'],

		);

		$res = $this->model->insert_data('user',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_user");

	}

	public function tambah_bidan(){
		$gambar = "";
		$upload_path = "./uploads/bidan/";
		$upload_url = "uploads/bidan/";

		$config =  array(
	                  'upload_path'     => $upload_path,
	                  'allowed_types'   => "gif|jpg|png|jpeg|JPG|PNG",
	                  'overwrite'       => TRUE,
	                );   

		$this->load->library('upload', $config);
		if($this->upload->do_upload()){
			$data = array('upload_data' => $this->upload->data());
			$data_resize = $this->upload->data();

			$this->load->library('image_lib');
			$config = array(
				'image_library'=>"gd2",
				'source_image'=>$upload_url.$data_resize['file_name'],
				'create_thumb'=>FALSE,
				'new_image'=>'thumb_'.$data['upload_data']['file_name'],
				'maintain_ratio'=>TRUE,
				'width'=>300,
				'height'=>300
			);
			$this->image_lib->initialize($config);

			if (!$this->image_lib->resize()) {
				echo $this->image_lib->display_errors();
			}

			$gambar = base_url().$upload_url."thumb_".$data['upload_data']['file_name'];
		}

		$data_insert = array(
			'no_induk' => $_POST['no_induk'],
			'nama_bidan' => $_POST['nama'],
			'alamat_praktek' => $_POST['alamat_praktek'],
			'password' => md5($_POST['password']),
			'kontak_bidan' => $_POST['kontak_bidan'],
			'kota_bidan' => $_POST['kota'],
			'propinsi_bidan' => $_POST['propinsi'],
			'kode_pos_bidan' => $_POST['kode_pos'],
			'foto_ktp_kipb' => $gambar,
		);
		$res = $this->model->insert_data('bidan',$data_insert);
		if($res>=1){
			$this->session->set_flashdata('input_msg', 'success');
		}else{
			$this->session->set_flashdata('input_msg', 'failed');
		}
		redirect(base_url()."index.php/sehati/tambah_bidan");
	}

	public function tambah_kader(){
		$gambar = "";
		$upload_path = "./uploads/kader/";
		$upload_url = "uploads/kader/";

		$config =  array(
	                  'upload_path'     => $upload_path,
	                  'allowed_types'   => "gif|jpg|png|jpeg|JPG|PNG",
	                  'overwrite'       => TRUE,
	                );   

		$this->load->library('upload', $config);
		if($this->upload->do_upload()){
			$data = array('upload_data' => $this->upload->data());
			$data_resize = $this->upload->data();

			$this->load->library('image_lib');
			$config = array(
				'image_library'=>"gd2",
				'source_image'=>$upload_url.$data_resize['file_name'],
				'create_thumb'=>FALSE,
				'new_image'=>'thumb_'.$data['upload_data']['file_name'],
				'maintain_ratio'=>TRUE,
				'width'=>300,
				'height'=>300
			);
			$this->image_lib->initialize($config);

			if (!$this->image_lib->resize()) {
				echo $this->image_lib->display_errors();
			}

			$gambar = base_url().$upload_url."thumb_".$data['upload_data']['file_name'];
		}

		$data_insert = array(
			'nama_kader' => $_POST['nama'],
			'password' => md5($_POST['password']),
			'kontak_kader' => $_POST['kontak_kader'],
			'id_bidan' => $_POST['bidan_kader'],
			'foto_kader' => $gambar,
		);
		$res = $this->model->insert_data('kader',$data_insert);
		if($res>=1){
			$this->session->set_flashdata('input_msg', 'success');
		}else{
			$this->session->set_flashdata('input_msg', 'failed');
		}
		redirect(base_url()."index.php/sehati/tambah_kader");
	}

	public function tambah_post($status){

		date_default_timezone_set("Asia/Bangkok");

		$judul = $_POST['judul'];

		$isi = $_POST['text-ckeditor'];

		$minggu_post = $_POST['minggu_post'];

		$gambar= "";

		$upload_path="";

		$upload_url="";

		$data_insert;



		if ($status == "bayiku") {

			$upload_path = "./uploads/post_bayiku/";

			$upload_url = "uploads/post_bayiku/";

		}else {

			$upload_path = "./uploads/post_kehamilan/";

			$upload_url = "uploads/post_kehamilan/";

		}



		$config =  array(

	                  'upload_path'     => $upload_path,

	                  'allowed_types'   => "gif|jpg|png|jpeg|JPG|PNG",

	                  'overwrite'       => TRUE,

	                );   



		$this->load->library('upload', $config);

		if($this->upload->do_upload()){

			$data = array('upload_data' => $this->upload->data());

			$data_resize = $this->upload->data();



			$this->load->library('image_lib');

			$config = array(

				'image_library'=>"gd2",

				'source_image'=>$upload_url.$data_resize['file_name'],

				'create_thumb'=>FALSE,

				'new_image'=>'thumb_'.$data['upload_data']['file_name'],

				'maintain_ratio'=>TRUE,

				'width'=>300,

				'height'=>300

			);

			$this->image_lib->initialize($config);



			if (!$this->image_lib->resize()) {

				echo $this->image_lib->display_errors();

			}



			$gambar = base_url().$upload_url."thumb_".$data['upload_data']['file_name'];

		}

		$data_insert = array(

			'judul_artikel' => $judul,

			'photo_artikel' => $gambar,

			'isi_artikel' => $isi,

			'post_artikel' => $minggu_post,

			'status_artikel' => $status,

			'tanggal_artikel' => date("Y-m-d"),

		);

		$res = $this->model->insert_data('artikel',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_".$status);

	}



	public function tambah_jadwal_static(){

		$judul = $_POST['judul_jadwal'];

		$judul_detail = $_POST['judul_detail_jadwal'];

		$isi = $_POST['detail_jadwal'];

		$minggu_post = $_POST['minggu_post'];



		$data_insert = array(

			'judul_jadwal' => $judul,

			'judul_detail_jadwal' => $judul_detail,

			'detail_jadwal' => $isi,

			'post_jadwal' => $minggu_post,

		);

		$res = $this->model->insert_data('jadwal_static',$data_insert);

		if($res>=1){

			$table_jadwal= "jadwal_static";

			$where=array(

				'judul_jadwal'=> $judul,

				'judul_detail_jadwal'=>$judul_detail,

				'post_jadwal'=>$minggu_post

	        );

	        $data['data_jadwal'] = $this->model->get_data_row($table_jadwal,$where);



			$table = "user";

			$where=array(

	        );

	        $data['data'] = $this->model->get_data_rows_asc($table,$where,'id_user');



	        foreach ($data['data'] as $d){

				$data_insert = array(

					'id_user' => $d['id_user'],

					'id_jadwal_static' => $data['data_jadwal']->id_jadwal_static,

					'status_jadwal' => "belum",

				);

				$res = $this->model->insert_data('jadwal_user',$data_insert);

        	}

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_jadwal_static");

	}



	public function tambah_jadwal_user(){

		$id_user = $_POST['id_user'];

		$id_judul = $_POST['id_jadwal'];

		$nama_rs = $_POST['nama_rs'];

		$nama_dokter = $_POST['nama_dokter'];

		$waktu_pertemuan = $_POST['tanggal_pertemuan']." ".$_POST['jam_pertemuan'];

		$pengingat = $_POST['pengingat'];



		$data_insert = array(

			'id_user' => $id_user,

			'id_jadwal_static' => $id_judul,

			'nama_rs' => $nama_rs,

			'nama_dokter' => $nama_dokter,

			'waktu_pertemuan' => $waktu_pertemuan,

			'waktu_pengingat' => $pengingat,

			'status_jadwal' => "belum",

		);

		$res = $this->model->insert_data('jadwal_user',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_jadwal_user");

	}



	public function tambah_jurnal_bayi(){

		$id_user = $_POST['id_user'];

		$panjang = $_POST['panjang'];

		$berat = $_POST['berat'];

		$denyut = $_POST['denyut_jantung'];

		$cairan_ketuban = $_POST['cairan_ketuban'];

		$tembuni = $_POST['tembuni'];

		$kelainan_kongenital = $_POST['kelainan_kongenital'];



		$data_insert = array(

			'id_user' => $id_user,

			'panjang_tubuh' => $panjang,

			'berat_tubuh' => $berat,

			'denyut_jantung' => $denyut,

			'cairan_ketuban' => $cairan_ketuban,

			'tembuni' => $tembuni,

			'kelainan_kongenital' => $kelainan_kongenital,

		);

		$res = $this->model->insert_data('jurnal_bayi',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_jurnal_bayi");

	}



	public function tambah_jurnal_kehamilan(){

		$id_user = $_POST['id_user'];

		$berat = $_POST['berat'];

		$denyut = $_POST['denyut_jantung'];

		$suhu = $_POST['suhu'];

		$lingkar_lengan = $_POST['lingkar_lengan'];

		$tekanan_darah = $_POST['tekanan_darah'];

		$pernapasan = $_POST['pernapasan'];



		$data_insert = array(

			'id_user' => $id_user,

			'berat_tubuh' => $berat,

			'denyut_jantung' => $denyut,

			'suhu_tubuh' => $suhu,

			'lingkar_lengan' => $lingkar_lengan,

			'tekanan_darah' => $tekanan_darah,

			'pernapasan' => $pernapasan,

		);

		$res = $this->model->insert_data('jurnal_kehamilan',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_jurnal_kehamilan");

	}



	public function tambah_faq(){

		$judul = $_POST['judul'];

		$post_faq = $_POST['minggu_post'];

		$detail = $_POST['text-ckeditor'];



		$data_insert = array(

			'judul_faq' => $judul,

			'detail_faq' => $detail,

			'post_faq' => $post_faq,

		);

		$res = $this->model->insert_data('faq',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_faq");

	}



	public function tambah_konten_static(){

		$judul = $_POST['judul'];

		$status = $_POST['status'];

		$detail = $_POST['text-ckeditor'];



		$data_insert = array(

			'judul_konten_static' => $judul,

			'status_konten_static' => $status,

			'detail_konten_static' => $detail,

		);

		$res = $this->model->insert_data('konten_static',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_konten_static");

	}



	public function tambah_kategori_tips_kehamilan(){

		$nama = $_POST['nama_kategori'];

		$gambar= "";

		$data_insert;



		$config =  array(

	                  'upload_path'     => "./uploads/kategori_tips_kehamilan/",

	                  'allowed_types'   => "gif|jpg|png|jpeg|JPG|PNG",

	                  'overwrite'       => TRUE,

	                );   



		$this->load->library('upload', $config);

		if($this->upload->do_upload()){

			$data = array('upload_data' => $this->upload->data());

			$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/kategori_tips_kehamilan/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>400,

					'height'=>400

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



			$gambar = base_url()."uploads/kategori_tips_kehamilan/"."thumb_".$data['upload_data']['file_name'];

		}

		$data_insert = array(

			'nama_kategori_tips' => $nama,

			'photo_kategori_tips' => $gambar,

		);

		$res = $this->model->insert_data('kategori_tips_kehamilan',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_kategori_tips_kehamilan");

	}



	public function tambah_tips_kehamilan(){

		date_default_timezone_set("Asia/Bangkok");

		$judul = $_POST['judul'];
		
		$post_tips = $_POST['minggu_post'];

		$kategori = $_POST['kategori'];

		$sumber = $_POST['sumber'];

		$isi = $_POST['text-ckeditor'];

		$gambar= "";

		$data_insert;



		$config =  array(

	                  'upload_path'     => "./uploads/tips_kehamilan/",

	                  'allowed_types'   => "gif|jpg|png|jpeg|JPG|PNG",

	                  'overwrite'       => TRUE,

	                );   



		$this->load->library('upload', $config);

		if($this->upload->do_upload()){

			$data = array('upload_data' => $this->upload->data());

			$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/tips_kehamilan/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>400,

					'height'=>400

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



			$gambar = base_url()."uploads/tips_kehamilan/"."thumb_".$data['upload_data']['file_name'];

		}

		$data_insert = array(

			'judul_tips' => $judul,
			
			'post_tips' => $post_tips,

			'id_kategori_tips' => $kategori,

			'sumber_tips' => $sumber,

			'photo_tips' => $gambar,

			'detail_tips' => $isi,

			'tanggal_tips' => date("Y-m-d"),

		);

		$res = $this->model->insert_data('tips_kehamilan',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_tips_kehamilan");

	}



	public function tambah_barang_belanja(){

		date_default_timezone_set("Asia/Bangkok");

		$nama_barang = $_POST['nama_barang'];

		$merk_barang = $_POST['merk_barang'];

		$harga_barang = $_POST['harga_barang'];

		$kategori_barang = $_POST['kategori_barang'];

		$detail = $_POST['detail_barang'];

		$fitur = $_POST['fitur_barang'];

		$spesifikasi = $_POST['spesifikasi_barang'];

		$gambar1= "";

		$gambar2= "";

		$gambar3= "";

		$data_insert;



		$config =  array(

	                  'upload_path'     => "./uploads/barang_belanja/",

	                  'allowed_types'   => "gif|jpg|png|jpeg|JPG|PNG",

	                  'overwrite'       => TRUE,

	                );   



		$this->load->library('upload', $config);

		if($this->upload->do_upload('userfile')){

			$data = array('upload_data' => $this->upload->data());

			$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/barang_belanja/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>400,

					'height'=>400

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



			$gambar1 = base_url()."uploads/barang_belanja/"."thumb_".$data['upload_data']['file_name'];

		}

		if($this->upload->do_upload('userfile2')){

			$data = array('upload_data' => $this->upload->data());

			$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/barang_belanja/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>400,

					'height'=>400

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



			$gambar2 = base_url()."uploads/barang_belanja/"."thumb_".$data['upload_data']['file_name'];

		}

		if($this->upload->do_upload('userfile3')){

			$data = array('upload_data' => $this->upload->data());

			$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/barang_belanja/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>400,

					'height'=>400

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



			$gambar3 = base_url()."uploads/barang_belanja/"."thumb_".$data['upload_data']['file_name'];

		}



		$table = "kategori_barang_statis";

		$where=array(

			'nama_kategori_barang_statis' => $kategori_barang

        );

        $data['id_kategori'] = $this->model->get_data_row($table,$where);



		$data_insert = array(

			'nama_barang_belanja' => $nama_barang,

			'merk_barang_belanja' => $merk_barang,

			'detail_barang_belanja' => $detail,

			'fitur_barang_belanja' => $fitur,

			'spesifikasi_barang_belanja' => $spesifikasi,

			'harga_barang_belanja' => $harga_barang,

			'id_kategori_barang_statis' => $data['id_kategori']->id_kategori_barang_statis,

			'photo1_barang_belanja' => $gambar1,

			'photo2_barang_belanja' => $gambar2,

			'photo3_barang_belanja' => $gambar3,

		);

		$res = $this->model->insert_data('barang_belanja',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_belanja");

	}



	public function tambah_kategori_barang_statis(){

		$nama_kategori = $_POST['nama_kategori'];

		$kategori_kategori = $_POST['kategori_kategori'];



		$data_insert = array(

			'nama_kategori_barang_statis' => $nama_kategori,

			'id_kategori_kategori_barang_statis' => $kategori_kategori,

		);

		$res = $this->model->insert_data('kategori_barang_statis',$data_insert);

		if($res>=1){

			$table_kategori = "kategori_barang_statis";

			$where=array(

				'nama_kategori_barang_statis'=> $nama_kategori

	        );

	        $data['data_kategori'] = $this->model->get_data_row($table_kategori,$where);



			$table = "user";

			$where=array(

	        );

	        $data['data'] = $this->model->get_data_rows_asc($table,$where,'id_user');



	        foreach ($data['data'] as $d){

				$data_insert = array(

					'id_user' => $d['id_user'],

					'id_kategori_barang_statis' => $data['data_kategori']->id_kategori_barang_statis,

					'status_kategori_barang' => "belum",

				);

				$res = $this->model->insert_data('kategori_barang_user',$data_insert);

        	}

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_kategori_barang_statis");

	}



	public function tambah_kategori_kategori_barang_statis(){

		$nama_kategori = $_POST['nama_kategori'];

		$data_insert = array(

			'nama_kategori_kategori_barang_statis' => $nama_kategori,

		);

		$res = $this->model->insert_data('kategori_kategori_barang_statis',$data_insert);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/tambah_post_kategori_kategori_barang_statis");

	}



	//update

	public function newPassword($id,$md5){

		$data_update = array(

				'password' => md5($_POST['password']),

			);

		$where = array(

			'id_user'=>$id,

			'password'=>$md5

			);

		$res = $this->model->update_data('user',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/view_success");

	}



	public function edit_admin($id){

		if(isset($_POST['cg-password'])){

			$data_update = array(

				'username' => $_POST['username'],

				'password' => md5($_POST['password']),

				'email' => $_POST['email'],

			);

		}else{

			$data_update = array(

				'username' => $_POST['username'],

				'email' => $_POST['email'],

			);

		}

		$where = array('id_admin'=>$id);

		$res = $this->model->update_data('admin',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_admin/".$id);

	}



	public function edit_user($id){

		if(isset($_POST['cg-password'])){

			$data_update = array(

				'display_name' => $_POST['nama'],

				'username' => $_POST['username'],

				'password' => md5($_POST['password']),

				'kontak_user' => $_POST['kontak_user'],

				'email' => $_POST['email'],

				'haid_terakhir' => $_POST['haid'],

				'pengalaman_hamil' => $_POST['hamil'],

				'pengalaman_keguguran' => $_POST['keguguran'],

			);

		}else{

			$data_update = array(

				'display_name' => $_POST['nama'],

				'username' => $_POST['username'],

				'kontak_user' => $_POST['kontak_user'],

				'email' => $_POST['email'],

				'haid_terakhir' => $_POST['haid'],

				'pengalaman_hamil' => $_POST['hamil'],

				'pengalaman_keguguran' => $_POST['keguguran'],

			);

		}

		$where = array('id_user'=>$id);

		$res = $this->model->update_data('user',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_user/".$id);

	}

	public function edit_bidan($id){
		$gambar = "";
		$upload_path = "./uploads/bidan/";
		$upload_url = "uploads/bidan/";

		if($_FILES['userfile']['size'] > 0){
			$config =  array(
                  'upload_path'     => $upload_path,
                  'allowed_types'   => "gif|jpg|png|jpeg",
                  'overwrite'       => TRUE,
                );   

			$this->load->library('upload', $config);
			$gambar="";
			if($this->upload->do_upload()){
				$data = array('upload_data' => $this->upload->data());
				$data_resize = $this->upload->data();

				$this->load->library('image_lib');
				$config = array(
					'image_library'=>"gd2",
					'source_image'=>$upload_url.$data_resize['file_name'],
					'create_thumb'=>FALSE,
					'new_image'=>'thumb_'.$data['upload_data']['file_name'],
					'maintain_ratio'=>TRUE,
					'width'=>300,
					'height'=>300
				);
				$this->image_lib->initialize($config);

				if (!$this->image_lib->resize()) {
					echo $this->image_lib->display_errors();
				}

				$gambar = base_url().$upload_url."thumb_".$data['upload_data']['file_name'];
			}
			if(isset($_POST['cg-password'])){
			$data_update = array(
				'no_induk' => $_POST['no_induk'],
				'nama_bidan' => $_POST['nama'],
				'alamat_praktek' => $_POST['alamat_praktek'],
				'password' => md5($_POST['password']),
				'kontak_bidan' => $_POST['kontak_bidan'],
				'kota_bidan' => $_POST['kota'],
				'propinsi_bidan' => $_POST['propinsi'],
				'kode_pos_bidan' => $_POST['kode_pos'],
				'foto_ktp_kipb' => $gambar,
			);
			}else{
				$data_update = array(
					'no_induk' => $_POST['no_induk'],
					'nama_bidan' => $_POST['nama'],
					'alamat_praktek' => $_POST['alamat_praktek'],
					'kontak_bidan' => $_POST['kontak_bidan'],
					'kota_bidan' => $_POST['kota'],
					'propinsi_bidan' => $_POST['propinsi'],
					'kode_pos_bidan' => $_POST['kode_pos'],
					'foto_ktp_kipb' => $gambar,
				);
			}
		}else{
			if(isset($_POST['cg-password'])){
			$data_update = array(
				'no_induk' => $_POST['no_induk'],
				'nama_bidan' => $_POST['nama'],
				'alamat_praktek' => $_POST['alamat_praktek'],
				'password' => md5($_POST['password']),
				'kontak_bidan' => $_POST['kontak_bidan'],
				'kota_bidan' => $_POST['kota'],
				'propinsi_bidan' => $_POST['propinsi'],
				'kode_pos_bidan' => $_POST['kode_pos'],
			);
			}else{
				$data_update = array(
					'no_induk' => $_POST['no_induk'],
					'nama_bidan' => $_POST['nama'],
					'alamat_praktek' => $_POST['alamat_praktek'],
					'kontak_bidan' => $_POST['kontak_bidan'],
					'kota_bidan' => $_POST['kota'],
					'propinsi_bidan' => $_POST['propinsi'],
					'kode_pos_bidan' => $_POST['kode_pos'],
				);
			}
		}

		$where = array('id_bidan'=>$id);
		$res = $this->model->update_data('bidan',$data_update,$where);
		if($res>=1){
			$this->session->set_flashdata('edit_msg', 'success');
		}else{
			$this->session->set_flashdata('edit_msg', 'failed');
		}
		redirect(base_url()."index.php/sehati/edit_bidan/".$id);
	}

	public function edit_kader($id){
		$gambar = "";
		$upload_path = "./uploads/kader/";
		$upload_url = "uploads/kader/";

		if($_FILES['userfile']['size'] > 0){
			$config =  array(
                  'upload_path'     => $upload_path,
                  'allowed_types'   => "gif|jpg|png|jpeg",
                  'overwrite'       => TRUE,
                );   

			$this->load->library('upload', $config);
			$gambar="";
			if($this->upload->do_upload()){
				$data = array('upload_data' => $this->upload->data());
				$data_resize = $this->upload->data();

				$this->load->library('image_lib');
				$config = array(
					'image_library'=>"gd2",
					'source_image'=>$upload_url.$data_resize['file_name'],
					'create_thumb'=>FALSE,
					'new_image'=>'thumb_'.$data['upload_data']['file_name'],
					'maintain_ratio'=>TRUE,
					'width'=>300,
					'height'=>300
				);
				$this->image_lib->initialize($config);

				if (!$this->image_lib->resize()) {
					echo $this->image_lib->display_errors();
				}

				$gambar = base_url().$upload_url."thumb_".$data['upload_data']['file_name'];
			}
			if(isset($_POST['cg-password'])){
			$data_update = array(
				'nama_kader' => $_POST['nama'],
				'password' => md5($_POST['password']),
				'kontak_kader' => $_POST['kontak_kader'],
				'id_bidan' => $_POST['bidan_kader'],
				'foto_kader' => $gambar,
			);
			}else{
				$data_update = array(
					'nama_kader' => $_POST['nama'],
					'kontak_kader' => $_POST['kontak_kader'],
					'id_bidan' => $_POST['bidan_kader'],
					'foto_kader' => $gambar,
				);
			}
		}else{
			if(isset($_POST['cg-password'])){
			$data_update = array(
				'nama_kader' => $_POST['nama'],
				'password' => md5($_POST['password']),
				'kontak_kader' => $_POST['kontak_kader'],
				'id_bidan' => $_POST['bidan_kader'],
			);
			}else{
				$data_update = array(
					'nama_kader' => $_POST['nama'],
					'kontak_kader' => $_POST['kontak_kader'],
					'id_bidan' => $_POST['bidan_kader'],
				);
			}
		}
		


		$where = array('id_kader'=>$id);
		$res = $this->model->update_data('kader',$data_update,$where);
		if($res>=1){
			$this->session->set_flashdata('edit_msg', 'success');
		}else{
			$this->session->set_flashdata('edit_msg', 'failed');
		}
		redirect(base_url()."index.php/sehati/edit_kader/".$id);
	}

	public function edit_post($id){

		$judul = $_POST['judul'];

		$isi = $_POST['text-ckeditor'];

		$minggu_post = $_POST['minggu_post'];

		$data_update;

		$upload_path="";

		$upload_url="";



		$table = "artikel";

		$where=array(

			'id_artikel' => $id,

	    );

	    $data['data'] = $this->model->get_data_row($table,$where);

	    $status = $data['data']->status_artikel;



		if ($status == "bayiku") {

			$upload_path = "./uploads/post_bayiku/";

			$upload_url = "uploads/post_bayiku/";

		}else {

			$upload_path = "./uploads/post_kehamilan/";

			$upload_url = "uploads/post_kehamilan/";

		}

		if($_FILES['userfile']['size'] > 0){

			$config =  array(

                  'upload_path'     => $upload_path,

                  'allowed_types'   => "gif|jpg|png|jpeg",

                  'overwrite'       => TRUE,

                );   



			$this->load->library('upload', $config);

			$gambar="";

			if($this->upload->do_upload()){

				$data = array('upload_data' => $this->upload->data());

				$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>$upload_url.$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>300,

					'height'=>300

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



				$gambar = base_url().$upload_url."thumb_".$data['upload_data']['file_name'];

			}

			$data_update = array(

				'judul_artikel' => $judul,

				'photo_artikel' => $gambar,

				'isi_artikel' => $isi,

				'post_artikel' => $minggu_post,

			);

		}

		else{

			$data_update = array(

				'judul_artikel' => $judul,

				'isi_artikel' => $isi,

				'post_artikel' => $minggu_post,

			);

		}

		$where = array('id_artikel'=>$id);

		$res = $this->model->update_data('artikel',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_post/".$id);	

			

	}



	public function edit_jadwal_static($id){

		$judul = $_POST['judul_jadwal'];

		$judul_detail = $_POST['judul_detail_jadwal'];

		$isi = $_POST['detail_jadwal'];

		$minggu_post = $_POST['minggu_post'];



		$data_update = array(

			'judul_jadwal' => $judul,

			'judul_detail_jadwal' => $judul_detail,

			'detail_jadwal' => $isi,

			'post_jadwal' => $minggu_post,

		);

		$where = array('id_jadwal_static'=>$id);

		$res = $this->model->update_data('jadwal_static',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_jadwal_static/".$id);	

	}



	public function edit_jadwal_user($id){

		$nama_rs = $_POST['nama_rs'];

		$nama_dokter = $_POST['nama_dokter'];

		$waktu_pertemuan = $_POST['tanggal_pertemuan']." ".$_POST['jam_pertemuan'];

		$pengingat = $_POST['pengingat'];



		$data_update = array(

			'nama_rs' => $nama_rs,

			'nama_dokter' => $nama_dokter,

			'waktu_pertemuan' => $waktu_pertemuan,

			'waktu_pengingat' => $pengingat,

		);



		$where = array('id_jadwal_user'=>$id);

		$res = $this->model->update_data('jadwal_user',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_jadwal_user/".$id);	

	}



	public function edit_jurnal_bayi($id){

		$panjang = $_POST['panjang'];

		$berat = $_POST['berat'];

		$denyut = $_POST['denyut_jantung'];

		$cairan_ketuban = $_POST['cairan_ketuban'];

		$tembuni = $_POST['tembuni'];

		$kelainan_kongenital = $_POST['kelainan_kongenital'];



		$data_update = array(

			'panjang_tubuh' => $panjang,

			'berat_tubuh' => $berat,

			'denyut_jantung' => $denyut,

			'cairan_ketuban' => $cairan_ketuban,

			'tembuni' => $tembuni,

			'kelainan_kongenital' => $kelainan_kongenital,

		);



		$where = array('id_jurnal_bayi'=>$id);

		$res = $this->model->update_data('jurnal_bayi',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_jurnal_bayi/".$id);	

	}



	public function edit_jurnal_kehamilan($id){

		$berat = $_POST['berat'];

		$denyut = $_POST['denyut_jantung'];

		$suhu = $_POST['suhu'];

		$lingkar_lengan = $_POST['lingkar_lengan'];

		$tekanan_darah = $_POST['tekanan_darah'];

		$pernapasan = $_POST['pernapasan'];



		$data_update = array(

			'berat_tubuh' => $berat,

			'denyut_jantung' => $denyut,

			'suhu_tubuh' => $suhu,

			'lingkar_lengan' => $lingkar_lengan,

			'tekanan_darah' => $tekanan_darah,

			'pernapasan' => $pernapasan,

		);

		$where = array('id_jurnal_kehamilan'=>$id);

		$res = $this->model->update_data('jurnal_kehamilan',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_jurnal_kehamilan/".$id);	

	}



	public function edit_faq($id){

		$judul = $_POST['judul'];

		$post_faq = $_POST['minggu_post'];

		$detail = $_POST['text-ckeditor'];



		$data_update = array(

			'judul_faq' => $judul,

			'detail_faq' => $detail,

			'post_faq' => $post_faq,

		);



		$where = array('id_faq'=>$id);

		$res = $this->model->update_data('faq',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_faq/".$id);	

	}



	public function edit_konten_static($id){

		$judul = $_POST['judul'];

		$status = $_POST['status'];

		$detail = $_POST['text-ckeditor'];



		$data_update = array(

			'judul_konten_static' => $judul,

			'status_konten_static' => $status,

			'detail_konten_static' => $detail,

		);



		$where = array('id_konten_static'=>$id);

		$res = $this->model->update_data('konten_static',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_konten_static/".$id);	

	}



	public function edit_kategori_tips_kehamilan($id){

		$nama = $_POST['nama_kategori'];

		$data_update;	

		if($_FILES['userfile']['size'] > 0){

			$config =  array(

                  'upload_path'     => "./uploads/kategori_tips_kehamilan/",

                  'allowed_types'   => "gif|jpg|png|jpeg",

                  'overwrite'       => TRUE,

                );   



			$this->load->library('upload', $config);

			$gambar="";

			if($this->upload->do_upload()){

				$data = array('upload_data' => $this->upload->data());

				$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/kategori_tips_kehamilan/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>300,

					'height'=>300

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



				$gambar = base_url()."uploads/kategori_tips_kehamilan/"."thumb_".$data['upload_data']['file_name'];

			}

			$data_update = array(

				'nama_kategori_tips' => $nama,

				'photo_kategori_tips' => $gambar,

			);

		}

		else{

			$data_update = array(

				'nama_kategori_tips' => $nama,

			);

		}

		$where = array('id_kategori_tips'=>$id);

		$res = $this->model->update_data('kategori_tips_kehamilan',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_kategori_tips_kehamilan/".$id);	

			

	}



	public function edit_tips_kehamilan($id){

		$judul = $_POST['judul'];
		
		$post_tips = $_POST['minggu_post'];

		$kategori = $_POST['kategori'];

		$sumber = $_POST['sumber'];

		$isi = $_POST['text-ckeditor'];

		$data_update;	

		if($_FILES['userfile']['size'] > 0){

			$config =  array(

                  'upload_path'     => "./uploads/tips_kehamilan/",

                  'allowed_types'   => "gif|jpg|png|jpeg",

                  'overwrite'       => TRUE,

                );   



			$this->load->library('upload', $config);

			$gambar="";

			if($this->upload->do_upload()){

				$data = array('upload_data' => $this->upload->data());

				$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/tips_kehamilan/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>300,

					'height'=>300

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



				$gambar = base_url()."uploads/tips_kehamilan/"."thumb_".$data['upload_data']['file_name'];

			}

			$data_update = array(

				'judul_tips' => $judul,
				
				'post_tips' => $post_tips,

				'id_kategori_tips' => $kategori,

				'sumber_tips' => $sumber,

				'photo_tips' => $gambar,

				'detail_tips' => $isi,

			);

		}

		else{

			$data_update = array(

				'judul_tips' => $judul,

				'id_kategori_tips' => $kategori,

				'sumber_tips' => $sumber,

				'detail_tips' => $isi,

			);

		}

		$where = array('id_tips'=>$id);

		$res = $this->model->update_data('tips_kehamilan',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('edit_msg', 'success');

		}else{

			$this->session->set_flashdata('edit_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_tips_kehamilan/".$id);	

			

	}



	public function edit_barang_belanja($id){

		date_default_timezone_set("Asia/Bangkok");

		$nama_barang = $_POST['nama_barang'];

		$merk_barang = $_POST['merk_barang'];

		$harga_barang = $_POST['harga_barang'];

		$kategori_barang = $_POST['kategori_barang'];

		$detail = $_POST['detail_barang'];

		$fitur = $_POST['fitur_barang'];

		$spesifikasi = $_POST['spesifikasi_barang'];

		$gambar1= "";

		$gambar2= "";

		$gambar3= "";

		$data_insert;



		$config =  array(

	                  'upload_path'     => "./uploads/barang_belanja/",

	                  'allowed_types'   => "gif|jpg|png|jpeg|JPG|PNG",

	                  'overwrite'       => TRUE,

	                  'max_size'        => "2048000000",  // Can be set to particular file size

	                  'max_height'      => "5200",

                  	  'max_width'       => "5200"  

	                );   



		$this->load->library('upload', $config);

		if($this->upload->do_upload('userfile') && $_FILES['userfile']['size'] > 0){

			$data = array('upload_data' => $this->upload->data());

			$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/barang_belanja/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>400,

					'height'=>400

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



			$gambar1 = base_url()."uploads/barang_belanja/"."thumb_".$data['upload_data']['file_name'];

		}

		if($this->upload->do_upload('userfile2') && $_FILES['userfile2']['size'] > 0){

			$data = array('upload_data' => $this->upload->data());

			$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/barang_belanja/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>400,

					'height'=>400

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



			$gambar2 = base_url()."uploads/barang_belanja/"."thumb_".$data['upload_data']['file_name'];

		}

		if($this->upload->do_upload('userfile3') && $_FILES['userfile3']['size'] > 0){

			$data = array('upload_data' => $this->upload->data());

			$data_resize = $this->upload->data();



				$this->load->library('image_lib');

				$config = array(

					'image_library'=>"gd2",

					'source_image'=>"uploads/barang_belanja/".$data_resize['file_name'],

					'create_thumb'=>FALSE,

					'new_image'=>'thumb_'.$data['upload_data']['file_name'],

					'maintain_ratio'=>TRUE,

					'width'=>400,

					'height'=>400

				);

				$this->image_lib->initialize($config);



				if (!$this->image_lib->resize()) {

					echo $this->image_lib->display_errors();

				}



			$gambar3 = base_url()."uploads/barang_belanja/"."thumb_".$data['upload_data']['file_name'];

		}

		$data_update= array(

			'nama_barang_belanja' => $nama_barang,

			'merk_barang_belanja' => $merk_barang,

			'detail_barang_belanja' => $detail,

			'fitur_barang_belanja' => $fitur,

			'spesifikasi_barang_belanja' => $spesifikasi,

			'harga_barang_belanja' => $harga_barang,

			'id_kategori_barang_statis' => $kategori_barang,

		);

		if($_FILES['userfile']['size'] > 0){

			$data_update+= array(

				'photo1_barang_belanja' => $gambar1,

			);

		}

		if($_FILES['userfile2']['size'] > 0){

			$data_update+= array(

				'photo2_barang_belanja' => $gambar2,

			);

		}

		if($_FILES['userfile3']['size'] > 0){

			$data_update+= array(

				'photo3_barang_belanja' => $gambar3,

			);

		}

		$where = array('id_barang_belanja'=>$id);

		$res = $this->model->update_data('barang_belanja',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_belanja/".$id);

	}



	public function edit_kategori_barang_statis($id){

		$nama_kategori = $_POST['nama_kategori'];

		$kategori_kategori = $_POST['kategori_kategori'];



		$data_update = array(

			'nama_kategori_barang_statis' => $nama_kategori,

			'id_kategori_kategori_barang_statis' => $kategori_kategori,

		);



		$where = array('id_kategori_barang_statis'=>$id);

		$res = $this->model->update_data('kategori_barang_statis',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_post_kategori_barang_statis/".$id);

	}

	public function edit_kategori_kategori_barang_statis($id){

		$nama_kategori = $_POST['nama_kategori'];

		$data_update = array(

			'nama_kategori_kategori_barang_statis' => $nama_kategori,

		);



		$where = array('id_kategori_kategori_barang_statis'=>$id);

		$res = $this->model->update_data('kategori_kategori_barang_statis',$data_update,$where);

		if($res>=1){

			$this->session->set_flashdata('input_msg', 'success');

		}else{

			$this->session->set_flashdata('input_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/edit_post_kategori_kategori_barang_statis/".$id);

	}

	//delete



	public function delete_admin($id){

		$where = array('id_admin'=>$id);

		$res= $this->model->delete_data('admin',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_admin");

	}



	public function delete_user($id){

		$where = array('id_user'=>$id);
                $data = $this->model->get_data_row("user",$where);
		$res= $this->model->delete_data('user',$where);

		if($res>=1){

			$this->model->delete_data('jadwal_user',$where);

			$this->model->delete_data('jurnal_bayi',$where);

			$this->model->delete_data('jurnal_kehamilan',$where);

			$this->model->delete_data('kategori_barang_user',$where);

			$this->model->delete_data('kontraksi',$where);

			$this->model->delete_data('momen',$where);

			$this->model->delete_data('tendangan',$where);

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."uploads/user/delete.php?username=".$data->username);

	}


	public function delete_bidan($id){
		$where = array('id_bidan'=>$id);
		$res= $this->model->delete_data('bidan',$where);
		if($res>=1){
			$this->session->set_flashdata('delete_msg', 'success');

		}else{
			$this->session->set_flashdata('delete_msg', 'failed');
		}
		redirect(base_url()."index.php/sehati/list_bidan");
	}

	public function delete_kader($id){
		$where = array('id_kader'=>$id);
		$res= $this->model->delete_data('kader',$where);
		if($res>=1){
			$this->session->set_flashdata('delete_msg', 'success');

		}else{
			$this->session->set_flashdata('delete_msg', 'failed');
		}
		redirect(base_url()."index.php/sehati/list_kader");
	}
	

	public function delete_bayiku($id){

		$where = array('id_artikel'=>$id);

		$res= $this->model->delete_data('artikel',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_bayiku");

	}



	public function delete_kehamilanku($id){

		$where = array('id_artikel'=>$id);

		$res= $this->model->delete_data('artikel',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_kehamilanku");

	}



	public function delete_jadwal_static($id){

		$where = array('id_jadwal_static'=>$id);

		$res= $this->model->delete_data('jadwal_static',$where);

		if($res>=1){

			$where = array('id_jadwal_static'=>$id);

			$res= $this->model->delete_data('jadwal_user',$where);

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_jadwal_static");

	}



	public function delete_jadwal_user($id){

		$where = array('id_jadwal_user'=>$id);

		$res= $this->model->delete_data('jadwal_user',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_jadwal_user");

	}



	public function delete_jurnal_bayi($id){

		$where = array('id_jurnal_bayi'=>$id);

		$res= $this->model->delete_data('jurnal_bayi',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_jurnal_bayi");

	}



	public function delete_jurnal_kehamilan($id){

		$where = array('id_jurnal_kehamilan'=>$id);

		$res= $this->model->delete_data('jurnal_kehamilan',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_jurnal_kehamilan");

	}



	public function delete_faq($id){

		$where = array('id_faq'=>$id);

		$res= $this->model->delete_data('faq',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_faq");

	}



	public function delete_konten_static($id){

		$where = array('id_konten_static'=>$id);

		$res= $this->model->delete_data('konten_static',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_konten_static");

	}



	public function delete_tips_kehamilan($id){

		$where = array('id_tips'=>$id);

		$res= $this->model->delete_data('tips_kehamilan',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_tips_kehamilan");

	}



	public function delete_belanja($id){

		$where = array('id_barang_belanja'=>$id);

		$res= $this->model->delete_data('barang_belanja',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_belanja");

	}



	public function delete_kategori_barang_statis($id){

		$where = array('id_kategori_barang_statis'=>$id);

		$res= $this->model->delete_data('kategori_barang_statis',$where);

		if($res>=1){

			$where = array('id_kategori_barang_statis'=>$id);

			$res= $this->model->delete_data('kategori_barang_user',$where);

			$res= $this->model->delete_data('barang_belanja',$where);

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_kategori_barang_statis");

	}



	public function delete_kategori_kategori_barang_statis($id){

		$where = array('id_kategori_kategori_barang_statis'=>$id);

		$res= $this->model->delete_data('kategori_kategori_barang_statis',$where);

		if($res>=1){

			$table = "kategori_barang_statis";

	        $data['data'] = $this->model->get_data_row($table,$where);

			$res= $this->model->delete_data('kategori_barang_statis',$where);

			$where = array('id_kategori_barang_statis'=>$data['data']->id_kategori_barang_statis);

			$res= $this->model->delete_data('kategori_barang_user',$where);

			$res= $this->model->delete_data('barang_belanja',$where);

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_kategori_kategori_barang_statis");

	}



	public function delete_kategori_tips_kehamilan($id){

		$where = array('id_kategori_tips'=>$id);

		$res= $this->model->delete_data('kategori_tips_kehamilan',$where);

		if($res>=1){

			$this->session->set_flashdata('delete_msg', 'success');

		}else{

			$this->session->set_flashdata('delete_msg', 'failed');

		}

		redirect(base_url()."index.php/sehati/list_kategori_tips_kehamilan");

	}

        public function delete_momen($id){
		$where = array('id_momen'=>$id);
		$res= $this->model->delete_data('momen',$where);
		if($res>=1){
			$this->session->set_flashdata('delete_msg', 'success');
		}else{
			$this->session->set_flashdata('delete_msg', 'failed');
		}
		redirect(base_url()."index.php/sehati/list_momen");
	}

}
