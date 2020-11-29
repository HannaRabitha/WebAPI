<?php  
	class koneksi {
		private $hostname;
		private $username;
		private $password;
		private $database;
		protected $koneksi;

	function __construct() {
		$this->hostname = "localhost";
		$this->username = "root";
		$this->password = "";
		$this->database = "client";
		$this->koneksi = mysqli_connect($this->hostname, $this->username, $this->password, $this->database);
	}
	function get_status_koneksi() {
		if($this->koneksi != NULL){
			$pesan = "berhasil!!";
			return $pesan;
		}
	}

}

?>