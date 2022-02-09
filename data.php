<?php

//data.php

$connect = new PDO("mysql:host=localhost;dbname=test_db", "root", "");

if(isset($_POST["action"]))
{
	if($_POST["action"] == 'insert')
	{
		$data = array(
			':package'		=>	$_POST["package"]
		);

		$query = "
		INSERT INTO lit_up_data
		(package) VALUES (:package)
		";

		$statement = $connect->prepare($query);

		$statement->execute($data);

		echo 'done';
	}

	if($_POST["action"] == 'fetch')
	{
		$query = "
		SELECT language, COUNT(survey_id) AS Total 
		FROM lit_up_data 
		GROUP BY package
		";

		$result = $connect->query($query);

		$data = array();

		foreach($result as $row)
		{
			$data[] = array(
				'package'		=>	$row["package"],
				'total'			=>	$row["Total"],
				'color'			=>	'#' . rand(100000, 999999) . ''
			);
		}

		echo json_encode($data);
	}
}


?>
