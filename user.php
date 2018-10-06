<?php
require 'connection.php';
class user{
	var $_firstName;
	var $_lastName;
	var $_email;
	var $_userid;

	function __construct($email, $mysqli){
		$sql="select * from users  join profile on userid=profileid where email='".$email."'";
			$result = $mysqli->query($sql);


		if ($result->num_rows > 0) {
		    $row = $result->fetch_assoc();
			

			$this->_firstName=$row["fname"];
			$this->_lastName=$row["lname"];
			$this->_email=$row["email"];
			$this->_userid=$row["userID"];

		}

else{
	 printf("Errormessage: %s\n", $mysqli->error);
	}
}

function getUserId($postid, $mysqli)
{
		$sql="select userid from posts where postid='".$postid."'";
			$result = $mysqli->query($sql);
			    $row = $result->fetch_assoc();
			   
			return $row["userid"];
		
	
}

function countLikes($postid, $mysqli)
{
		$sql="select count(postid) as cnt from likes where postid='".$postid."'";
			$result = $mysqli->query($sql);
			    $row = $result->fetch_assoc();
			   
			return $row["cnt"];
		
	
}




	


}
