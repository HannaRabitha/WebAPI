<?php  
	include 'config/koneksi.php';
	class model extends koneksi{
		// inisialisasi awal untuk class biasa disebut instansiasi
		private $conn;
		public function __construct(){
			$this->conn = $this->connect();
		}

		public function execute($query){
			return mysqli_query($this->conn, $query);
		}

		public function selectPenduduk($nik,$nama){
			$query = "SELECT * FROM list_penduduk WHERE nik = '$nik'";
			return $this->execute($query);
		}

		public function cekNama($cek,$nik,$nama,$api){
			$x=mysqli_fetch_array($cek);
			if($x['nama'] == $nama)
			{
				$data = "SELECT * FROM list_penduduk WHERE nik = '$nik'";
				$data2 = $this->execute($data);
				return $this->getJSON($data2,$api);
			}
			else
			{
				$response["message"]="NIK atau Nama Salah";
			    echo json_encode($response);
			}
		}

		public function getJSON($hasil,$api)
		{
			if ($api == "1234")
  			{
  				$num = mysqli_num_rows($hasil);

				if($num > 0 )
			    {
			    	$x = mysqli_fetch_array($hasil);
			    	$x["message"] = "Berhasil Dibaca";

        			echo json_encode($x);
			    }
			    else 
			    {
			      $response["message"]="Data Anda Kosong";
			      echo json_encode($response);
			    }
			}
			else
			{
      			$response["message"]="Data tidak ada pada kecamatan Medan Selayang";
      			echo json_encode($response);
  			}
		}





		public function selectUser($user,$pass){
			$query = "SELECT * FROM users WHERE username = '$user'";
			return $this->execute($query);
		}

		public function cekpass($cek,$user,$pass,$api){
			$x=mysqli_fetch_array($cek);
			if($x['password'] == $pass)
			{
				$data = "SELECT * FROM list_penduduk";
				$data2 = $this->execute($data);
				return $this->getJSONall($data2,$api);
			}
			else
			{
				$response["message"]="Username atau Password salah";
			    echo json_encode($response);
			}
		}

		public function getJSONall($hasil,$api)
		{
			if ($api == "1234")
  			{
  				$num = mysqli_num_rows($hasil);

				if($num > 0 )
			    {
			    	$x = $hasil->fetch_all(MYSQLI_ASSOC);
			    	$x["message"] = "Berhasil Dibaca";


        			echo json_encode($x);
			    }
			    else 
			    {
			      $response["message"]="Data Kosong";
			      echo json_encode($response);
			    }
			}
			else
			{
      			$response["message"]="API Anda tidak terdeteksi ";
      			echo json_encode($response);
  			}
		}



		public function readOrganisasi($cek,$user,$pass,$api){
			$x=mysqli_fetch_array($cek);
			if($x['password'] == $pass)
			{
				$data = "SELECT * FROM organisasi";
				$data2 = $this->execute($data);
				return $this->getJSONall($data2,$api);
			}
			else
			{
				$response["message"]="Username atau Password salah";
			    echo json_encode($response);
			}
		}


		public function inputOrganisasi($cek,$user,$pass,$api,$nama,$alamat,$jenis){
			$x=mysqli_fetch_array($cek);
			if($x['password'] == $pass)
			{
				$data = "INSERT INTO organisasi VALUES (NULL, '$nama', '$alamat', '$jenis')";

				$data2 = $this->execute($data);

				$response["message"]="Data Berhasil Disimpan";
				echo json_encode($response);
			}

			else

			{
				$response["message"]="Data Tidak Berhasil Disimpan";
			    echo json_encode($response);
			}
		}



		public function cariOrganisasi($nama,$api){
			$query = "SELECT * FROM organisasi WHERE nama_organisasi = '$nama'";
			$data2 = $this->execute($query);
			
			return $this->getJSON($data2,$api);

		}

		public function updateOrganisasi($cek,$user,$pass,$api,$no,$nama,$alamat,$jenis){
			$x=mysqli_fetch_array($cek);
			if($x['password'] == $pass)
			{
				$data = "UPDATE organisasi SET nama_organisasi='$nama', alamat_kantor='$alamat', jenis_organisasi='$jenis' WHERE nomor_organisasi='$no'";

				$data2 = $this->execute($data);

				$response["message"]="Data Berhasil Update";
				echo json_encode($response);
			}

			else

			{
				$response["message"]="Data Tidak Berhasil Update";
			    echo json_encode($response);
			}
		}



		public function deleteOrganisasi($cek,$user,$pass,$api,$no){
			$x=mysqli_fetch_array($cek);
			if($x['password'] == $pass)
			{
				$data = "DELETE FROM organisasi WHERE nomor_organisasi='$no'";

				$data2 = $this->execute($data);

				$response["message"]="Data Berhasil Dihapus";
				echo json_encode($response);
			}

			else

			{
				$response["message"]="Data Tidak Berhasil Dihapus";
			    echo json_encode($response);
			}
		}



		// pasangan construct adalah destruct untuk menghapus inisialisasi class pada memori
		public function __destruct(){

		}
	}
?>