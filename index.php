<?php
define('main_litup',true);
//include("main_litup.php");

//include("test.php");
?>








<?php 
  session_start();
  
  if (isset($_SESSION['user_id']) && isset($_SESSION['user_email'])) { 
   
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HOME</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
</head>
<body>
	 <div class="d-flex justify-content-center align-items-center flex-column" style="min-height: 60vh;">
	 	<i class="bi bi-person-fill" style="font-size: 14rem"></i>
        <h1 class="text-center display-4" style="margin-top: -60px;font-size: 2rem"><?=$_SESSION['user_full_name']?></h1>
        

		<a href="logout.php" class="btn btn-warning">LOGOUT</a>


	 </div>
</body>
</html>
<?php 
}else {
   header("Location: login.php");
}
 ?>


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

<a href="Dash.php"><button class="button button1">Dash_Board</button></a>
<button class="button button2">DNS</button>
<a href="website.php"><button class="button button1">Website's</button></a>

<!--<a href="chart_data.php"><button class="button button1">Graph</button></a>-->

<a href="count.php"><button class="button button1">Bar</button></a>

<a href="graph1.php"><button class="button button1">Check</button></a>-->



<!--<a href="linux_user.php"><button class="button button1">Linux</button></a>


<!--<a href="main_litup.php"><button class="button button2">🔥LIT_UP🔥 </button></a>-->

<a href="Request.php"><button class="button button1">Check -IP</button></a>


<br><button class="button button2">*</button></center>

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





















<br>
<br>
<br>
<br>
<br>
<br>
<br>
© 2030 SagarKamble, Inc.