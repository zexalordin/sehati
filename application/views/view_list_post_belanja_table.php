<?php
  $output='';
  if($count>=1){
      $output .= '<div class="content table-responsive table-full-width" style="margin-top: 50px;"> 
                          <table class="table table bordered">  
                            <thead>
                               <tr>  
                                    <th>No</th>
                                        <th>Nama</th>
                                        <th>Merk</th>
                                        <th>Kategori</th>
                                        <th>Foto 1</th>
                                        <th>Foto 2</th>
                                        <th>Foto 3</th>
                                        <th>Harga</th>
                                        <th>Action</th>
                               </tr>
                              </thead>
                              <tbody>';
      $i=1;  
      foreach ($data as $d){  
           $output .= '  
                <tr>
                  <td>'.$i.'</td>
                  <td>'.$d->nama_barang_belanja.'</td>
                  <td>'.$d->merk_barang_belanja.'</td>
                  <td>'.$d->nama_kategori_barang_statis.'</td>
                  <td><img src="'.$d->photo1_barang_belanja.'" style="width: 100px;border-style: ridge;border-width: 1px;"></td>
                  <td><img src="'.$d->photo2_barang_belanja.'" style="width: 100px;border-style: ridge;border-width: 1px;"></td>
                  <td><img src="'.$d->photo3_barang_belanja.'" style="width: 100px;border-style: ridge;border-width: 1px;"></td>
                  <td>'.$d->harga_barang_belanja.'</td>
                  <td>
                    <a href="'.base_url()."edit_belanja/".$d->id_barang_belanja.'">
                      <span class="glyphicon glyphicon-edit" style="font-size: 20px;"></span>
                    </a>
                    <a data-toggle="modal" data-id="'.$d->id_barang_belanja.'" class="open-AddBookDialog" href="#" data-target="#myModal">
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
      
