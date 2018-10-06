<?php 
session_start();
require 'connection.php';
require 'user.php';

$text = strip_tags($_POST["data"]);
$text = $conn->real_escape_string($_POST["data"]);
$date = date('Y-m-d H:i:s');

	$sql ="insert into posts(userid, post, date) values('".$_SESSION["userid"]."','".$text."','".$date."')";
		$result = $conn->query($sql);
				
echo $_POST['post'];
?> 