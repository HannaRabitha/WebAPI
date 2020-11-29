<?php 
	include "template/header.php";	
 ?>

<div class="container">
		<br>
		<br>
		<br>
		<br>
		<br>

<div class="col-lg-8 col-md-8">
						<h3 class="mb-30 title_color">Daftar Organisasi</h3>
						<form method="post">
							
							<div class="mt-10">
								<input type="text" name="nama_organisasi" placeholder="Nama Organisasi" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nama Organisasi'" required class="single-input">
							</div>
							
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
								<input type="text" name="alamat_organisasi" placeholder="Alamat Organisasi" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Alamat Organisasi'" required class="single-input">
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
							
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
								<input type="text" name="kodepos_organisasi" placeholder="Kode Pos" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Kode Pos'" required class="single-input">
							</div>

							<div class="input-group-icon mt-10">
								
								<div class="form-select" id="default-select2">
									<select name="jenis_organisasi">
										<option value="" disabled selected>Jenis Organisasi</option>
										<option value="Sosial">Sosial</option>
										<option value="Ekonomi">Ekonomi</option>
										<option value="Kesehatan">Kesehatan</option>
										<option value="Kemasyarakatan">Kemasyarakatan</option>
									</select>
								</div>
							</div>
				
								<br>
								<br>


								<button type="submit" name="submit" class="genric-btn primary e-large" onclick="return confirm('Apakah Data Sudah Benar?');">Submit</button>
								
								<br>
								
						</form>
					</div>

				<?php
   	 					if(isset($_POST['submit'])){ //jika button submit diklik maka panggil fungsi cari_penduduk pada controller
    					
        				$main = new controller();
        				$main->input_organisasi();

        				}

        				?>
				<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
				</div>


 <?php 
	include "template/footer.php";	
?>