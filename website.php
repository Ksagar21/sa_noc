<?php 
session_start();

if (isset($_SESSION['user_id']) && isset($_SESSION['user_email'])) { 
 
?>

<?php 
}else {
 header("Location: login.php");
}
?>









<?php

// Username is root
$user = 'root';
$password = '';

// Database name is gfg
$database = 'test_db';

// Server is localhost with
// port number 3308
$servername='localhost:3306';
$mysqli = new mysqli($servername, $user,
				$password, $database);

// Checking for connections
if ($mysqli->connect_error) {
	die('Connect Error (' .
	$mysqli->connect_errno . ') '.
	$mysqli->connect_error);
}

// SQL query to select data from database
$sql = "SELECT * FROM website_all  ";
$result = $mysqli->query($sql);
$mysqli->close();
?>



<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>ALL Website Details</title>
	<!-- CSS FOR STYLING THE PAGE -->
	<style>
		table {
			margin: 0 auto;
			font-size: large;
			border: 1px solid black;
		}

		h1 {
			text-align: center;
			color: #006600;
			font-size: x-large;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
		}

		td {
			background-color: #E4F5D4;
			border: 1px solid black;
		}

		th,
		td {
			font-weight: bold;
			border: 1px solid black;
			padding: 5px;
			text-align: center;
		}

		td {
			font-weight: lighter;
		}
	</style>
</head>




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
  <a class="inactive" button onclick="window.print()">Print This Page</button></a>
 
    </form>
  </div>
</div>

<div style="padding-left:16px">
 
</div>

</body>
</html>





<!-- PHP CODE FOR DATABASE DATA CONTTAINING WEBSITE DETAILS-->



<body>
	<section>
		<h1>WEBSITE DATA</h1>
		<!-- TABLE CONSTRUCTION-->
		<table>
			<tr>
				<th>SN</th>
				<th>Name</th>
				<th>Address</th>
				<th>Abbreviations</th>
				
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result->fetch_assoc())

				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td><?php echo $rows['SN'];?></td>
				<td><?php echo $rows['Name'];?></td>
				<td><?php echo $rows['Address'];?></td>
				<td><?php echo $rows['Abbreviations'];?></td>
				
			</tr>
			<?php
		
		
		}
			?>
		</table>
	</section>
</body>

</html>






<!DOCTYPE html>
<html>
<body>


<center><img src="\secure-login-system-php\images\NOC Services.jpg" alt="Workplace" usemap="#workmap" width="400" height="379"></center>



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


<!DOCTYPE html>
<html>
<head>
<style>
.button {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 14px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

</style>
</head>
<body>


<center>
<a href="http://nmsqadbp1.mahait.com/nnm/"><button class="button button1">NMS</button></a>
<a href="http://10.9.54.11/SM/index.do"><button class="button button1">SM</button></a>
<a href="http://10.9.54.15/topaz/login.jsp"><button class="button button1">OBM</button></a>
<a href="http://10.9.55.13:8080/AssetManager/cwc/aclogin.jsp?redirect=true"><button class="button button1">AM</button></a>
<a href="http://10.9.55.24:8081/nnmnew/NMS_Nodes.php"><button class="button button1">Node(NMS)</button></a>
<a href="https://nmsnetautdb1.mahait.com/statistics.dashboard.htm"><button class="button button1">NA</button></a>
<a href="https://my.microfocus.com/signin"><button class="button button1">Micro Focus</button></a>



</center>

</body>
</html>












© 2030 SagarKamble, Inc.