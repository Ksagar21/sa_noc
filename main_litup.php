
<!--<?php 
//}else {
  // header("Location: login.php");
//}
 //?>-->
 <!--<?php

//if(!defined("main_litup")){
//exit("Access Denied");
//}
?>-->




<?php 
  session_start();
  
  if (isset($_SESSION['user_id']) && isset($_SESSION['user_email'])) { 
   
?>

<?php 
}else {
   header("Location: login.php");
}
 ?>



<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>
</head>
<body>

<div class="topnav">
  <a class="active" href="index.php">Home</a>
  
  
    </form>
  </div>
</div>

<div style="padding-left:16px">
 
</div>

</body>
</html>


<!DOCTYPE html>
<html>
<head>
<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<center><h1>Package Buttons  
<br>
<br>
<br>

<br>



<p id="test.php"></p>


<a href="test.php"><button class="button" style="vertical-align:middle"><span>Package A </span></button></a>
<a href="test.php"><button class="button" style="vertical-align:middle"><span>Package B </span></button></a>
<a href="test.php"><button class="button" style="vertical-align:middle"><span>Package C </span></button></a>
<br>

<br><br>
<br>



"Select the Package"</h1>


</center>
</body>
</html>





<!DOCTYPE html>
<html>
<head>
<style>
body  {
  background-image: url("main_background.jpg");
  background-color: #cccccc;
}
</style>
</head>
<body>



</body>
</html>


© 2030 SagarKamble, Inc.