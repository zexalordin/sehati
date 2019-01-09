<?php
  $output='';
  if($count>=1){
      $output .= '<div class="content table-responsive table-full-width" style="margin-top: 50px;"> 
                          <table class="table table bordered" style="overflow-x: scroll;">  
                            <thead>
                               <tr>  
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Kontak</th>
                                    <th>tgl Lahir</th>
                                    <th>alamat</th>
                                    <th>provinsi</th>
                                    <th>kabupaten</th>
                                    <th>kode pos</th>
                                    <th>Haid Terakhir</th>
                                    <th>Pengalaman Hamil</th>
                                    <th>Pengalaman Keguguran</th>
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
                  <td>'.$d->username.'</td>
                  <td>'.$d->email.'</td>
                  <td>'.$d->kontak_user.'</td>
                  <td>'.$d->tanggal_lahir.'</td>
                  <td>'.$d->alamat_user.'</td>
                  <td>'.$d->propinsi_user.'</td>
                  <td>'.$d->kabupaten_user.'</td>
                  <td>'.$d->kode_pos_user.'</td>
                  <td>'.$d->haid_terakhir.'</td>
                  <td>'.$d->pengalaman_hamil.'</td>
                  <td>'.$d->pengalaman_keguguran.'</td>
                  <td>
                    <a href="'.base_url()."edit_user/".$d->id_user.'">
                      <span class="glyphicon glyphicon-edit" style="font-size: 20px;"></span>
                    </a>
                    <a data-toggle="modal" data-id="'.$d->id_user.'" class="open-AddBookDialog" href="#" data-target="#myModal">
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
      
