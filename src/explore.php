<?php
require_once("db-config.php");

$templateParams["title"] = "Explore";
$templateParams["name"] = "show-explore.php"; 
$templateParams["topics-list"] = $dbh->getTopics();
$templateParams["js"] = array("js/choose-topic.js", "js/notification-viewed.js", "utils/functions.js");

if (!isset($_SESSION["topic"])):
    $_SESSION["topic"] = "All";
endif;

if ($_SESSION['topic'] == "All"):
    $templateParams["posts"] = $dbh->getAllPosts();
else:
    $templateParams["posts"] = $dbh->getPostsbyTopic($_SESSION['topic']);
endif;

require("template/base.php");
?>
