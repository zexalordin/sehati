<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'sehati';
$route["list_admin"] = 'index.php/sehati/list_admin';
$route["tambah_admin"] = 'sehati/tambah_admin';
$route["edit_admin/(.*)"] = 'sehati/edit_admin/$1';

$route["list_user"] = 'sehati/list_user';
$route["tambah_user"] = 'sehati/tambah_user';
$route["user_table"] = 'sehati/user_table';
$route["edit_user/(.*)"] = 'sehati/edit_user/$1';

$route["list_bidan"] = 'sehati/list_bidan';
$route["tambah_bidan"] = 'sehati/tambah_bidan';
$route["bidan_table"] = 'sehati/bidan_table';
$route["edit_bidan/(.*)"] = 'sehati/edit_bidan/$1';

$route["list_kader"] = 'sehati/list_kader';
$route["tambah_kader"] = 'sehati/tambah_kader';
$route["kader_table"] = 'sehati/kader_table';
$route["edit_kader/(.*)"] = 'sehati/edit_kader/$1';

$route["list_bayiku"] = 'sehati/list_bayiku';
$route["tambah_post_bayiku"] = 'sehati/tambah_post_bayiku';
$route["bayiku_table"] = 'sehati/bayiku_table';

$route["list_kehamilanku"] = 'sehati/list_kehamilanku';
$route["tambah_post_kehamilanku"] = 'sehati/tambah_post_kehamilanku';
$route["kehamilanku_table"] = 'sehati/kehamilanku_table';
$route["edit_post/(.*)"] = 'sehati/edit_post/$1';

$route["list_jadwal_static"] = 'sehati/list_jadwal_static';
$route["tambah_post_jadwal_static"] = 'sehati/tambah_post_jadwal_static';
$route["jadwal_static_table"] = 'sehati/jadwal_static_table';
$route["edit_jadwal_static/(.*)"] = 'sehati/edit_jadwal_static/$1';

$route["list_jadwal_user"] = 'sehati/list_jadwal_user';
$route["tambah_post_jadwal_user"] = 'sehati/tambah_post_jadwal_user';
$route["jadwal_user_table"] = 'sehati/jadwal_user_table';
$route["edit_jadwal_user/(.*)"] = 'sehati/edit_jadwal_user/$1';

$route["list_momen"] = 'sehati/list_momen';
$route["list_jurnal_bayi"] = 'sehati/list_jurnal_bayi';
$route["list_jurnal_kehamilan"] = 'sehati/list_jurnal_kehamilan';
$route["list_tendangan"] = 'sehati/list_tendangan';
$route["list_kontraksi"] = 'sehati/list_kontraksi';

$route["list_faq"] = 'sehati/list_faq';
$route["tambah_post_faq"] = 'sehati/tambah_post_faq';
$route["faq_table"] = 'sehati/faq_table';
$route["edit_faq/(.*)"] = 'sehati/edit_faq/$1';

$route["list_konten_static"] = 'sehati/list_konten_static';
$route["tambah_post_konten_static"] = 'sehati/tambah_post_konten_static';
$route["konten_static_table"] = 'sehati/konten_static_table';
$route["edit_konten_static/(.*)"] = 'sehati/edit_konten_static/$1';

$route["list_kategori_tips_kehamilan"] = 'sehati/list_kategori_tips_kehamilan';
$route["tambah_post_kategori_tips_kehamilan"] = 'sehati/tambah_post_kategori_tips_kehamilan';
$route["kategori_tips_kehamilan_table"] = 'sehati/kategori_tips_kehamilan_table';
$route["edit_kategori_tips_kehamilan/(.*)"] = 'sehati/edit_kategori_tips_kehamilan/$1';

$route["list_tips_kehamilan"] = 'sehati/list_tips_kehamilan';
$route["tambah_post_tips_kehamilan"] = 'sehati/tambah_post_tips_kehamilan';
$route["tips_kehamilan_table"] = 'sehati/tips_kehamilan_table';
$route["edit_tips_kehamilan/(.*)"] = 'sehati/edit_tips_kehamilan/$1';

$route["list_kategori_kategori_barang_statis"] = 'sehati/list_kategori_kategori_barang_statis';
$route["tambah_post_kategori_kategori_barang_statis"] = 'sehati/tambah_post_kategori_kategori_barang_statis';
$route["kategori_kategori_barang_statis_table"] = 'sehati/kategori_kategori_barang_statis_table';
$route["edit_post_kategori_kategori_barang_statis/(.*)"] = 'sehati/edit_post_kategori_kategori_barang_statis/$1';

$route["list_kategori_barang_statis"] = 'sehati/list_kategori_barang_statis';
$route["tambah_post_kategori_barang_statis"] = 'sehati/tambah_post_kategori_barang_statis';
$route["kategori_barang_statis_table"] = 'sehati/kategori_barang_statis_table';
$route["edit_post_kategori_barang_statis/(.*)"] = 'sehati/edit_post_kategori_barang_statis/$1';

$route["list_kategori_barang_user"] = 'sehati/list_kategori_barang_user';
$route["kategori_barang_user_table"] = 'sehati/kategori_barang_user_table';

$route["list_belanja"] = 'sehati/list_belanja';
$route["tambah_post_belanja"] = 'sehati/tambah_post_belanja';
$route["belanja_table"] = 'sehati/belanja_table';
$route["edit_belanja/(.*)"] = 'sehati/edit_belanja/$1';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
