<?php 

	include("../config/koneksi.php");

	class model extends koneksi{

		public function __construct() {
			parent::__construct();
		}


		public function fetch($var){
			return mysqli_fetch_array($var);
		}

		public function __destruct(){

		}
	
}

 ?>