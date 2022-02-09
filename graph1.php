<










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
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.6.0/dist/chart.min.js"></script>
    <script>
        var grp=[];
    </script>
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
			color: #006600;
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
                    
                    $grp_data = json_encode($rows);

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
               
               <script>

   var var_name= <?php echo $grp_data; ?>;

   grp.push(var_name);


</script>
			</tr>
			<?php
		
		
				}
               
			?>
		</table>
	</section>

    <script>
                console.log(grp);

    // var bar_data_1 = resp.prior_job_titles;
    // var bar_data_result_2 = [];
    // for (var i in bar_data_2)
    // bar_data_result_2.push(i, bar_data_2[i]);
    // //array to grpa data
    // var splti_2 = bar_data_result_2;
    // var brl2 = [];
    // var brd2 = [];
    // temp = [brl2, brd2];
    // splti_2.forEach((v, i) => temp[i % 2].push(v));


    </script>

<canvas id="myChart" width="400" height="400"></canvas>

<script>
const ctx = document.getElementById('myChart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 2, 3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
</script>
</body>

</html> 