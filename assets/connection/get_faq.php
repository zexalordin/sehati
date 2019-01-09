<?php 
	if($_SERVER['REQUEST_METHOD']=='POST'){

		$respon = array();
		
		require_once('dbConnect.php');

		
		$sql = "SELECT * FROM faq ORDER BY post_faq ASC, judul_faq ASC";

		if ($result=mysqli_query($con,$sql)){
		  $i=0;
		  while ($row=mysqli_fetch_assoc($result))
		    {
		    	$respon["judul_faq"][$i] = $row['judul_faq'];
		    	$respon["detail_faq"][$i]= $row['detail_faq'];
		    	$respon["post_faq"][$i] = $row['post_faq'];
		    	$i++;
		    }
		  mysqli_free_result($result);
		}
		else{
			$i=0;
				$respon["judul_faq"][$i] = "belum ada";
		    	$respon["detail_faq"][$i]= "belum ada";
		    	$respon["post_faq"][$i] = "belum ada";
		}

		mysqli_close($con);

		echo json_encode($respon);
}
?>
