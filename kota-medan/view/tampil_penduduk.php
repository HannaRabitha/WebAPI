<div class="container">
		<br>
		<br>
		<br>
		<br>
		<h4>Data user</h4>

		<p>
			Data Anda Tersimpan pada Database Kecamatan
		<?php 
		echo $kecamatan; 
		// print_r($data); 
		?> 
		</p>
		
		<table class="table table-dashed">
			<tr>
				<th>Nama</th>
				<th>Nik</th>
				<th>No KK</th>
			</tr>

			<?php
			echo "<tr>";
			echo "<td>".$data['nama']."</td>";
			echo "<td>".$data['nik']."</td>";
			echo "<td>".$data['no_kk']."</td>";
			echo "</tr>";

			?>
		</table>

</div>