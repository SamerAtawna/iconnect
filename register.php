<?php
require 'connection.php';



if(isset($_POST['fname']) && isset($_FILES["image"]) )
{



$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email = $_POST['email'];
$pass = $_POST['password'];
$sql = "insert into users(email, password) values('".$email."','".$pass."')";
 $last_id = $conn->insert_id;


      $file_name = $_FILES['image']['name'];
      $file_size =$_FILES['image']['size'];
      $file_tmp =$_FILES['image']['tmp_name'];
      $file_type=$_FILES['image']['type'];
       $file_ext=strtolower(end(explode('.',$_FILES['image']['name'])));
  
$file_name_new = "1";

     
      


}

if ($conn->query($sql) === TRUE) {
	 $last_id = $conn->insert_id;
    echo "New record created successfully".$last_id;
}
    move_uploaded_file($file_tmp,"img/profileimg/".$last_id.".".$file_ext);
         echo "Success Upload";
  $sql1 = "insert into profile(fname, lname, profileid) values('".$fname."','".$lname."','".$last_id."')";
if ($conn->query($sql1) === TRUE) {
	 $last_id = $conn->insert_id;
    echo "New record created successfully";
}

$conn->close();
    ?>
