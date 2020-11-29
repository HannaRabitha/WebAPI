<?php 
	include "template/header.php";	
 ?>

 <?php

  $kecamatan = "Medan Selayang";
  $main = new controller();
  $main->data_penduduk($kecamatan);


 ?>


<?php 
	include "template/footer.php";	
?>