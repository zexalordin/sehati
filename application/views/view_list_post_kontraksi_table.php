<?php
  $output='';
  if($count>=1){
      $output .= '<div class="content table-responsive table-full-width" style="margin-top: 50px;"> 
                          <table class="table table bordered">  
                            <thead>
                               <tr>  
                                    <th>No</th>
                                        <th>Nama</th>
                                        <th>Durasi Kontraksi</th>
                                        <th>Jeda</th>
                                        <th>Waktu Kontraksi</th>
                                        <th>Tanggal Kontraksi</th>
                               </tr>
                              </thead>
                              <tbody>';
      $i=1;  
      foreach ($data as $d){  
           $output .= '  
                <tr>
                  <td>'.$i.'</td>
                  <td>'.$d->display_name.'</td>
                  <td>'.$d->durasi_kontraksi.'</td>
                  <td>'.$d->time_apart .'</td>
                  <td>'.$d->time_kontraksi.'</td>
                  <td>'.$d->tanggal_kontraksi.'</td>
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
      