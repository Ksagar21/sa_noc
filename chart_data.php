<?php
header('Content-Type: application/json');

require_once('lit_up_data.php');

$sqlQuery = "SELECT id,package FROM lit_up_data ORDER BY id";

$result = mysqli_query($conn,$sqlQuery);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

mysqli_close($conn);

echo json_encode($data);
?>



<!DOCTYPE html>
<html>
<head>
<title>Creating Dynamic Data Graph using PHP and Chart.js</title>
<style type="text/css">
BODY {
    width: 550PX;
}

#chart-container {
    width: 100%;
    height: auto;
}
</style>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/Chart.min.js"></script>


</head>
<body>
    <div id="chart-container">
        <canvas id="graphCanvas"></canvas>
    </div>

    <script>
        $(document).ready(function () {
            showGraph();
        });


        function showGraph()
        {
            {
                $.post("data.php",
                function (data)
                {
                    console.log(data);
                     var name = [];
                    var marks = [];

                    for (var i in data) {
                        name.push(data[i].package);
                        marks.push(data[i].id);
                    }

                    var chartdata = {
                        labels: name,
                        datasets: [
                            {
                                label: 'Student Marks',
                                backgroundColor: '#49e2ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: marks
                            }
                        ]
                    };

                    var graphTarget = $("#graphCanvas");

                    var barGraph = new Chart(graphTarget, {
                        type: 'bar',
                        data: chartdata
                    });
                });
            }
        }
        </script>

</body>
</html> -->























<?php
    //address of the server where db is installed
    $servername = 'localhost:3306';
    //username to connect to the db
    //the default value is root
    $username = 'root';
    //password to connect to the db
    //this is the value you would have specified during installation of WAMP stack
    $password = '';
    //name of the db under which the table is created
    $dbName = 'test_db';
    //establishing the connection to the db.
    $conn = new mysqli($servername, $username, $password, $dbName);
    //checking if there were any error during the last connection attempt
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    //the SQL query to be executed
    $query = 'SELECT date,package FROM lit_up_data';
    //storing the result of the executed query
    $result = $conn->query($query);
    //initialize the array to store the processed data
    $jsonArray = array();
    //check if there is any data returned by the SQL Query
    if ($result->num_rows > 0) {
      //Converting the results into an associative array
      while($row = $result->fetch_assoc()) {
        $jsonArrayItem = array();
        $jsonArrayItem['value'] = $row['date'];
        $jsonArrayItem['value'] = $row['package'];
        //append the above created object into the main array.
        array_push($jsonArray, $jsonArrayItem);
      }
    }
    //Closing the connection to DB
    $conn->close();
    //set the response content type as JSON
    header('Content-type: application/json');
    //output the return value of json encode using the echo function.
    echo json_encode($jsonArray);



 
?> 



var apiChart = new FusionCharts({
  type: "column2d",
  renderAt: "api-chart-container",
  width: "550",
  height: "350",
  dataFormat: "json",
  dataSource: {
    chart: chartProperties,
    data: chartData
  }
});
$(function() {
  $("#background-btn").click(function() {
    modifyBackground();
  });

  $("#canvas-btn").click(function() {
    modifyCanvas();
  });

  $("#dataplot-btn").click(function() {
    modifyDataplot();
  });

  apiChart.render();
});

function modifyBackground() {
  //to be implemented
}

function modifyCanvas() {
  //to be implemented
}

function modifyDataplot() {
  //to be implemented
}
-->









<!DOCTYPE html>
<html>
  <head>
    <title>FusionCharts Column 2D Sample</title>
  </head>
  <body>
    <div id="chart-container">FusionCharts will render here</div>
    <script src="js/jquery-2.1.4.js"></script>
    <script src="js/fusioncharts.js"></script>
    <script src="js/fusioncharts.charts.js"></script>
    <script src="js/themes/fusioncharts.theme.zune.js"></script>
    <script src="js/app.js"></script>

  </body>
</html>


