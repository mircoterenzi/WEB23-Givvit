<?php
require_once("db/database.php");
$dbh = new DatabaseHelper("localhost", "root", "", "Givvit", 3306);
define("UPLOAD_DIR", "img/")
?>