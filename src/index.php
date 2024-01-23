<?php
require_once("db-config.php");
$templateParams["topics-list"] = $dbh->getTopics(); //for add post
if(!isset($_SESSION["userId"])) {
  // Show login page if there's not an open session
  $templateParams["title"] = "Login";
  $templateParams["name"] = "show-login.php";
  $templateParams["js"] = array("js/login.js");

  require("template/access.php");
} else {
  // Show homepage if the user is already logged
  $templateParams["title"] = "Home";
  $templateParams["name"] = "show-post.php";
  $templateParams["posts"] = $dbh->getHomeForUser($_SESSION["userId"]);
  $templateParams["js"] = array("js/notification-viewed.js", "utils/functions.js", "js/insert-post.js");

  require("template/base.php");
}
?>