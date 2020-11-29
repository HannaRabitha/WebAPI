<?php 
	include "template/header.php";	
 ?>

<section id="about">
	<section class="about_area section_gap">
		<div class="container">

<div class="single-element-widget">
					
					<div class="row">
					<div class="col-lg-12">
						<blockquote class="generic-blockquote">
							Organisasi Anda belum terdaftar?  <a href="input_organisasi.php">Daftar Sekarang</a> 
						</blockquote>
					</div>
					</div>

							<br>
							<br>

							<h3 class="mb-30 title_color">Lihat Organisasi pada Kecamatan</h3>
							
							<form method="post">

							<div class="default-select" id="default-select">
								<select name="kecamatan">
									<option value="Medan Maimun">Medan Maimun</option>
									<option value="Medan Selayang">Medan Selayang</option>
									<option value="Medan Tuntungan">Medan Tuntungan</option>
									<option value="Medan Johor">Medan Johor</option>
								</select>
							
						

							
								<div class="mt-10">
								<button type="submit" name="submit" class="genric-btn primary circle arrow">Lihat Data</button>
							</div>
							</div>
							</form>

							</div>
						


						<?php
    					if(isset($_POST['submit'])){ //jika button submit diklik maka panggil fungsi cari_penduduk pada controller
    					
        				$main = new controller();
        				$main->organisasi();
    		}
		?>

			</div>
	</section>
</section>


 
<?php 
	include "template/footer.php";	
?>