<?php
  $output='';
  if($count>=1){
      $output .= '<div class="content table-responsive table-full-width" style="margin-top: 50px;"> 
                          <table class="table table bordered">  
                            <thead>
                               <tr>  
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Waktu Tendangan</th>
                                    <th>Durasi</th>
                                    <th>Banyak Tendangan</th>
                               </tr>
                              </thead>
                              <tbody>';
      $i=1;  
      foreach ($data as $d){  
           $output .= '  
                <tr>
                  <td>'.$i.'</td>
                  <td>'.$d->display_name.'</td>
                  <td>'.$d->waktu_tendangan.'</td>
                  <td>'.$d->durasi_tendangan .'</td>
                  <td>'.$d->count_tendangan.'</td>
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
      