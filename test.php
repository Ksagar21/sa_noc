
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
  <a class="inactive" button onclick="window.print()">Print This Page</button></a>
  <leftcornor><a href="logout.php" class="btn btn-warning">Logout ❌</a></leftcornor>
  
    </form>
  </div>
</div>

<div style="padding-left:16px">
 
</div>

</body>
</html>





<?php
    $con = mysqli_connect("localhost","root","") ;
    mysqli_select_db($con, 'test_db');
?>




<!DOCTYPE html>
<html>
<head>
<title>LIT UP Page</title>
<link rel="stylesheet" href="css/style.css">





<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous">
</script>


<script>
$( document ).ready(function() {
    document.getElementById("dateandtime").blur();
    getdatefun();
});

function getdatefun()
{

var weekday=new Array(7);

weekday[0]="Sunday";
weekday[1]="Monday";
weekday[2]="Tuesday";
weekday[3]="Wednesday";
weekday[4]="Thursday";
weekday[5]="Friday";
weekday[6]="Saturday";

var currentdate = new Date();
var n = weekday[currentdate.getDay()];

    var datetime =            
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
                //+ currentdate.getDate() + "/"
               // + (currentdate.getMonth()+1)  + "/" 
               // + currentdate.getFullYear();
                
//var fnl=datetime +" "+ n;
var fnl=datetime;

$("#dateandtime").val(fnl);

}

</script>







<style>
        body{

            background-color: whitesmoke ;
        }

      input{

    width: 40%;
    height: 5%;
    border: 1px;
    border-radius: 05px;
    padding: 8px 15px 8px 15px;
    margin: 10px 0px 15px 0px ;
    box-shadow: 1px 1px 2px 1px grey ;
      }  

</style>
</head>

<body style="background-color:#bdc3c7">
    <div id="main-wrapper">
        <center><h2>Litup Updation</h2>
     
       <!-- <svg width="1000" height="250">
    <rect width="150" height="150" fill="orange" >
        <animate attributeName="x" from="0" to="300"
      dur="10s" fill="freeze" repeatCount="2"  /> 
    </rect>
</svg>-->






        </center>
        <hr>
<center>
    <form class="myform" action="test.php" method="post">
    
<ul>
    <label><small> Start Time: </small></label>
    <input name="id"  id="dateandtime" class="inputvalues blurTextbox" required readonly/><br>

    <label><small>Date              .  :</small></label>
    <input name="date"  type="date" class="inputvalues blurTextbox" required /><br>
    
    <br>
    <label><small>Package:  </small></label>
    <input name="package" type="text" class="inputvalues" placeholder="Enter Package" required/>
        
        
        <label><small>District  :  </small></label>
        <input name="district" type="text" class="inputvalues" placeholder="Enter District" required/>

        
        <br>  
        <label><small>Taluka    :</small></label>
        <input name="taluka" type="text" class="inputvalues" placeholder="Enter Taluka" required/>

        
        <label><small>GP-Name:</small></label>
        <input name="gp_name" type="text" class="inputvalues" placeholder="Enter GP_Name" required/>

        
        <br><label><small>IP Address:</small></label>
        <input name="ip_address" type="text" class="inputvalues" placeholder="Enter IP_Address" required/>

        
        <label><small>Status:</small></label>
        <input name="status" type="text" class="inputvalues" placeholder="Enter Status (Planned / Unplanned )" 
        required/>

                
        <br><label><small>LGD Code:</small></label>
        <input name="sys_lgd_code" type="text" class="inputvalues" placeholder="Enter sys_lgd_code" required/>

        
        <label><small>Device Profile:</small></label>
        <input name="device_profile" type="text" class="inputvalues" placeholder="Enter Device_Profile" required/>

        
        <br><label><small>Router Type:</small></label>
        <input name="router_type" type="text" class="inputvalues" placeholder="Enter Router_Type ( Type 1, 2, 4, NCS Series)" required/>

        
        <label><small>Reg-Created:</small></label>
        <input name="reg_created" type="text" class="inputvalues" placeholder="Enter Reg_Created (Present Date)" required/>

        
        <br><label><small>Router Serial:</small></label>
        <input name="router_serial" type="text" class="inputvalues" placeholder="Enter Router Serial  Number" required/>
    

        <label><small>Span ID:</small></label>
        <input name="span_id" type="text" class="inputvalues" placeholder="Enter Span_ID" required/>

        
        <br> <label><small>CSC Port:</small></label>
        <input name="csc_port" type="text" class="inputvalues" placeholder="Enter CSC_Port (Gi0/0/6) " required/>


        <label><small>CSC Port IP:</small></label>
        <input name="csc_port_ip" type="text" class="inputvalues" placeholder="Enter CSC_Port_IP" required/>

        
        <br><label><small>Polling Config :</small></label>
        <input name="polling_configuration" type="text" class="inputvalues" placeholder="Enter polling_configuration (YES / NO)" required/>

        
        <label><small>Polling Status:</small></label>
        <input name="polling_status" type="text" class="inputvalues" placeholder="Enter Polling_Status (YES / NO)" required/>


        <br><label><small>Litup Done:</small></label>
        <input name="litup" type="text" class="inputvalues" placeholder="Enter Litup (YES / NO)" required/>

        
        <label><small>Litup_Status:</small></label>
        <input name="litup_status" type="text" class="inputvalues" placeholder="Enter Litup_Status (SEQUENTIAL / LOGICAL)" required />
            

        <br><label><small>AT_Date:</small></label>
        <input name="remote_at_date" type="date" class="inputvalues" placeholder="Enter Remote_AT_Date (Present Date)" required/>

        <label><small>Remote_AT:</small></label>
        <input name="remote_at" type="text" class="inputvalues" placeholder="Enter Remote_AT (YES / NO)" required/>

        
        <br><label><small>Field_Engg:</small></label>
        <input name="field_engineer_name" type="text" class="inputvalues" placeholder="Enter Field_Engineer_Name" required/>


        <label><small>NOC_Engg:</small></label>
        <input name="noc_engineer_name" type="text" class="inputvalues" placeholder="Enter NOC_Engineer_Name" required/>

<br>
        <br><label><small>Remarks:</small></label>
        <input name="remarks" type="text" class="inputvalues" placeholder="Enter Remarks (Mention all the reason and on call details/problems/issues/updates/etc)" required/><br>

        <br> <label><small>End_Time:</small></label>
        <input name="end_time" type="text" class="inputvalues" placeholder="Enter End_Time" required/><br>
    
    </ul>
        
        <input name="submit_btn" type="submit" id="signup_btn" value="Insert Data 👍"/>
        <a href="index.php"><input type="button" id="back_btn" value="Back👈🏻"/></a><br>
        <a href="lit_up_data.php"><input type="button" id="back_btn" value=" 👀 Search 🧐 "/></a>
        <a href="export2excel.php"><input type="button" id="back_btn" value=" 📩 Export ⏳"/></a>
    </form></center>

    <?php
        if(isset($_POST['submit_btn']))
        {
            //echo '<script type="text/javascript"> alert("Sign Up button clicked") </script>';

            $id	 = $_POST['id'];
            $date = $_POST['date'];
            $package = $_POST['package'];
            $district = $_POST['district'];
            $taluka = $_POST['taluka'];
            $gp_name = $_POST['gp_name'];
            $ip_address = $_POST['ip_address'];
            $status = $_POST['status'];
            $sys_lgd_code = $_POST['sys_lgd_code'];
            $device_profile = $_POST['device_profile'];
            $router_type = $_POST['router_type'];
            $reg_created = $_POST['reg_created'];
            $router_serial = $_POST['router_serial'];
            $span_id = $_POST['span_id'];
            $csc_port = $_POST['csc_port'];
            $csc_port_ip = $_POST['csc_port_ip'];
            $polling_status = $_POST['polling_status'];
            $polling_configuration = $_POST['polling_configuration'];
            $litup = $_POST['litup'];
            $litup_status = $_POST['litup_status'];
            $remote_at_date = $_POST['remote_at_date'];
            $remote_at = $_POST['remote_at'];
            $field_engineer_name = $_POST['field_engineer_name'];
            $noc_engineer_name = $_POST['noc_engineer_name'];
            $remarks = $_POST['remarks'];
            $end_time = $_POST['end_time'];
           

            
			
			if($package==$package)
			{
				$query= "SELECT * FROM lit_up_data WHERE id='$id'";
				$query_run = mysqli_query($con, $query);
				
				if(mysqli_num_rows($query_run)>1)
				{
					// there is already a user with the same username
					echo '<script type="text/javascript"> alert("Data is not inserted.Try again") </script>';
				}
				else
				{
					$query= "INSERT INTO lit_up_data VALUES('$id','$date','$package','$district',' $taluka','$gp_name','$ip_address','$status','$sys_lgd_code','$device_profile','$router_type','$reg_created','$router_serial','$span_id','$csc_port','$csc_port_ip','$polling_status','$polling_configuration','$litup','$litup_status','$remote_at_date','$remote_at','$field_engineer_name','$noc_engineer_name','$remarks','$end_time')";
					$query_run = mysqli_query($con, $query);
					
					if($query_run)
					{
						echo '<script type="text/javascript"> alert(" Data Input Done Successfully..") </script>';
					}
					else
					{
						echo '<script type="text/javascript"> alert("Incomplete data!") </script>';
					}
				}
			}
			else{
				echo '<script type="text/javascript"> alert("Does Not Match!") </script>';
			}
    }

    ?>
</div>

</body>

</html>



© 2021 SagarKamble, Inc.






<!--<?php
//define('MYSITE',true);
//if(!defined('MYSITE')){
  
 // die();
//}
?>-->
