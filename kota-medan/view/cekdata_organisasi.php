<?php 
	include "template/header.php";	
 ?>


 <section id="about">
	<section class="about_area section_gap">
		<div class="container">

	
				<h3 class="mb-30 title_color">Cek Data Organisasi</h3>
				<div class="row">
					<div class="col-lg-12">
						<blockquote class="generic-blockquote">
							“Sebelum melihat data penduduk Anda, pastikan Nama dan Kecamatan sesuai dengan saat pendaftaran” 
						</blockquote>
					</div>
				</div>
		



			<form method="post" action="">
				
				<div class="mt-10">
				
				<div class="mt-10">
				<input type="text" name="nama" placeholder="Nama Organisasi" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nama Organisasi'" required class="single-input">
				</div>

				<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
								<div class="form-select" id="default-select">
									<select name="kecamatan" placeholder="kecamatan">
										<option value="" disabled selected>Kecamatan</option>
										<option value="Medan Selayang">Medan Selayang</option>
										<option value="Medan Maimun">Medan Maimun</option>
										<option value="Medan Tuntungan">Medan Tuntungan</option>
										<option value="Medan Johor">Medan Johor</option>
									</select>
								</div>
							</div>

				<br>
				<div class="mt-10">
				<button type="submit" name="cek" class="genric-btn primary circle arrow">Submit<span class="lnr lnr-arrow-right"></span></button>
				</div>
			</form>
		
	<?php
    if(isset($_POST['cek'])){ //jika button submit diklik maka panggil fungsi cari_penduduk pada controller
        $main = new controller();
        $main->cari_organisasi();

    		}
		?>


		</div>
	</section>
</section>

<?php 
	include "template/footer.php";	
?>