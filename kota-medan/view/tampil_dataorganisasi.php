<div class="container">
		<br>
		<br>
		<br>
		<br>
		
		
		<h4>Hasil Data Organisasi</h4>

		<p>
			Data Anda Tersimpan pada Database Kecamatan
		<?php 
		echo $kecamatan; 
		?> 
		</p>


			<table class="table table-dashed">
			<tr>
				<th>Nama</th>
				<th>Alamat Kantor</th>
				<th>Jenis</th>
			</tr>

			<?php
			echo "<tr>";
			echo "<td>".$data['nama_organisasi']."</td>";
			echo "<td>".$data['alamat_kantor']."</td>";
			echo "<td>".$data['jenis_organisasi']."</td>";
			echo "</tr>";

			?>
			</table>
				<br>
				<center>
				
				
				<a href="update_organisasi.php?no=<?=$data['nomor_organisasi']?>&kecamatan=<?=$kecamatan?>&nama=<?=$data['nama_organisasi']?>&alamat=<?=$data['alamat_kantor']?>&jenis=<?=$data['jenis_organisasi']?>" class="genric-btn info">Update/Delete</a>
				<!-- <button type="submit" name="update" class="genric-btn info">Update/Delete</button> -->
	
				<!-- <button type="submit" name="delete" class="genric-btn danger" onClick="return confirm('Hapus Data?')">Delete</button>
				</center> -->




	
</div>