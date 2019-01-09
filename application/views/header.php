<!-- Page Content -->
<nav class="navbar navbar-default" style="border-radius: 0px;">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" style="margin-left: 25px;">
      <?php 
        date_default_timezone_set("Asia/Bangkok");
        $tanggal = date("Y-m-d");
        $day = date('D', strtotime($tanggal));
        $dayList = array(
          'Sun' => 'Minggu',
          'Mon' => 'Senin',
          'Tue' => 'Selasa',
          'Wed' => 'Rabu',
          'Thu' => 'Kamis',
          'Fri' => 'Jumat',
          'Sat' => 'Sabtu'
        );
        $hari = $dayList[$day];
      ?>
      <span class="navbar-brand"><?php echo $hari.','.$tanggal ?></span>
    </div>
    <a href="<?php echo base_url()."index.php/sehati/index.php/sehati/logout"?>">
      <button type="button" class="btn btn-danger btn-lg" style="float: right;margin-top: 6px;font-size: 13px;">
        <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Log out
      </button>
    </a>
  </div><!-- /.container-fluid -->
</nav>   
<!-- /#page-content-wrapper -->
