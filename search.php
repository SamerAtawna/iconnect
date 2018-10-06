<?php 
require 'connection.php';
$data=$_POST["search"];


$sql ="select *  from profile join users on profileid=userid where fname like '%".$data."%' LIMIT 10";

$result = $conn->query($sql);


                               if ($result->num_rows > 0) {
                               	echo "<ul class=infoul>";
    // output data of each row
                                  while($row = $result->fetch_assoc()) {
                                  	echo "<li><img class=searchimg src=img/profileimg/".$row["userID"].".jpg>".$row["fname"]." ".$row["lname"]."</li>";
                                  }
                                  echo "</ul>";
                              }

                              else     if ($result->num_rows == 0) {
                              		echo "No Result...";
                              }


                              ?>
                          