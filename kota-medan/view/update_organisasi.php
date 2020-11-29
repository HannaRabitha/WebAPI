<?php 
	include "template/header.php";	

if(isset($_GET['no'])) //kondisi untuk mengakses halaman edit
	{
		$no = $_GET['no'];
		$kecamatan = $_GET['kecamatan'];
		$nama = $_GET['nama'];
		$alamat = $_GET['alamat'];
		$jenis = $_GET['jenis'];
		
	}

 ?>




 <div class="container">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		<form method="post" action="">
		<h4>Edit Data Organisasi</h4>
		Data Anda Tersimpan pada Database Kecamatan
		<?php 
		echo $kecamatan; 
		?> 

						<br>
						<br>

							<div class="mt-10">
								<input type="text" name="nomor" placeholder="Nomor Organisasi" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nomor Organisasi'" required class="single-input" value="<?=$no?>" disabled="disabled">
							</div>


							<div class="mt-10">
								<input type="text" name="kec" placeholder="Kecamatan" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Kecamatan'" required class="single-input" value="<?=$kecamatan?>" disabled="disabled">
							</div>
						
							<div class="mt-10">
								<input type="text" name="nama" placeholder="Nama Organisasi" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nama Organisasi'" required class="single-input" value="<?=$nama?>">
							</div>

							<div class="mt-10">
								<input type="text" name="alamat" placeholder="Alamat Kantor" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Alamat Kantor'" required class="single-input" value="<?=$alamat?>">
							</div>

							<div class="mt-10">
								<input type="text" name="jenis" placeholder="Jenis Organisasi" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Jenis Organisasi'" required class="single-input" value="<?=$jenis?>">
							</div>
				<br>
				<center>
				
				<button type="submit" name="update" class="genric-btn info">Update</button>
	
				<button type="submit" name="delete" class="genric-btn danger" onClick="return confirm('Hapus Data?')">Delete</button>
				</center>

					
	

		</form>

	<?php
    if(isset($_POST['update'])){
        $main = new controller();
        $main->edit_organisasi($no,$kecamatan);

    		}

    elseif(isset($_POST['delete'])){
        $main = new controller();
        $main->delete_organisasi($no,$kecamatan);

    		}
		?>


		<br>	<br>	<br>	<br>	<br>	<br><br>	<br>	<br>	<br>	<br>	<br>
</div>



<?php 
	include "template/footer.php";	
?>
