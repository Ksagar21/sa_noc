
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
$sql = "SELECT * FROM lit_up_data ";
$result = $mysqli->query($sql);
$mysqli->close();
?>



<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<center><title>LIT UP DATA DETAILS</title></center>
	<h1><span>-----------------------      NETWORK OPERATION CENTER       ----------------------</span></h1>
            <ul>
	<!-- CSS FOR STYLING THE PAGE -->
	<style>
		table {
			margin: 0 auto;
			font-size: small;
			border: 0.5px solid black;
		}
		

		h1 {
			text-align: center;
			color: #00660s0;
			font-size: large;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
		}

		td {
			background-color: #DCDCDC;
			border: 0.5px solid black;
		}

		th,
		td {
			font-weight: bold;
			border: 1px solid black;
			padding: 1px;
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
  <a class="active" href="test.php">Home</a>
  <a class="inactive" button onclick="window.print()">Print This Page</button></a>

  <form method="post" action="export.php">
  <a class="inactive" method="post" class="btn btn-success" button type = "submit" button action="export.php" value="Export to Excel" </a>
    </form>

	<form method="post" action="export.php">
     <input type="submit" name="export" class="btn btn-success" value="Export to Excel" />
    </form>


<!--<div class="btn-group export-button">

<div class="btn-group">
<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" href="#" title="Export">
<i class="icon-export"></i>
<span class="visible-lg-inline">Export</span>
<span class="caret"></span>
</a>

<ul class="dropdown-menu">
											<li><a href="NMS_Nodes.php?operation=epdf" target="_blank">
	<i class="icon-export-pdf"></i>
	Export to Pdf
</a></li>
															<li><a href="export2excel.php?operation=eexcel">
	<i class="icon-export-excel"></i>
	Export to Excel
</a></li>
															<li><a href="export2excel.php?operation=eword">
	<i class="icon-export-word"></i>
	Export to Word
</a></li>
															<li><a href="export2excel.php?operation=exml">
	<i class="icon-export-xml"></i>
	Export to Xml
</a></li>
															<li><a href="export2excel.php?operation=ecsv">
	<i class="icon-export-csv"></i>
	Export to Csv
</a></li>
																	</ul>
</div>-->
  
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
		<h1>LIT UP DATA DETAILS</h1>
		<!-- TABLE CONSTRUCTION-->
		<table>
			<tr>
				<th>id</th>
				<th>date</th>
				<th>package</th>
				<th>district</th>
				<th>taluka</th>
				<th>gp_name</th>
				<th>ip_address</th>
				<th>status </th>
				<th>sys_lgd_code</th>
				<th>device_profile</th>
                <th>router_type</th>
                <th>reg_created</th>
                <th>router_serial</th>
                <th>span_id</th>
                <th>csc_port</th>
                <th>csc_port_ip</th>
                <th>polling_status</th>
                <th>polling_configuration</th>
                <th>litup</th>
				<th>litup_status</th>
				<th>remote_at_date</th>
				<th>remote_at</th>
				<th>field_engineer_name</th>
				<th>noc_engineer_name</th>
				<th>remarks</th>
				<th>end_time</th>


			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result->fetch_assoc())

				{
			?>



			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td><?php echo $rows['id'];?></td>
				<td><?php echo $rows['date'];?></td>
				<td><?php echo $rows['package'];?></td>
				<td><?php echo $rows['district'];?></td>
				<td><?php echo $rows['taluka'];?></td>
				<td><?php echo $rows['gp_name'];?></td>
				<td><?php echo $rows['ip_address'];?></td>
				<td><?php echo $rows['status'];?></td>
				<td><?php echo $rows['sys_lgd_code'];?></td>
				<td><?php echo $rows['device_profile'];?></td>
                <td><?php echo $rows['router_type'];?></td>
                <td><?php echo $rows['reg_created'];?></td>
                <td><?php echo $rows['router_serial'];?></td>
                <td><?php echo $rows['span_id'];?></td>
                <td><?php echo $rows['csc_port'];?></td>
                <td><?php echo $rows['csc_port_ip'];?></td>
                <td><?php echo $rows['polling_status'];?></td>
                <td><?php echo $rows['polling_configuration'];?></td>
                <td><?php echo $rows['litup'];?></td>
				<td><?php echo $rows['litup_status'];?></td>
				<td><?php echo $rows['remote_at_date'];?></td>
				<td><?php echo $rows['remote_at'];?></td>
				<td><?php echo $rows['field_engineer_name'];?></td>
				<td><?php echo $rows['noc_engineer_name'];?></td>
				<td><?php echo $rows['remarks'];?></td>
				<td><?php echo $rows['end_time'];?></td>
				
			</tr>
			<?php
		
		
				}
			?>
		</table>
	</section>
</body>

</html> 







© 2030 SagarKamble, Inc.























