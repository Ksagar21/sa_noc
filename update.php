
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




<html>
<head>
<title> Updation  </title>

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

<body>
 

<center><h1> Updation of LIT UP Data  </h1>

<form action="update.php" method="POST">
    <center>
    <input type="text" name="id" placeholder="Enter Id_Date"/>  <br/> 
    <input type="text" name="package" placeholder="Enter Package"/>
    <input type="text" name="district" placeholder="Enter District"<br/> 
    <input type="text" name="taluka" placeholder="Enter Taluka"/>
    <input type="text" name="gp_name" placeholder="Enter GP_Name"/><br/> 
    <input type="text" name="ip_address" placeholder="Enter IP_Address"/>
    <input type="text" name="status" placeholder="Enter Status"/><br/>
    <input type="text" name="system_loc" placeholder="Enter System Loc"/>
    <input type="text" name="device" placeholder="Enter Device Profile"/><br/>
    <input type="text" name="reg" placeholder="Enter Reg Created"/>
    <input type="text" name="last_discovered" placeholder="Enter Last Discovered"><br/>
    <input type="text" name="snmp" placeholder="Enter SNMP Agent"/>
    <input type="text" name="span" placeholder="Enter Span ID"/><br/>
    <input type="text" name="ad" placeholder="Enter AD"/>
    <input type="text" name="csc" placeholder="Enter CSC Services"/><br/>
    <input type="text" name="privilege" placeholder="Enter Privilege 15 Command"/>
    <input type="text" name="lit_up" placeholder="Enter Lit_up "/><br/>
    <input type="text" name="noc_engineer" placeholder="Enter NOC_Engineer_Name"/><br/>

    <br/>
    <input type="submit" name="insert" value="INSERT DATA"/><br/> </center>

    
</form> </center> </body>  </html>

<?php
$connection = mysqli_connect("localhost","root","");
$db = mysqli_select_db($connection,'test_db');

if(isset($_POST['insert']))
{

    $id = $_POST["id"];

// get the post records
$txtDate = $_POST['txtDate'];
$txtPackage = $_POST['txtPackage'];
$txtDistrict = $_POST['txtDistrict'];
$txtTaluka = $_POST['txtTaluka'];
$txtGP_Name = $_POST['txtGP_Name'];
$txtIP_address = $_POST['IP_address'];
$txtStatus = $_POST['txtStatus'];
$txtSystem_loc = $_POST['System_loc'];
$txtDevice = $_POST['txtDevice'];
$txtReg = $_POST['txtReg'];
$txtLast_discovered = $_POST['txtLast_discovered'];
$txtSnmp = $_POST['txtSnmp'];
$txtSpan = $_POST['txtSpan'];
$txtAd = $_POST['txtAd'];
$txtCsc = $_POST['txtCsc'];
$txtPrivilege = $_POST['txtPrivilege'];
$txtLit_up = $_POST['txtLit_up'];
$txtNoc_engineer = $_POST['txtNoc_engineer'];

// database insert SQL code

$sql = "INSERT INTO `lit_up_data`(`id`, `package`, `district`, `taluka`, `gp_name`, `ip_address`, `status`, `system_loc`, `device`, `reg`, `last_discovered`, `snmp`, `span`, `ad`, `csc`, `privilege`, `lit_up`, `noc_engineer`) VALUES ('$txtDate','$txtPackage','$txtDistrict','$txtTaluka','$txtGP_Name','$IP_address','$txtStatus','$System_loc','$txtDevice','$txtReg','$txtLast_discovered','$txtSnmp','$txtSpan','$txtAd','$txtCsc','$txtPrivilege','$txtLit_up','$txtNoc_engineer')";


    $query = "insert 'lit_up_data' SET package='$_POST[package]',
    district='$_POST[district]',taluka='$_POST[taluka]',
    gp_name='$_POST[gp_name]',ip_address='$_POST[ip_address]',
    status='$_POST[status]',system_loc='$_POST[system_loc]',
    device='$_POST[device]',reg='$_POST[reg]',
    last_discovered='$_POST[last_discovered]',snmp='$_POST[snmp]',
    span='$_POST[span]',ad='$_POST[ad]',
    csc='$_POST[csc]',privilege='$_POST[privilege]',
    lit_up='$_POST[lit_up]',noc_engineer='$_POST[noc_engineer]'
    where id='$_POST[id]";

    $query_run = mysqli_query($connection,$query);

    if($query_run)
    {
        echo 'script type="text/javascript"> alert("Data Updated") </script>';
    }
    else
    {
        echo 'script type="text/javascript"> alert("Data NOT Updated") </script>';
    }


}

?>


<br>
    © 2030 SagarKamble, Inc.