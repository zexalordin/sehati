<?php
  $output='';
  if($count>=1){
      $output .= '<div class="content table-responsive table-full-width" style="margin-top: 50px;"> 
                          <table class="table table bordered">  
                            <thead>
                               <tr>  
                                    <th>No</th>
                                    <th>Tanggal</th>
                                    <th>Nama</th>
                                    <th>Panjang Tubuh</th>
                                    <th>Berat Tubuh</th>
                                    <th>Denyut Jantung</th>
                                    <th>Plasenta Bentuk</th>
                                    <th>Plasenta Proporsi</th>
                                    <th>Plasenta Ketebalan</th>
                                    <th>Plasenta Letak</th>
                                    <th>Cairan Ketuban</th>
                                    <th>Kelainan Kongenital</th>
                                    <th>Action</th>
                               </tr>
                              </thead>
                              <tbody>';
      $i=1;  
      foreach ($data as $d){
        $timestamp = strtotime($d->waktu_input);
        $date = date('j F, Y', $timestamp);
           $output .= '  
                <tr>
                  <td>'.$i.'</td>
                  <td>'.$date.'</td>
                  <td>'.$d->display_name.'</td>
                  <td>'.$d->panjang_tubuh.'</td>
                  <td>'.$d->berat_tubuh.'</td>
                  <td>'.$d->denyut_jantung.'</td>
                  <td>'.$d->plasenta_bentuk.'</td>
                  <td>'.$d->plasenta_proporsi.'</td>
                  <td>'.$d->plasenta_ketebalan.'</td>
                  <td>'.$d->plasenta_letak.'</td>
                  <td>'.$d->cairan_ketuban.'</td>
                  <td>'.$d->kelainan_kongenital.'</td>
                  <td>
                    <a data-toggle="modal" data-id="'.$d->id_jurnal_bayi.'" class="open-AddBookDialog" href="#" data-target="#myModal">
                      <span class="glyphicon glyphicon-remove-circle" style="font-size: 20px;"></span>
                    </a>
                  </td>
                </tr>
           ';  
      $i++;}
        $output .='<tbody>
        </table>
        </div>';
        echo $output;
  }else{
      echo '<br><br>';
      echo 'Data Not Found'; 
  }
      
