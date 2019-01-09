<?php
  $output='';
  if($count>=1){
      $output .= '<div class="content table-responsive table-full-width" style="margin-top: 50px;"> 
                          <table class="table table bordered">  
                            <thead>
                               <tr>  
                                    <th>No</th>
                                        <th>Nama</th>
                                        <th>Rate</th>
                                        <th>Kontak kader</th>
                                        <th>Bidan</th>
                                        <th>Foto kader</th>
                                        <th>Action</th>
                               </tr>
                              </thead>
                              <tbody>';
      $i=1;  
      foreach ($data as $d){  
           $output .= '  
                <tr>
                  <td>'.$i.'</td>
                  <td>'.$d->nama_kader.'</td>
                  <td>'.$d->rate.'</td>
                  <td>'.$d->kontak_kader.'</td>
                  <td>'.$d->nama_bidan.'</td>
                  <td><img src="'.$d->foto_kader.'" style="width: 100px;border-style: ridge;border-width: 1px;"></td>
                  <td>
                    <a href="'.base_url()."edit_bidan/".$d->id_kader.'">
                      <span class="glyphicon glyphicon-edit" style="font-size: 20px;"></span>
                    </a>
                    <a data-toggle="modal" data-id="'.$d->id_kader.'" class="open-AddBookDialog" href="#" data-target="#myModal">
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
      
