<?php
  $output='';
  if($count>=1){
      $output .= '<div class="content table-responsive table-full-width" style="margin-top: 50px;"> 
                          <table class="table table bordered">  
                            <thead>
                               <tr>  
                                    <th>No</th>
                                    <th>Judul</th>
                                    <th>Minggu Pos</th>
                                    <th>Kategori</th>
                                    <th>Foto</th>
                                    <th>Sumber</th>
                                    <th>Tanggal Artikel</th>
                                    <th>Action</th>
                               </tr>
                              </thead>
                              <tbody>';
      $i=1;  
      foreach ($data as $d){  
           $output .= '  
                <tr>
                  <td>'.$i.'</td>
                  <td>'.$d->judul_tips.'</td>
                  <td>'.$d->post_tips.'</td>
                  <td>'.$d->nama_kategori_tips.'</td>
                  <td><img src="'.$d->photo_tips.'" style="width: 100px;border-style: ridge;border-width: 1px;"></td>
                  <td>'.$d->sumber_tips.'</td>
                  <td>'.$d->tanggal_tips .'</td>
                  <td>
                    <a href="'.base_url()."edit_tips_kehamilan/".$d->id_tips.'">
                      <span class="glyphicon glyphicon-edit" style="font-size: 20px;"></span>
                    </a>
                    <a data-toggle="modal" data-id="'.$d->id_tips.'" class="open-AddBookDialog" href="#" data-target="#myModal">
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
      
