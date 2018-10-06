<?php 
session_start();
require "connection.php";
require 'user.php';




if(isset($_POST["like"]))
{
	$post=$_POST["like"];
$sql = "insert into likes (userid, postid) values ('".$_SESSION["userid"]."','".$post."')";
	$result = $conn->query($sql);

	$sql="select count(postid) as cnt from likes where postid='".$post."'";

}

	$sql="select count(postid) as cnt from likes where postid='".$post."'";
			$result = $conn->query($sql);
			    $row = $result->fetch_assoc();
			   
			echo $row["cnt"];

?>