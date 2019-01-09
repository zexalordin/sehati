<?php
  $output='';
  if($count>=1){
      $output .= '<div class="content table-responsive table-full-width" style="margin-top: 50px;"> 
                          <table class="table table bordered">  
                            <thead>
                               <tr>  
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Jadwal</th>
                                    <th>Rumah Sakit</th>
                                    <th>Dokter</th>
                                    <th>Waktu Bertemu</th>
                                    <th>Status</th>
                                    <th>Action</th>
                               </tr>
                              </thead>
                              <tbody>';
      $i=1;  
      foreach ($data as $d){  
           $output .= '  
                <tr>
                  <td>'.$i.'</td>
                  <td>'.$d->display_name.'</td>
                  <td>'.$d->judul_jadwal .'</td>
                  <td>'.$d->nama_rs.'</td>
                  <td>'.$d->nama_dokter.'</td>
                  <td>'.$d->waktu_pertemuan.'</td>
                  <td>'.$d->status_jadwal.'</td>
                  <td>
                    <a href="'.base_url()."edit_jadwal_user/".$d->id_jadwal_user.'">
                      <span class="glyphicon glyphicon-edit" style="font-size: 20px;"></span>
                    </a>
                    <a data-toggle="modal" data-id="'.$d->id_jadwal_user.'" class="open-AddBookDialog" href="#" data-target="#myModal">
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
      
