<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");

$hostname = "localhost";
$username = "root";
$password = "";
$database = "proj_sis_int";

$conexao = mysqli_connect($hostname, $username, $password, $database);
