<?php

	//Includes class controller
	include "controller/controller.php";

	$tipe = $_GET['tipe'];

	if ($tipe=='read') {
		$main = new controller();
		$main->read();
	}

	elseif ($tipe=='read_all') {
		$main = new controller();
		$main->read_all();
	}

	elseif ($tipe=='read_organisasi') {
		$main = new controller();
		$main->read_organisasi();
	}

	elseif ($tipe=='input_organisasi') {
		$main = new controller();
		$main->input_organisasi();
	}

	elseif ($tipe=='search_organisasi') {
		$main = new controller();
		$main->search_organisasi();
	}

	elseif ($tipe=='update_organisasi') {
		$main = new controller();
		$main->update_organisasi();
	}

	elseif ($tipe=='delete_organisasi') {
		$main = new controller();
		$main->delete_organisasi();
	}

	

	 


?>