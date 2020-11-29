<div class="container">
		<br>
		<br>
		<br>
		<br>
		<h4>Data Organisasi</h4>

		<p>
			Data Pada Kecamatan
		<?php 
		echo $kecamatan; 
		?> 
		</p>


		<table class="table table-dashed">
			<tr>
				<th>Nama</th>
				<th>Alamat Kantor</th>
				<th>Jenis</th>
				<th> </th>
			</tr>


			<?php
			foreach ($data as $emp) {
			echo "<tr>";
			echo "<td>".$emp['nama_organisasi']."</td>";
			echo "<td>".$emp['alamat_kantor']."</td>";
			echo "<td>".$emp['jenis_organisasi']."</td>";
			echo "</tr>";
			}
			?>
		</table>


</div>