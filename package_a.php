<!DOCTYPE html>
<html>
<head>
<title>Table with database</title>
<style>
table {
border-collapse: collapse;
width: 100%;
color: #588c7e;
font-family: monospace;
font-size: 25px;
text-align: left;
}
th {
background-color: #588c7e;
color: white;
}
tr:nth-child(even) {background-color: #f2f2f2}
</style>
</head>
<body>
<table>
<tr>
<th>SN</th> <th>Location</th> <th>ISP</th> <th>ILL_Bandwidth/th> <th>CE IP</th> <th>Netmask</th> <th>Default Gateway</th> <th>Logical Circuit ID</th>
<th>Address</th>
</tr>
<?php
$conn = mysqli_connect("localhost", "root", "", "test_db");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT SN, Location, ISP, ILL_Bandwidth, CE IP, Netmask, Default Gateway, Logical Circuit ID, Address FROM package_a";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) 
{
echo 

    "<tr><td>"   $row["SN"] "</td><td>" $row["Location"] 
    "</td><td>" $row["ISP"]         "</td></tr>" "<tr><td>"  $row["ILL_Bandwidth"]  "</td><td>"  
    "<tr><td>"  $row["CE_IP"]       "</td><td>" "<tr><td>"  $row["Netmask"]  "</td><td>" 
    "<tr><td>"  $row["Default Gateway"] "</td><td>"  "<tr><td>"  $row["Logical Circuit ID"] "</td><td>"  
    "<tr><td>"  $row["Address"]"</td><td>" ;
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>
</body>
</html>