<?php  
    class koneksi
    {
        public function connect()
        {
            $host = "localhost";
            $username = "root";
            $password = "";
            $db_name = "server-selayang";

            $conn = mysqli_connect($host, $username, $password, $db_name);
            return $conn;
        }
    }
?>