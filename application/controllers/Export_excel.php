<?php

defined('BASEPATH') OR exit('No direct script access allowed');



class Export_excel extends CI_Controller {

	function __construct(){

		parent::__construct();		

		$this->load->model('model');

		$this->load->library(array('PHPExcel','PHPExcel/IOFactory'));
	}
        public function is_login(){

		if(!$this->session->userdata('username')){

			redirect(base_url());

		}

	}

	public function export() {
                $this->is_login();
		$ambildata = $this->model->export_user();
                if(count($ambildata)>0){
                   $objPHPExcel = new PHPExcel();
            // Set properties
            $objPHPExcel->getProperties()
                  ->setCreator("SEHATI") //creator
                    ->setTitle("Data User SEHATI");  //file title
 
            $objset = $objPHPExcel->setActiveSheetIndex(0); //inisiasi set object
            $objget = $objPHPExcel->getActiveSheet();  //inisiasi get object
 
            $objget->setTitle('Sample Sheet'); //sheet title
             
            $objget->getStyle("A1:G1")->applyFromArray(
                array(
                    'fill' => array(
                        'type' => PHPExcel_Style_Fill::FILL_SOLID,
                        'color' => array('rgb' => '92d050')
                    ),
                    'font' => array(
                        'color' => array('rgb' => '000000')
                    )
                )
            );
 
            //table header
            $cols = array("A","B","C","D","E","F","G");
             
            $val = array("No","Nama","Username","Haid Terakhir","Pengalaman Hamil","Pengalaman Gugur","email","Kontak");
             
            for ($a=0;$a<7; $a++) 
            {
                $objset->setCellValue($cols[$a].'1', $val[$a]);
                 
                //Setting lebar cell
                $objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(5); // Nama
                $objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(25); // UserName
                $objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(25); // HAID
                $objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(25); // HAMIL
                $objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(25); // GUGUR
                $objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(25); // EMAIL
                $objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(25); // KONTAK
                $objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(25); // Nama
             
                $style = array(
                    'alignment' => array(
                        'horizontal' => PHPExcel_Style_Alignment::VERTICAL_CENTER,
                    )
                );
                $objPHPExcel->getActiveSheet()->getStyle($cols[$a].'1')->applyFromArray($style);
            }
            $no = 1;
            $baris  = 2;
            foreach ($ambildata as $frow){
                 
                //pemanggilan sesuaikan dengan nama kolom tabel
                $objset->setCellValue("A".$baris, $no); //membaca data username
                $objset->setCellValue("B".$baris, $frow->display_name); //membaca data username
                $objset->setCellValue("C".$baris, $frow->username); //membaca data nama
                $objset->setCellValue("D".$baris, $frow->haid_terakhir); //membaca data haid
                $objset->setCellValue("E".$baris, $frow->pengalaman_hamil); //membaca data haid
                $objset->setCellValue("F".$baris, $frow->pengalaman_keguguran); //membaca data haid
                $objset->setCellValue("G".$baris, $frow->email); //membaca data haid
                $objset->setCellValue("H".$baris, $frow->kontak_user); //membaca data haid
                 
                //Set number value
                $objPHPExcel->getActiveSheet()->getStyle('C1:C'.$baris)->getNumberFormat()->setFormatCode('0');
                $no++;
                $baris++;
            }
             
            $objPHPExcel->getActiveSheet()->setTitle('Data Export');
 
            $objPHPExcel->setActiveSheetIndex(0);  
            $filename = urlencode("DataSehati - ".date("Y-m-d").".xls");
               
              header('Content-Type: application/vnd.ms-excel'); //mime type
              header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
              header('Cache-Control: max-age=0'); //no cache
 
            $objWriter = IOFactory::createWriter($objPHPExcel, 'Excel5');                
            $objWriter->save('php://output');
                }
	}
}