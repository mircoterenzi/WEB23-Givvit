<?php
   require_once("../db-config.php");
   
   $result["uploadDone"] = false;

   if($dbh->insertFile($_POST["userId"],$_POST["fileName"])){
     $result["uploadDone"] = true;
   }else{
     $result["errorInUpload"] = "error while linking image to post" ;
   }
?>