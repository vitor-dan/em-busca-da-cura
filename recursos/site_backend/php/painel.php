<?php
session_start();
if (!isset($_SESSION["id"])) {
    header("location: login.php");
}
?>
<a href="controller/logout.php">Logout</a>