<?php
require 'connection.php';
require 'user.php';
session_start();

$email = $_POST["email1"];
$password = $_POST["password1"];


$sql = "select * from users where email='".$email."' and password='".$password."'";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    
    $row = $result->fetch_assoc();


 $usr = new user($email, $conn);

       $_SESSION["email"] = $usr->_email;
         $_SESSION["fname"] = $usr->_firstName;
           $_SESSION["lname"] = $usr->_lastName;
             $_SESSION["userid"] = $usr->_userid;


}
else if($result->num_rows == 0){

   header('Location: index.html');

   die();       
}
function is_rtl( $string ) {
    $rtl_chars_pattern = '/[\x{0590}-\x{05ff}\x{0600}-\x{06ff}]/u';
    return preg_match($rtl_chars_pattern, $string);
}


// Start the session

?>

<script>

            function post() {
                $.ajax({
                    type: "POST",

                    url: "post.php",
                    data: {
                        data: $("#post").val()
                    },
                    cache: false,
                    datatype: "html",
                    success: function() {
                       alert("POSTED!");
                    },
                    error: function(xhr, desc, err) {
                        console.log(xhr);
                        console.log("Details: " + desc + "\nError:" + err);

                    }
                });



            }

</script>
<html>
<head>
    <link rel="stylesheet" href="style/style.css">







    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <script
			  src="https://code.jquery.com/jquery-3.3.1.js"
			  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
			  crossorigin="anonymous"></script>


              <script src="js/javascript.js"></script>
              <link rel="stylesheet" href="style/emojionearea.min.css">
<script type="text/javascript" src="js/emojionearea.min.js"></script>
             
    </head>
<body>
    <div class="top">
        
        
        <span>iConnect</span>&nbsp
        <input type=text id=search onkeyup="search(this.value)"><div id="info">info</div>
        <div class="profile-top">
           <div class="profile-link"><?php echo "<img src=img/profileimg/".$usr->_userid.".jpg> &nbsp&nbsp" .$usr->_firstName." ".$usr->_lastName; ?></div>
                <div class="settings">
                <i class="fas fa-sliders-h"></i>
                </div>
                 <div class="notifications">
                      <i class="far fa-bell"></i>
                </div>
                   <div class="messages">
                      <i class="fas fa-envelope"></i>
                </div>
            
        </div>
    
      
    </div>
          <div class="main">
                    <div class="left">left</div>
                        <div class="center">
                                <div class="sec1">sec1</div>
                                    <div class="sec2">
                                        Whats going on?...<br><br>
                                     <textarea id="post"></textarea><br><button value="" onclick="post()">post</button>
                           
                                     <br>
                                    <?php 
                                    $sql = "select * from posts join users on posts.userid=users.userid join profile on users.userID=profileid order by date desc";
                                    $result = $conn->query($sql);

                               if ($result->num_rows > 0) {
    // output data of each row
                                  while($row = $result->fetch_assoc()) {


                                
                                  if (!preg_match('/[^A-Za-z0-9\s,.;!-_"]/', $row["post"])) {
                                  echo "<div class=post><img src=img/profileimg/".$usr->getUserId($row["postid"], $conn).".jpg><b>".$row["fname"]." ".$row["lname"]."</b> <br><i class=\"far fa-clock\"></i><span>".date("h:i", strtotime($row["date"]))."</span><br>".nl2br(htmlentities($row["post"]))."
                                    <div class='devide'><span id='sp".$row["postid"]."'>".$usr->countLikes($row["postid"], $conn)."</span> <div class='heart'><i class='fas fa-heart'></div></i><hr></div>
                                        <div class='post-reactions'>
                                            <div class='like' onclick='like(".$row["postid"].")'><i class=\"far fa-thumbs-up\"></i>Like</div>
                                            <div class='comment'><i class=\"far fa-comment\"></i>Comment</div>
                                            <div class='share'><i class=\"far fa-share-square\"></i>Share</div>
                                            </div>

                                  </div>";

                                  }
                                  else{
                                echo "<div class=postrtl><img src=img/profileimg/".$usr->getUserId($row["postid"], $conn).".jpg><b>".$row["fname"]." ".$row["lname"]."</b> <br><i class=\"far fa-clock\"></i><span>".date("h:i", strtotime($row["date"]))."</span><br>".nl2br(htmlentities($row["post"]))."
                                    <div class='devide'><span id='sp".$row["postid"]."'>".$usr->countLikes($row["postid"], $conn)."</span> <div class='heart'><i class='fas fa-heart'></div></i><hr></div>
                                        <div class='post-reactionsrtl'>
                                            <div class='like' onclick='like(".$row["postid"].")'><i class=\"far fa-thumbs-up\"></i>Like</div>
                                            <div class='comment'><i class=\"far fa-comment\"></i>Comment</div>
                                            <div class='share'><i class=\"far fa-share-square\"></i>Share</div>
                                            </div>

                                  </div>";

                                  }
                                    
                                   
                                    }
                                }
                                 else {
                                echo "0 results";
                            }
                            $conn->close();




                                    ?>
                                    </div>
                            <div class="sec3">sec</div>
              
                            </div>
                <div class="right">right<form action="kill.php" method="post" > <button type=submit>Kill</button></form></div>
                
                
            </div>
        
    </body>
</html>
