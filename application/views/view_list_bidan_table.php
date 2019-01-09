<?php
  $output='';
  if($count>=1){
      $output .= '<div class="content table-responsive table-full-width" style="margin-top: 50px;"> 
                          <table class="table table bordered">  
                            <thead>
                               <tr>  
                                    <th>No</th>
                                        <th>No Induk</th>
                                        <th>Nama</th>
                                        <th>Alamat Praktek</th>
                                        <th>Kota</th>
                                        <th>Propinsi</th>
                                        <th>Kode Pos</th>
                                        <th>Kontak Bidan</th>
                                        <th>Foto KTP & KIPB</th>
                                        <th>Action</th>
                               </tr>
                              </thead>
                              <tbody>';
      $i=1;  
      foreach ($data as $d){  
           $output .= '  
                <tr>
                  <td>'.$i.'</td>
                  <td>'.$d->no_induk.'</td>
                  <td>'.$d->nama_bidan.'</td>
                  <td>'.$d->alamat_praktek.'</td>
                  <td>'.$d->kota_bidan.'</td>
                  <td>'.$d->propinsi_bidan.'</td>
                  <td>'.$d->kode_pos_bidan.'</td>
                  <td>'.$d->kontak_bidan.'</td>
                  <td><img src="'.$d->foto_ktp_kipb.'" style="width: 100px;border-style: ridge;border-width: 1px;"></td>
                  <td>
                    <a href="'.base_url()."edit_bidan/".$d->id_bidan.'">
                      <span class="glyphicon glyphicon-edit" style="font-size: 20px;"></span>
                    </a>
                    <a data-toggle="modal" data-id="'.$d->id_bidan.'" class="open-AddBookDialog" href="#" data-target="#myModal">
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
      
