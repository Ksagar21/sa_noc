
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
$sql = "SELECT * FROM noc_team ";
$result = $mysqli->query($sql);
$mysqli->close();
?>



<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>NOC TEAM DETAILS</title>
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
			font-size: xx-large;
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



<!-- PHP CODE FOR HEADER CONTTAINING HOME AN PRINT BUTTON-->





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
  <a class="active" href="Dash.php">Home</a>
  <a class="inactive" button onclick="window.print()">Print This Page</button></a>
  
    </form>
  </div>
</div>

<div style="padding-left:16px">
 
</div>

</body>
</html>





<!-- PHP CODE FOR DATABASE AND ITS INTEGRATION AND FETCH DATA FROM ROWS-->


<body>
	<section>
		<h1>NOC TEAM DETAILS</h1>
		<!-- TABLE CONSTRUCTION-->
		<table>
			<tr>
				<th>SN</th>
				<th>Name</th>
				<th>Designation</th>			
				<th>Contact Number</th>
				<th>Email </th>
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
				<td><?php echo $rows['Designation'];?></td>
				<td><?php echo $rows['Contact Number'];?></td>
				<td><?php echo $rows['Email'];?></td>
			</tr>
			<?php
		
		
		}
			?>
		</table>
	</section>
</body>

</html>







    © 2030 SagarKamble, Inc.
