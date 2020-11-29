<?php  
    include "model/model.php";
   
    class controller {
        // variabel public
        public $model;
        
        // inisialisasi awal untuk class
        function __construct(){
            $this->model= new model();
            
        }

        function index() {
        }

        function read_organisasi() {
            $user = $_GET['username'];
            $pass = $_GET['password'];
            $api = $_GET['api'];

            $datausers = $this->model->selectUser($user,$pass);
            $readOrganisasi =$this->model->readOrganisasi($datausers,$user,$pass,$api);

        }

        function input_organisasi() {
            $user = $_GET['username'];
            $pass = $_GET['password'];
            $api = $_GET['api'];
            $nama_organisasi = $_GET['nama'];
            $alamat_organisasi = $_GET['alamat'];
            $jenis_organisasi = $_GET['jenis'];

            $datausers = $this->model->selectUser($user,$pass);
            $inputOrganisasi =$this->model->inputOrganisasi($datausers,$user,$pass,$api,$nama_organisasi,$alamat_organisasi,$jenis_organisasi);

        }

        function search_organisasi(){
            $nama = $_GET['nama'];
            $api = $_GET['api'];

            $datausers = $this->model->cariOrganisasi($nama,$api);
            
        }

        function update_organisasi() {
            $user = $_GET['username'];
            $pass = $_GET['password'];
            $api = $_GET['api'];
            $no_organisasi = $_GET['no'];
            $nama_organisasi = $_GET['nama'];
            $alamat_organisasi = $_GET['alamat'];
            $jenis_organisasi = $_GET['jenis'];

            $datausers = $this->model->selectUser($user,$pass);
            $updateOrganisasi =$this->model->updateOrganisasi($datausers,$user,$pass,$api,$no_organisasi, $nama_organisasi,$alamat_organisasi,$jenis_organisasi);
        }


         function delete_organisasi() {
            $user = $_GET['username'];
            $pass = $_GET['password'];
            $api = $_GET['api'];
            $no_organisasi = $_GET['no'];

            $datausers = $this->model->selectUser($user,$pass);
            $updateOrganisasi =$this->model->deleteOrganisasi($datausers,$user,$pass,$api,$no_organisasi);
        }

        function read_all() {
            $user = $_GET['username'];
            $pass = $_GET['password'];
            $api = $_GET['api'];

            $datausers = $this->model->selectUser($user,$pass);
            $cekpass =$this->model->cekpass($datausers,$user,$pass,$api);
        }

        function read(){
            $nik = $_GET['nik'];
            $nama = $_GET['nama'];
            $api = $_GET['api'];

            $datausers = $this->model->selectPenduduk($nik,$nama);
            $cekpass =$this->model->cekNama($datausers,$nik,$nama,$api);
        }
    
        function create() {

        }


    }
?>