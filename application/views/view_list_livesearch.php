<?php
  $output='';
  if($count>=1){
      $x=1;
      foreach ($data as $d){ 
        if($x==1){
        $output .= 
            '<div class="radio">
              <label><input type="radio" name="'.$name.'"value="'.$d->$id.'" checked>'.$d->$column.'</label>
            </div>';
        }else{
        $output .= 
           '<div class="radio">
             <label><input type="radio" name="'.$name.'" value="'.$d->$id.'">'.$d->$column.'</label>
           </div>';
        }
  $x++;}
        echo $output;
  }else{
      echo '<br><br>';
      echo 'Data Not Found'; 
  }
      