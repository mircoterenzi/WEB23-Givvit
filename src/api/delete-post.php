<?php
    require_once("../db-config.php");
    $result["done"] = false;

    if(isset($_POST["postId"]) ){
        if(isset($dbh->getAmountRaisedByPost($_POST["postId"])["ammount_raised"])){
            $result["error"] = "can't delete a post after getting a donation";
        }else{
            $dbh->deletePost($_POST["postId"]);
            $result["done"] = true;
        }
    }else{
        $result["error"] = "internal problem in params, please fill an issue report";
    }

   header('Content-Type: application/json');
   echo json_encode($result);
?>