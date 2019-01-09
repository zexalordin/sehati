<?php

defined('BASEPATH') OR exit('No direct script access allowed');



class Sehati extends CI_Controller {

	function __construct(){

		parent::__construct();		

		$this->load->model('model');

		$this->load->library('pagination');

		$this->load->library('email');

	}

	public function index() {

		if($this->session->userdata('username')){

			redirect(base_url()."index.php/sehati/list_user");

		}

		$this->load->view('login');

	}

	public function forgot_password($id_user,$md5) {

		$table = "user";

		$where=array(

			'id_user' => $id_user,

			'password' => $md5

        );

        $data['data'] = $this->model->get_data_row($table,$where);

		if($data['data']==null){
        	$this->session->set_flashdata('available_msg', 'failed');
        	redirect(base_url()."index.php/sehati/view_success");
        }
        else{
			$this->load->view("view_forgot_password",$data);
		}

	}

	function sendMail(){

		$email=$this->input->post('email');

		$table = "user";

		$where=array(
			'login_type' => "normal",

			'email' => $email

        );

        $data['data'] = $this->model->get_data_row($table,$where);



	    $ci = get_instance();

		$ci->load->library('email');

		$config['protocol'] = "smtp";

		$config['smtp_host'] = "ssl://smtp.gmail.com";
		
		$config['smtp_port'] = "465";

		$config['smtp_user'] = "project.sehati@gmail.com"; 

		$config['smtp_pass'] = "sehati123";

		$config['charset'] = "utf-8";

		$config['mailtype'] = "html";

		$config['newline'] = "\r\n";



		$ci->email->initialize($config);



		$ci->email->from('project.sehati@gmail.com', 'ADMIN SEHATI');

		$list = array($email);

		$ci->email->to($list);

		$this->email->reply_to('project.sehati@gmail.com', 'Explendid Videos');

		$ci->email->subject('Forgot Password');

		$ci->email->message('<font size="6"><strong>Hello '.$data['data']->display_name."</strong></font><br>Click this link to reset your password : <a href='http://sehati-project.net/index.php/sehati/forgot_password/".$data['data']->id_user."/".$data['data']->password."'>click here</a>");

		$ci->email->send();

	}

	public function view_success() {
		$this->load->view("view_success",null);
	}

	function validasi() { 

		$username = $this->input->post('username');

		$password = $this->input->post('password');

		$where = array(

			'username' => $username,

			'password' => md5($password)

			);

		$cek = $this->model->cek_login("admin",$where)->num_rows();

		if($cek > 0){

			$data_session = array(

				'username' => $username,

				'status' => "login",

			);

			$this->session->set_userdata($data_session);

			redirect(base_url()."index.php/sehati/list_user");

		}else{

			$this->session->set_flashdata('login_msg', 'failed');

			redirect(base_url());

		}

	}

	public function is_login(){

		if(!$this->session->userdata('username')){

			redirect(base_url());

		}

	}

	public function logout(){

		$this->session->sess_destroy();

		redirect(base_url());

	}

	//user

	public function list_user() {

		$this->is_login();

		$comp = array(

			"title" => "List User",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_user(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_user() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah User",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_user_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_user($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit User",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_user_edit($id),

		);

		$this->load->view('template',$comp);

	}

	//bidan
	public function list_bidan() {
		$this->is_login();
		$comp = array(
			"title" => "List Bidan",
			"sidebar" => $this->sidebar(),
			"header" => $this->header(),
			"content" => $this ->view_list_bidan(),
		);
		$this->load->view('template',$comp);
	}
	public function tambah_bidan() {
		$this->is_login();
		$comp = array(
			"title" => "Tambah Bidan",
			"sidebar" => $this->sidebar(),
			"header" => $this->header(),
			"content" => $this ->view_list_bidan_tambah(),
		);
		$this->load->view('template',$comp);
	}
	public function edit_bidan($id) {
		$this->is_login();
		$comp = array(
			"title" => "Edit Bidan",
			"sidebar" => $this->sidebar(),
			"header" => $this->header(),
			"content" => $this ->view_list_bidan_edit($id),
		);
		$this->load->view('template',$comp);
	}
	//kader
	public function list_kader() {
		$this->is_login();
		$comp = array(
			"title" => "List Kader",
			"sidebar" => $this->sidebar(),
			"header" => $this->header(),
			"content" => $this ->view_list_kader(),
		);
		$this->load->view('template',$comp);
	}
	public function tambah_kader() {
		$this->is_login();
		$comp = array(
			"title" => "Tambah Kader",
			"sidebar" => $this->sidebar(),
			"header" => $this->header(),
			"content" => $this ->view_list_kader_tambah(),
		);
		$this->load->view('template',$comp);
	}
	public function edit_kader($id) {
		$this->is_login();
		$comp = array(
			"title" => "Edit Kader",
			"sidebar" => $this->sidebar(),
			"header" => $this->header(),
			"content" => $this ->view_list_kader_edit($id),
		);
		$this->load->view('template',$comp);
	}

	//admin

	public function list_admin() {

		$this->is_login();

		$comp = array(

			"title" => "List Admin",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_admin(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_admin() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Admin",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_admin_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_admin($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Admin",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_admin_edit($id),

		);

		$this->load->view('template',$comp);

	}

	//bayiku

	public function list_bayiku() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Bayiku",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_bayiku(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_bayiku() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post Bayiku",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_bayiku_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_post($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Post",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_edit($id),

		);

		$this->load->view('template',$comp);

	}

	//kehamilanku

	public function list_kehamilanku() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Kehamilanku",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kehamilanku(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_kehamilanku() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post Kehamilanku",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kehamilanku_tambah(),

		);

		$this->load->view('template',$comp);

	}

	//jadwal_static

	public function list_jadwal_static() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Jadwal Static",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jadwal_static(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_jadwal_static() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post Jadwal Static",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jadwal_static_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_jadwal_static($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Post",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jadwal_static_edit($id),

		);

		$this->load->view('template',$comp);

	}



	//jadwal_user

	public function list_jadwal_user() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Jadwal User",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jadwal_user(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_jadwal_user() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post Jadwal User",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jadwal_user_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_jadwal_user($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Jadwal User",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jadwal_user_edit($id),

		);

		$this->load->view('template',$comp);

	}



	//jurnal bayi

	public function list_jurnal_bayi() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Jurnal Bayi",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jurnal_bayi(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_jurnal_bayi() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post Jurnal Bayi",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jurnal_bayi_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_jurnal_bayi($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Jurnal Bayi",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jurnal_bayi_edit($id),

		);

		$this->load->view('template',$comp);

	}



	//jurnal kehamilan

	public function list_jurnal_kehamilan() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Jurnal Kehamilan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jurnal_kehamilan(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_jurnal_kehamilan() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post Jurnal Kehamilan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jurnal_kehamilan_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_jurnal_kehamilan($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Jurnal kehamilan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_jurnal_kehamilan_edit($id),

		);

		$this->load->view('template',$comp);

	}



	//pos_momen

	public function list_momen() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Momen",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_momen(),

		);

		$this->load->view('template',$comp);

	}



	//pos_tendangan

	public function list_tendangan() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Tendangan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_tendangan(),

		);

		$this->load->view('template',$comp);

	}



	//pos_kontraksu

	public function list_kontraksi() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Kontraksi",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kontraksi(),

		);

		$this->load->view('template',$comp);

	}



	//FAQ

	public function list_faq() {

		$this->is_login();

		$comp = array(

			"title" => "List Post FAQ",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_faq(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_faq() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post FAQ",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_faq_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_faq($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit FAQ",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_faq_edit($id),

		);

		$this->load->view('template',$comp);

	}



	//Konten Static

	public function list_konten_static() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Konten Static",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_konten_static(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_konten_static() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post Konten Static",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_konten_static_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_konten_static($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Konten Static",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_konten_static_edit($id),

		);

		$this->load->view('template',$comp);

	}

	//kategori tips kehamilan

	public function list_kategori_tips_kehamilan() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Kategori Tips Kehamilan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_tips_kehamilan(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_kategori_tips_kehamilan() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Kategori Post Tips Kehamilan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_tips_kehamilan_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_kategori_tips_kehamilan($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Kategori Tips Kehamilan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_tips_kehamilan_edit($id),

		);

		$this->load->view('template',$comp);

	}

	//tips kehamilan

	public function list_tips_kehamilan() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Tips Kehamilan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_tips_kehamilan(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_tips_kehamilan() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post Tips Kehamilan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_tips_kehamilan_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_tips_kehamilan($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Tips Kehamilan",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_tips_kehamilan_edit($id),

		);

		$this->load->view('template',$comp);

	}

	//tips belanja

	public function list_belanja() {

		$this->is_login();

		$comp = array(

			"title" => "List Post Barang Belanja",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_belanja(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_belanja() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Post Barang Belanja",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_belanja_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_belanja($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Barang Belanja",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_belanja_edit($id),

		);

		$this->load->view('template',$comp);

	}

	//kategori kategori belanja statis

	public function list_kategori_kategori_barang_statis() {

		$this->is_login();

		$comp = array(

			"title" => "List Kategori Kategori Barang Belanja",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_kategori_barang_statis(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_kategori_kategori_barang_statis() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Kategori Kategori Barang Belanja",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_kategori_barang_statis_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_post_kategori_kategori_barang_statis($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Kategori Kategori Barang Belanja",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_kategori_barang_statis_edit($id),

		);

		$this->load->view('template',$comp);

	}

	//kategori belanja statis

	public function list_kategori_barang_statis() {

		$this->is_login();

		$comp = array(

			"title" => "List Kategori Barang Belanja",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_barang_statis(),

		);

		$this->load->view('template',$comp);

	}

	public function tambah_post_kategori_barang_statis() {

		$this->is_login();

		$comp = array(

			"title" => "Tambah Kategori Barang Belanja",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_barang_statis_tambah(),

		);

		$this->load->view('template',$comp);

	}

	public function edit_post_kategori_barang_statis($id) {

		$this->is_login();

		$comp = array(

			"title" => "Edit Kategori Barang Belanja",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_barang_statis_edit($id),

		);

		$this->load->view('template',$comp);

	}



	//kategori belanja user

	public function list_kategori_barang_user() {

		$this->is_login();

		$comp = array(

			"title" => "List Kategori Barang Belanja User",

			"sidebar" => $this->sidebar(),

			"header" => $this->header(),

			"content" => $this ->view_list_post_kategori_barang_user(),

		);

		$this->load->view('template',$comp);

	}

//----------------------------------------------------------------------------------------------------------

	public function sidebar() {

		return $this->load->view("sidebar",array(),true);

	}

	public function header() {

		return $this->load->view("header",array(),true);

	}

	//user

	public function user_table() {

		$search = $this->input->post('search');

		$table = "user";

		$data['data'] = $this->model->fetch_table2($table,"display_name","display_name",array(),$search);

		$data['count'] = $this->model->count_table_like($table,"display_name",$search,array());

		return $this->load->view("view_list_user_table",$data);

	}

	public function view_list_user() {

		$table = "user";



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_user";

		$config['total_rows'] = $this->model->count_table($table);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table($config['per_page'],$this->uri->segment(3),$table,array(),"display_name");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_user",$data,true);

	}

	public function view_list_user_tambah() {

		return $this->load->view("view_list_user_tambah",array(),true);

	}

	public function view_list_user_edit($id) {

		$table = "user";

		$where=array(

			'id_user' => $id

        );

        $data['data'] = $this->model->get_data_row($table,$where);

		return $this->load->view("view_list_user_edit",$data,true);

	}

	//bidan
	public function bidan_table() {
		$search = $this->input->post('search');
		$table = "bidan";
		$data['data'] = $this->model->fetch_table2($table,"nama_bidan","nama_bidan",array(),$search);
		$data['count'] = $this->model->count_table_like($table,"nama_bidan",$search,array());
		return $this->load->view("view_list_bidan_table",$data);
	}
	public function view_list_bidan() {
		$table = "bidan";

		$config = array();
		$config['base_url'] = base_url()."index.php/sehati/list_bidan";
		$config['total_rows'] = $this->model->count_table($table);
		$config['per_page'] = 10;
		$config['num_link'] = 3;

		$config['full_tag_open'] = "<ul class='pagination'>";
		$config['full_tag_close'] ="</ul>";
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
		$config['next_tag_open'] = "<li>";
		$config['next_tagl_close'] = "</li>";
		$config['prev_tag_open'] = "<li>";
		$config['prev_tagl_close'] = "</li>";
		$config['first_tag_open'] = "<li>";
		$config['first_tagl_close'] = "</li>";
		$config['last_tag_open'] = "<li>";
		$config['last_tagl_close'] = "</li>";

		$this->pagination->initialize($config);
		$data['data'] = $this->model->fetch_table($config['per_page'],$this->uri->segment(3),$table,array(),"nama_bidan");
		$data['links'] = $this->pagination->create_links();
		$data['number'] = $this->uri->segment(3)+1;
		return $this->load->view("view_list_bidan",$data,true);
	}
	public function view_list_bidan_tambah() {
		return $this->load->view("view_list_bidan_tambah",array(),true);
	}
	public function view_list_bidan_edit($id) {
		$table = "bidan";
		$where=array(
			'id_bidan' => $id
        );
        $data['data'] = $this->model->get_data_row($table,$where);
		return $this->load->view("view_list_bidan_edit",$data,true);
	}
	//kader
	public function kader_table() {
		$search = $this->input->post('search');
		$table = "kader";
		$data['data'] = $this->model->fetch_table2_join1($table,"nama_kader","nama_kader",array(),$search,"bidan","id_bidan");
		$data['count'] = $this->model->count_table_like_join1($table,"nama_kader",$search,array(),"bidan","id_bidan");
		return $this->load->view("view_list_kader_table",$data);
	}
	public function view_list_kader() {
		$table = "kader";

		$config = array();
		$config['base_url'] = base_url()."index.php/sehati/list_kader";
		$config['total_rows'] = $this->model->count_table($table);
		$config['per_page'] = 10;
		$config['num_link'] = 3;

		$config['full_tag_open'] = "<ul class='pagination'>";
		$config['full_tag_close'] ="</ul>";
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
		$config['next_tag_open'] = "<li>";
		$config['next_tagl_close'] = "</li>";
		$config['prev_tag_open'] = "<li>";
		$config['prev_tagl_close'] = "</li>";
		$config['first_tag_open'] = "<li>";
		$config['first_tagl_close'] = "</li>";
		$config['last_tag_open'] = "<li>";
		$config['last_tagl_close'] = "</li>";

		$this->pagination->initialize($config);
		$data['data'] = $this->model->fetch_table_join1($config['per_page'],$this->uri->segment(3),$table,array(),"nama_kader","bidan","id_bidan");
		$data['links'] = $this->pagination->create_links();
		$data['number'] = $this->uri->segment(3)+1;
		return $this->load->view("view_list_kader",$data,true);
	}
	public function view_list_kader_tambah() {
		$table = "bidan";
		$where=array(
        );
        $data['data'] = $this->model->get_data_rows_asc($table,$where,"nama_bidan");
		return $this->load->view("view_list_kader_tambah",$data,true);
	}
	public function view_list_kader_edit($id) {
		$table = "kader";
		$where=array(
			'id_kader' => $id
        );
        $data['data'] = $this->model->get_data_row($table,$where);
        $table = "bidan";
		$where=array(
        );
        $data['data_bidan'] = $this->model->get_data_rows_asc($table,$where,"nama_bidan");
		return $this->load->view("view_list_kader_edit",$data,true);
	}

	//admin

	public function view_list_admin() {

		$table = "admin";

		$where=array(

        );

        $data['data'] = $this->model->get_data_rows_asc($table,$where,'username');

		return $this->load->view("view_list_admin",$data,true);

	}

	public function view_list_admin_tambah() {

		return $this->load->view("view_list_admin_tambah",array(),true);

	}

	public function view_list_admin_edit($id) {

		$table = "admin";

		$where=array(

			'id_admin' => $id

        );

        $data['data'] = $this->model->get_data_row($table,$where);

		return $this->load->view("view_list_admin_edit",$data,true);

	}

	//bayiku

	public function bayiku_table() {

		$search = $this->input->post('search');

		$table = "artikel";

		$where=array(

			'status_artikel' => "bayiku"

        );

		$data['data'] = $this->model->fetch_table2($table,"judul_artikel","judul_artikel",$where,$search);

		$data['count'] = $this->model->count_table_like($table,"judul_artikel",$search,$where);

		return $this->load->view("view_list_post_bayiku_table",$data);

	}

	public function view_list_post_bayiku() {

		$table = "artikel";

		$where=array(

			'status_artikel' => "bayiku"

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_bayiku";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table($config['per_page'],$this->uri->segment(3),$table,$where,"judul_artikel");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_bayiku",$data,true);

	}

	public function view_list_post_bayiku_tambah() {

		return $this->load->view("view_list_post_bayiku_tambah",array(),true);

	}

	public function view_list_post_edit($id) {

		$table = "artikel";

		$where=array(

			'id_artikel' => $id

        );

        $data['data'] = $this->model->get_data_row($table,$where);

		return $this->load->view("view_list_post_edit",$data,true);

	}

	//kehamilanku

	public function kehamilanku_table() {

		$search = $this->input->post('search');

		$table = "artikel";

		$where=array(

			'status_artikel' => "kehamilanku"

        );

		$data['data'] = $this->model->fetch_table2($table,"judul_artikel","judul_artikel",$where,$search);

		$data['count'] = $this->model->count_table_like($table,"judul_artikel",$search,$where);

		return $this->load->view("view_list_post_kehamilanku_table",$data);

	}

	public function view_list_post_kehamilanku() {

		$table = "artikel";

		$where=array(

			'status_artikel' => "kehamilanku"

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_kehamilanku";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table($config['per_page'],$this->uri->segment(3),$table,$where,"judul_artikel");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_kehamilanku",$data,true);

	}

	public function view_list_post_kehamilanku_tambah() {

		return $this->load->view("view_list_post_kehamilanku_tambah",array(),true);

	}



	//jadwal_static

	public function jadwal_static_table() {

		$search = $this->input->post('search');

		$table = "jadwal_static";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2($table,"judul_jadwal","judul_jadwal",$where,$search);

		$data['count'] = $this->model->count_table_like($table,"judul_jadwal",$search,$where);

		return $this->load->view("view_list_post_jadwal_static_table",$data);

	}

	public function view_list_post_jadwal_static() {

		$table = "jadwal_static";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_jadwal_static";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table($config['per_page'],$this->uri->segment(3),$table,$where,"post_jadwal");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_jadwal_static",$data,true);

	}

	public function view_list_post_jadwal_static_tambah() {

		return $this->load->view("view_list_post_jadwal_static_tambah",array(),true);

	}

	public function view_list_post_jadwal_static_edit($id) {

		$table = "jadwal_static";

		$where=array(

			'id_jadwal_static' => $id

        );

        $data['data'] = $this->model->get_data_row($table,$where);

		return $this->load->view("view_list_jadwal_static_edit",$data,true);

	}



	//jadwal_user

	public function jadwal_user_table() {

		$search = $this->input->post('search');

		$table = "jadwal_user";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2_join2($table,"display_name","display_name",$where,$search,"user","id_user","jadwal_static","id_jadwal_static");

		$data['count'] = $this->model->count_table_like_join2($table,"display_name",$search,$where,"user","id_user","jadwal_static","id_jadwal_static");

		return $this->load->view("view_list_post_jadwal_user_table",$data);

	}

	public function view_list_post_jadwal_user() {

		$table = "jadwal_user";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_jadwal_user";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join2($config['per_page'],$this->uri->segment(3),$table,$where,"display_name","user","id_user","jadwal_static","id_jadwal_static");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_jadwal_user",$data,true);

	}

	public function live_search_table($table,$column,$id,$name) {

		$search = $this->input->post('search');

		$table = $table;

		$data['id'] = $id;

		$data['name'] = $name;

		$data['column'] = $column;

		$data['data'] = $this->model->fetch_table2($table,$column,$column,array(),$search);

		$data['count'] = $this->model->count_table_like($table,$column,$search,array());

		return $this->load->view("view_list_livesearch",$data);

	}

	public function view_list_post_jadwal_user_tambah() {

		return $this->load->view("view_list_post_jadwal_user_tambah",array(),true);

	}

	public function view_list_post_jadwal_user_edit($id) {

		$table = "jadwal_user";

		$where=array(

			'id_jadwal_user' => $id

        );

        $data['data'] = $this->model->get_data_join2_row($table,$where,"user","id_user","jadwal_static","id_jadwal_static");

		return $this->load->view("view_list_jadwal_user_edit",$data,true);

	}



	//jurnal_bayi

	public function jurnal_bayi_table() {

		$search = $this->input->post('search');

		$table = "jurnal_bayi";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2_join1($table,"display_name","display_name",$where,$search,"user","id_user");

		$data['count'] = $this->model->count_table_like_join1($table,"display_name",$search,$where,"user","id_user");

		return $this->load->view("view_list_post_jurnal_bayi_table",$data);

	}

	public function view_list_post_jurnal_bayi() {

		$table = "jurnal_bayi";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_jurnal_bayi";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join1($config['per_page'],$this->uri->segment(3),$table,$where,"display_name","user","id_user");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_jurnal_bayi",$data,true);

	}

	public function view_list_post_jurnal_bayi_tambah() {

		return $this->load->view("view_list_post_jurnal_bayi_tambah",array(),true);

	}

	public function view_list_post_jurnal_bayi_edit($id) {

		$table = "jurnal_bayi";

		$where=array(

			'id_jurnal_bayi' => $id

        );

        $data['data'] = $this->model->get_data_join1_row($table,$where,"user","id_user");

		return $this->load->view("view_list_jurnal_bayi_edit",$data,true);

	}



	//jurnal_kehamilan

	public function jurnal_kehamilan_table() {

		$search = $this->input->post('search');

		$table = "jurnal_kehamilan";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2_join1($table,"display_name","display_name",$where,$search,"user","id_user");

		$data['count'] = $this->model->count_table_like_join1($table,"display_name",$search,$where,"user","id_user");

		return $this->load->view("view_list_post_jurnal_kehamilan_table",$data);

	}

	public function view_list_post_jurnal_kehamilan() {

		$table = "jurnal_kehamilan";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_jurnal_kehamilan";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join1($config['per_page'],$this->uri->segment(3),$table,$where,"display_name","user","id_user");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_jurnal_kehamilan",$data,true);

	}

	public function view_list_post_jurnal_kehamilan_tambah() {

		return $this->load->view("view_list_post_jurnal_kehamilan_tambah",array(),true);

	}

	public function view_list_post_jurnal_kehamilan_edit($id) {

		$table = "jurnal_kehamilan";

		$where=array(

			'id_jurnal_kehamilan' => $id

        );

        $data['data'] = $this->model->get_data_join1_row($table,$where,"user","id_user");

		return $this->load->view("view_list_post_jurnal_kehamilan_edit",$data,true);

	}



	//pos_momen

	public function momen_table() {

		$search = $this->input->post('search');

		$table = "momen";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2_join1($table,"display_name","display_name",$where,$search,"user","id_user");

		$data['count'] = $this->model->count_table_like_join1($table,"display_name",$search,$where,"user","id_user");

		return $this->load->view("view_list_post_momen_table",$data);

	}

	public function view_list_post_momen() {

		$table = "momen";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_momen";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join1($config['per_page'],$this->uri->segment(3),$table,$where,"display_name","user","id_user");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_momen",$data,true);

	}



	//pos_tendangan

	public function tendangan_table() {

		$search = $this->input->post('search');

		$table = "tendangan";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2_join1($table,"display_name","display_name",$where,$search,"user","id_user");

		$data['count'] = $this->model->count_table_like_join1($table,"display_name",$search,$where,"user","id_user");

		return $this->load->view("view_list_post_tendangan_table",$data);

	}

	public function view_list_post_tendangan() {

		$table = "tendangan";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_tendangan";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join1($config['per_page'],$this->uri->segment(3),$table,$where,"display_name","user","id_user");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_tendangan",$data,true);

	}



	//pos_kontraksi

	public function kontraksi_table() {

		$search = $this->input->post('search');

		$table = "kontraksi";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2_join1($table,"display_name","display_name",$where,$search,"user","id_user");

		$data['count'] = $this->model->count_table_like_join1($table,"display_name",$search,$where,"user","id_user");

		return $this->load->view("view_list_post_kontraksi_table",$data);

	}

	public function view_list_post_kontraksi() {

		$table = "kontraksi";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_kontraksi";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join1($config['per_page'],$this->uri->segment(3),$table,$where,"display_name","user","id_user");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_kontraksi",$data,true);

	}



	//FAQ

	public function faq_table() {

		$search = $this->input->post('search');

		$table = "faq";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2($table,"post_faq","judul_faq",$where,$search);

		$data['count'] = $this->model->count_table_like($table,"judul_faq",$search,$where);

		return $this->load->view("view_list_post_faq_table",$data);

	}

	public function view_list_post_faq() {

		$table = "faq";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_faq";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table($config['per_page'],$this->uri->segment(3),$table,$where,"post_faq");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_faq",$data,true);

	}

	public function view_list_post_faq_tambah() {

		return $this->load->view("view_list_post_faq_tambah",array(),true);

	}

	public function view_list_post_faq_edit($id) {

		$table = "faq";

		$where=array(

			'id_faq' => $id

        );

        $data['data'] = $this->model->get_data_row($table,$where);

		return $this->load->view("view_list_post_faq_edit",$data,true);

	}



	//Konten Static

	public function konten_static_table() {

		$search = $this->input->post('search');

		$table = "konten_static";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2($table,"judul_konten_static","judul_konten_static",$where,$search);

		$data['count'] = $this->model->count_table_like($table,"judul_konten_static",$search,$where);

		return $this->load->view("view_list_post_konten_static_table",$data);

	}

	public function view_list_post_konten_static() {

		$table = "konten_static";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_konten_static";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table($config['per_page'],$this->uri->segment(3),$table,$where,"judul_konten_static");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_konten_static",$data,true);

	}

	public function view_list_post_konten_static_tambah() {

		return $this->load->view("view_list_post_konten_static_tambah",array(),true);

	}

	public function view_list_post_konten_static_edit($id) {

		$table = "konten_static";

		$where=array(

			'id_konten_static' => $id

        );

        $data['data'] = $this->model->get_data_row($table,$where);

		return $this->load->view("view_list_post_konten_static_edit",$data,true);

	}

	//kategori tips kehamilan

	public function kategori_tips_kehamilan_table() {

		$search = $this->input->post('search');

		$table = "kategori_tips_kehamilan";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2($table,"nama_kategori_tips","nama_kategori_tips",$where,$search);

		$data['count'] = $this->model->count_table_like($table,"nama_kategori_tips",$search,$where);

		return $this->load->view("view_list_post_kategori_tips_kehamilan_table",$data);

	}

	public function view_list_post_kategori_tips_kehamilan() {

		$table = "kategori_tips_kehamilan";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_kategori_tips_kehamilan";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table($config['per_page'],$this->uri->segment(3),$table,$where,"nama_kategori_tips");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_kategori_tips_kehamilan",$data,true);

	}

	public function view_list_post_kategori_tips_kehamilan_tambah() {

		return $this->load->view("view_list_post_kategori_tips_kehamilan_tambah",array(),true);

	}

	public function view_list_post_kategori_tips_kehamilan_edit($id) {

		$table = "kategori_tips_kehamilan";

		$where=array(

			'id_kategori_tips' => $id

        );

        $data['data'] = $this->model->get_data_row($table,$where);

		return $this->load->view("view_list_post_kategori_tips_kehamilan_edit",$data,true);

	}

	//tips kehamilan

	public function tips_kehamilan_table() {

		$search = $this->input->post('search');

		$table = "tips_kehamilan";

		$where=array(

        );

        $data['data'] = $this->model->fetch_table2_join1($table,"judul_tips","judul_tips",$where,$search,"kategori_tips_kehamilan","id_kategori_tips");

		$data['count'] = $this->model->count_table_like_join1($table,"judul_tips",$search,$where,"kategori_tips_kehamilan","id_kategori_tips");



		return $this->load->view("view_list_post_tips_kehamilan_table",$data);

	}

	public function view_list_post_tips_kehamilan() {

		$table = "tips_kehamilan";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_tips_kehamilan";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join1($config['per_page'],$this->uri->segment(3),$table,$where,"judul_tips","kategori_tips_kehamilan","id_kategori_tips");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_tips_kehamilan",$data,true);

	}

	public function view_list_post_tips_kehamilan_tambah() {

		$table = "kategori_tips_kehamilan";

		$where=array(

        );

        $data['data'] = $this->model->get_data_rows_asc($table,$where,"nama_kategori_tips");

		return $this->load->view("view_list_post_tips_kehamilan_tambah",$data,true);

	}

	public function view_list_post_tips_kehamilan_edit($id) {

		$table = "tips_kehamilan";

		$where=array(

			'id_tips' => $id

        );

        $data['data'] = $this->model->get_data_row($table,$where);

        $table = "kategori_tips_kehamilan";

		$where=array(

        );

        $data['data_kategori'] = $this->model->get_data_rows_asc($table,$where,"nama_kategori_tips");

		return $this->load->view("view_list_post_tips_kehamilan_edit",$data,true);

	}

	//barang belanja

	public function belanja_table() {

		$search = $this->input->post('search');

		$table = "barang_belanja";

		$where=array(

        );

        $data['data'] = $this->model->fetch_table2_join1($table,"nama_barang_belanja","nama_barang_belanja",$where,$search,"kategori_barang_statis","id_kategori_barang_statis");

		$data['count'] = $this->model->count_table_like_join1($table,"nama_barang_belanja",$search,$where,"kategori_barang_statis","id_kategori_barang_statis");

		return $this->load->view("view_list_post_belanja_table",$data);

	}

	public function view_list_post_belanja() {

		$table = "barang_belanja";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_belanja";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join1($config['per_page'],$this->uri->segment(3),$table,$where,"nama_barang_belanja","kategori_barang_statis","id_kategori_barang_statis");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_belanja",$data,true);

	}

	public function view_list_post_belanja_tambah() {

		$table = "kategori_barang_statis";

		$where=array(

        );

        $data['data'] = $this->model->get_data_rows_asc($table,$where,"nama_kategori_barang_statis");

		return $this->load->view("view_list_post_belanja_tambah",$data,true);

	}

	public function view_list_post_belanja_edit($id) {

		$table = "barang_belanja";

		$where=array(

			'id_barang_belanja' => $id

        );

        $data['data'] = $this->model->get_data_row($table,$where);

        $table = "kategori_barang_statis";

		$where=array(

        );

        $data['data_kategori'] = $this->model->get_data_rows_asc($table,$where,"nama_kategori_barang_statis");

		return $this->load->view("view_list_post_belanja_edit",$data,true);

	}

	//kategori kategori barang belanja

	public function kategori_kategori_barang_statis_table() {

		$search = $this->input->post('search');

		$table = "kategori_kategori_barang_statis";

		$where=array(

        );

        $data['data'] = $this->model->fetch_table2($table,"nama_kategori_kategori_barang_statis","nama_kategori_kategori_barang_statis",$where,$search);

		$data['count'] = $this->model->count_table_like($table,"nama_kategori_kategori_barang_statis",$search,$where);

		return $this->load->view("view_list_post_kategori_kategori_barang_statis_table",$data);

	}

	public function view_list_post_kategori_kategori_barang_statis() {

		$table = "kategori_kategori_barang_statis";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_kategori_barang_statis";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table($config['per_page'],$this->uri->segment(3),$table,$where,"nama_kategori_kategori_barang_statis");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_kategori_kategori_barang_statis",$data,true);

	}

	public function view_list_post_kategori_kategori_barang_statis_tambah() {

		return $this->load->view("view_list_post_kategori_kategori_barang_statis_tambah",array(),true);

	}

	public function view_list_post_kategori_kategori_barang_statis_edit($id) {

		$table = "kategori_kategori_barang_statis";

		$where=array(

			'id_kategori_kategori_barang_statis' => $id,

        );

        $data['data'] = $this->model->get_data_row($table,$where);

		return $this->load->view("view_list_post_kategori_kategori_barang_statis_edit",$data,true);

	}

	//kategori barang belanja

	public function kategori_barang_statis_table() {

		$search = $this->input->post('search');

		$table = "kategori_barang_statis";

		$where=array(

        );

        $data['data'] = $this->model->fetch_table2_join1($table,"nama_kategori_barang_statis","nama_kategori_barang_statis",$where,$search,"kategori_kategori_barang_statis","id_kategori_kategori_barang_statis");

		$data['count'] = $this->model->count_table_like_join1($table,"nama_kategori_barang_statis",$search,$where,"kategori_kategori_barang_statis","id_kategori_kategori_barang_statis");

		return $this->load->view("view_list_post_kategori_barang_statis_table",$data);

	}

	public function view_list_post_kategori_barang_statis() {

		$table = "kategori_barang_statis";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_kategori_barang_statis";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 10;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join1($config['per_page'],$this->uri->segment(3),$table,$where,"nama_kategori_barang_statis","kategori_kategori_barang_statis","id_kategori_kategori_barang_statis");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_kategori_barang_statis",$data,true);

	}

	public function view_list_post_kategori_barang_statis_tambah() {

		$table = "kategori_kategori_barang_statis";

		$where=array(

        );

        $data['data'] = $this->model->get_data_rows_asc($table,$where,"nama_kategori_kategori_barang_statis");

		return $this->load->view("view_list_post_kategori_barang_statis_tambah",$data,true);

	}

	public function view_list_post_kategori_barang_statis_edit($id) {

		$table = "kategori_barang_statis";

		$where=array(

			'id_kategori_barang_statis' => $id,

        );

        $data['data'] = $this->model->get_data_row($table,$where);

        $table = "kategori_kategori_barang_statis";

		$where=array(

        );

        $data['data_kategori'] = $this->model->get_data_rows_asc($table,$where,"nama_kategori_kategori_barang_statis");

		return $this->load->view("view_list_post_kategori_barang_statis_edit",$data,true);

	}



	//kategori barang belanja User

	public function kategori_barang_user_table() {

		$search = $this->input->post('search');

		$table = "kategori_barang_user";

		$where=array(

        );

		$data['data'] = $this->model->fetch_table2_join2($table,"display_name","display_name",$where,$search,"user","id_user","kategori_barang_statis","id_kategori_barang_statis");

		$data['count'] = $this->model->count_table_like_join2($table,"display_name",$search,$where,"user","id_user","kategori_barang_statis","id_kategori_barang_statis");

		return $this->load->view("view_list_post_kategori_barang_user_table",$data);

	}

	public function view_list_post_kategori_barang_user() {

		$table = "kategori_barang_user";

		$where=array(

        );



		$config = array();

		$config['base_url'] = base_url()."index.php/sehati/list_kategori_barang_user";

		$config['total_rows'] = $this->model->count_table_where($table,$where);

		$config['per_page'] = 30;

		$config['num_link'] = 3;



		$config['full_tag_open'] = "<ul class='pagination'>";

		$config['full_tag_close'] ="</ul>";

		$config['num_tag_open'] = '<li>';

		$config['num_tag_close'] = '</li>';

		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";

		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";

		$config['next_tag_open'] = "<li>";

		$config['next_tagl_close'] = "</li>";

		$config['prev_tag_open'] = "<li>";

		$config['prev_tagl_close'] = "</li>";

		$config['first_tag_open'] = "<li>";

		$config['first_tagl_close'] = "</li>";

		$config['last_tag_open'] = "<li>";

		$config['last_tagl_close'] = "</li>";



		$this->pagination->initialize($config);

		$data['data'] = $this->model->fetch_table_join2($config['per_page'],$this->uri->segment(3),$table,$where,"display_name","user","id_user","kategori_barang_statis","id_kategori_barang_statis");

		$data['links'] = $this->pagination->create_links();

		$data['number'] = $this->uri->segment(3)+1;

		return $this->load->view("view_list_post_kategori_barang_user",$data,true);

	}

}

