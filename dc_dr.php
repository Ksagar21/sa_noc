
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
$sql = "SELECT * FROM dc_dr  ";
$result = $mysqli->query($sql);
$mysqli->close();
?>



<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Package DC_DR ISP Details</title>
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
		<h1>PACKAGE DC_DR</h1>
		<!-- TABLE CONSTRUCTION-->
		<table>
			<tr>





			<th>S_N</th>
				<th>Customer Name</th>
				<th>RA Number </th>
                <th>CRM Order ID</th>
                <th>Service No</th>
                <th>Logical Circuit ID</th>
                <th>Circuit Description</th>
                <th>Location_</th>
                <th>Bandwidth</th>
                <th>Gateway IP</th>
                <th>Customer End IP</th>
                <th>WAN IP Subnet Mask</th>
				<th>LAN IP</th>
				<th>Acceptance Date</th>



				<!--<th>SN</th>
				<th>Location</th>
				<th>ISP</th>
				<th>ILL_Bandwidth</th>
				<th>CE_IP</th>
				<th>Netmask</th>
				<th>Default Gateway</th>
				<th>Logical Circuit ID</th>
				<th>Address</th>-->
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result->fetch_assoc())

				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
					
					<td><?php echo $rows['S_N'];?></td>
				<td><?php echo $rows['Customer_Name'];?></td>
				<td><?php echo $rows['RA_Number'];?></td>
				<td><?php echo $rows['CRM_Order_ID'];?></td>
				<td><?php echo $rows['Service_No'];?></td>
				<td><?php echo $rows['Logical_Circuit_ID'];?></td>
				<td><?php echo $rows['Circuit_Description'];?></td>
				<td><?php echo $rows['Location_'];?></td>
				<td><?php echo $rows['Bandwidth'];?></td>
                <td><?php echo $rows['Gateway_IP'];?></td>
                <td><?php echo $rows['Customer_End_IP'];?></td>
                <td><?php echo $rows['WAN_IP_Subnet_Mask'];?></td>
                <td><?php echo $rows['LAN_IP'];?></td>
                <td><?php echo $rows['Acceptance_Date'];?></td>








				<!--<td><?php echo $rows['SN'];?></td>
				<td><?php echo $rows['Location'];?></td>
				<td><?php echo $rows['ISP'];?></td>
				<td><?php echo $rows['ILL_Bandwidth'];?></td>
				<td><?php echo $rows['CE_IP'];?></td>
				<td><?php echo $rows['Netmask'];?></td>
				<td><?php echo $rows['Default Gateway'];?></td>
				<td><?php echo $rows['Logical Circuit ID'];?></td>
				<td><?php echo $rows['Address'];?></td>-->
			</tr>
			<?php
		
		
		}
			?>
		</table>
	</section>
</body>

</html>


<br>
<br>
    © 2030 SagarKamble, Inc.