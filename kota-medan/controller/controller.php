 <?php
    include "../model/model.php";

    class controller {
	public $model;

        function __construct(){
            $this->model = new model();
        }


		function organisasi()
		{
			$kecamatan = $_POST['kecamatan'];

			if ($kecamatan=='Medan Selayang') {
			
			$url = "http://localhost/A-TUBES-PI/medan-selayang/index.php?&username=hanna"."&password=hanna"."&api=1234"."&tipe=read_organisasi";
			$json = file_get_contents($url);
			$data = json_decode($json,true);
			
					if($data['message'] == 'Berhasil Dibaca')
						{
						include '../view/tampil_listorganisasi.php';
						}
					else
						{
						$data ='Data Pada Database Kosong';
						}
					}

		}

		function input_organisasi() {

			$nama_o = $_POST['nama_organisasi'];
			$alamat = $_POST['alamat_organisasi'];
			$kecamatan_o = $_POST['kecamatan'];
			$kodepos_o = $_POST['kodepos_organisasi'];
			$jenis_o = $_POST['jenis_organisasi'];

			$alamat_o = $alamat." ".$kecamatan_o." ".$kodepos_o;
			$nama_x = str_replace(" ", "%20", $nama_o);
			$alamat_x = str_replace(" ", "%20", $alamat_o);

			if ($kecamatan_o=='Medan Selayang') {
			
			$url = "http://localhost/A-TUBES-PI/medan-selayang/index.php?&username=hanna"."&password=hanna"."&api=1234"."&tipe=input_organisasi"."&nama=".$nama_x."&alamat=".$alamat_x."&jenis=".$jenis_o;
				
				$json = file_get_contents($url);
				$data = json_decode($json,true);
			
				if($data['message'] == 'Data Berhasil Disimpan')
				{
				include '../view/cek_organisasi.php';
				}
				else
				{
				$data ='Data tidak berhasil disimpan';
				}

			}

		}

		function cari_organisasi() {

			$nama = $_POST['nama'];
			$kecamatan = $_POST['kecamatan'];
			$nama2 = str_replace(" ","%20",$nama);

			if ($kecamatan=='Medan Selayang') {
				$selayang = $this->cari_o_medan_selayang($nama2,$kecamatan);
			}

			elseif ($kecamatan=='Medan Maimun') {
				$maimun = $this->cari_o_medan_maimun($nama2,$kecamatan);
			}
			
			elseif ($kecamatan=='Medan Tuntungan') {
				$tuntungan = $this->cari_o_medan_tuntungan($nama2,$kecamatan);
			}

			elseif ($kecamatan=='Medan Johor') {
				$johor = $this->cari_o_medan_johor($nama2,$kecamatan);
			}
			
			else {

			}


        }

        function cari_o_medan_selayang($nama2,$kecamatan) {
        	
        	$url = "http://localhost/A-TUBES-PI/medan-selayang/index.php?&nama=".$nama2."&api=1234"."&tipe=search_organisasi";

			$json = file_get_contents($url);
			$data = json_decode($json,true);
			
				if($data['message'] == 'Berhasil Dibaca')
				{
				include '../view/tampil_dataorganisasi.php';
				return 1;
				}
				else
				{
				include '../view/message.php';
				return 0;
				}

		}

		function edit_organisasi($no,$kecamatan) {

			// $no = $_POST['nomor'];
			// $kecamatan = $_POST['kec'];
			$nama = $_POST['nama'];
			$alamat = $_POST['alamat'];
			$jenis = $_POST['jenis'];

			$nama_x = str_replace(" ", "%20", $nama);
			$alamat_x = str_replace(" ", "%20", $alamat);
			$jenis_x = str_replace(" ", "%20", $jenis);

			if ($kecamatan=='Medan Selayang') {
			
			$url = "http://localhost/A-TUBES-PI/medan-selayang/index.php?&username=hanna"."&password=hanna"."&api=1234"."&tipe=update_organisasi"."&no=".$no."&nama=".$nama_x."&alamat=".$alamat_x."&jenis=".$jenis_x;
				
				$json = file_get_contents($url);
				$data = json_decode($json,true);
			
				if($data['message'] == 'Data Berhasil Update')
				{
				include '../view/message.php';
				}
				else
				{
				include '../view/message.php';
				}

			}

		}


		function delete_organisasi($no,$kecamatan) {

			if ($kecamatan=='Medan Selayang') {
			
			$url = "http://localhost/A-TUBES-PI/medan-selayang/index.php?&username=hanna"."&password=hanna"."&api=1234"."&tipe=delete_organisasi"."&no=".$no;
				
				$json = file_get_contents($url);
				$data = json_decode($json,true);
			
				if($data['message'] == 'Data Berhasil Dihapus')
				{
				include '../view/message.php';
				}
				else
				{
				include '../view/message.php';
				}

			}

		}



		function data_penduduk($kecamatan) {
		
		if ($kecamatan=='Medan Selayang') {
			$url = "http://localhost/A-TUBES-PI/medan-selayang/index.php?&username=hanna"."&password=hanna"."&api=1234"."&tipe=read_all";
			$json = file_get_contents($url);
			$data = json_decode($json,true);
			
			if($data['message'] == 'Berhasil Dibaca')
			{
				include '../view/tampil_listpenduduk.php';
			}
			else
			{
				$data ='Data Pada Database Kosong';
			}

		}
        	

		}

        function cari_penduduk(){
        	
        	$nik = $_POST['nik'];
			$nama = $_POST['nama'];
			$nama2 = str_replace(" ","%20",$nama);

			$selayang = $this->cari_medan_selayang($nik,$nama2);
			$maimun = $this->cari_medan_maimun($nik,$nama2);
			$tuntungan = $this->cari_medan_tuntungan($nik,$nama2);
			$johor = $this->cari_medan_johor($nik,$nama2);

			if ($selayang==0 
				// && $maimun==0  
				// && $tuntungan==0  
				// && $johor==00
			){
				$data = 'Data Anda tidak terdaftar pada seluruh Kecamatan Medan';
					include '../view/error.php';
			}

			else 
			{

			}
        }


        function cari_medan_selayang($nik,$nama2) {
        	$kecamatan = "Medan Selayang";
        	$url = "http://localhost/A-TUBES-PI/medan-selayang/index.php?&nik=".$nik."&nama=".$nama2."&api=1234"."&tipe=read";
			$json = file_get_contents($url);
			$data = json_decode($json,true);
			
			if($data['message'] == 'Berhasil Dibaca')
			{
				include '../view/tampil_penduduk.php';
				return 1;
			}
			else
			{
				// include '../view/test.php';
				return 0;
			}
           
    	}

    	function cari_medan_maimun($nik,$nama2) {

    	}

    	function cari_medan_tuntungan($nik,$nama2) {

    	}

    	function cari_medan_johor($nik,$nama2) {

    	}
    


    }
?>