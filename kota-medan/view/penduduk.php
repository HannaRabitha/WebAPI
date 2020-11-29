<?php 
	include "template/header.php";	
 ?>


 <section id="about">
	<section class="about_area section_gap">
		<div class="container">

	
				<h3 class="mb-30 title_color">Cek Data Penduduk</h3>
				<div class="row">
					<div class="col-lg-12">
						<blockquote class="generic-blockquote">
							“Sebelum melihat data penduduk Anda, pastikan Nama dan NIK sesuai dengan KTP” 
						</blockquote>
					</div>
				</div>
		



			<form method="post" action="">
				
				<div class="mt-10">
				<input type="text" name="nik" placeholder="NIK" onfocus="this.placeholder = ''" onblur="this.placeholder = 'NIK'" required class="single-input">
				</div>
				
				<div class="mt-10">
				<input type="text" name="nama" placeholder="Nama Lengkap" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nama Lengkap'" required class="single-input">
				</div>

				<br>
				<div class="mt-10">
				<button type="submit" name="submit" class="genric-btn primary circle arrow">Submit<span class="lnr lnr-arrow-right"></span></button>
				</div>

			</form>
		
	<?php
    if(isset($_POST['submit'])){ //jika button submit diklik maka panggil fungsi cari_penduduk pada controller
        $main = new controller();
        $main->cari_penduduk();
    		}
		?>


		</div>
	</section>
</section>

<?php 
	include "template/footer.php";	
?>