
<?php  
//export.php  
$connect = mysqli_connect("localhost", "root", "", "test_db");
$output = '';
if(isset($_POST["export"]))
{
 $query = "SELECT * FROM lit_up_data";
 $result = mysqli_query($connect, $query);
 if(mysqli_num_rows($result) > 0)
 {
  $output .= '
   <table class="table" bordered="1">  
                    <tr>  
                         <th>id</th>  
                         <th>date</th>  
                         <th>package</th>  
                         <th>district</th> 
                         <th>taluka</th>   
                         <th>gp_name</th>  
                         <th>ip_address</th>  
                         <th>status</th>  
                         <th>sys_lgd_code</th>
                         <th>device_profile</th>  
                         <th>router_type</th>  
                         <th>reg_created</th>  
                         <th>router_serial</th>  
                         <th>span_id</th>  
                         <th>csc_port</th>  
                         <th>csc_port_ip </th>
                         <th>polling_configuration</th>
                         <th>polling_status</th>
                         <th>litup</th>
                         <th>litup_status</th>
                         <th>remote_at_date</th>
                         <th>remote_at </th>
                         <th>field_engineer_name</th>
                         <th>noc_engineer_name</th>
                         <th>remarks</th>
                         <th>end_time</th>
                    </tr>
                    <th>time</th>
                    </tr>
  ';
  while($row = mysqli_fetch_array($result))
  {
   $output .= '
    <tr>  
                         <td>'.$row["id"].'</td>  
                         <td>'.$row["date"].'</td> 
                         <td>'.$row["package"].'</td>  
                         <td>'.$row["district"].'</td>  
                         <td>'.$row["taluka"].'</td>  
                         <td>'.$row["gp_name"].'</td>  
                         <td>'.$row["ip_address"].'</td>  
                         <td>'.$row["status"].'</td>  
                         <td>'.$row["sys_lgd_code"].'</td>  
                         <td>'.$row["device_profile"].'</td>  
                         <td>'.$row["router_type"].'</td>  
                         <td>'.$row["reg_created"].'</td>  
                         <td>'.$row["router_serial"].'</td>  
                         <td>'.$row["span_id"].'</td>  
                         <td>'.$row["csc_port"].'</td>  
                         <td>'.$row["csc_port_ip"].'</td>  
                         <td>'.$row["polling_configuration"].'</td>  
                         <td>'.$row["polling_status"].'</td>  
                         <td>'.$row["litup"].'</td>  
                         <td>'.$row["litup_status"].'</td>  
                         <td>'.$row["remote_at_date"].'</td>  
                         <td>'.$row["remote_at"].'</td>  
                         <td>'.$row["field_engineer_name"].'</td>  
                         <td>'.$row["noc_engineer_name"].'</td>  
                         <td>'.$row["remarks"].'</td>  
                         <td>'.$row["end_time"].'</td> 
       
                    </tr>
   ';
  }
  $output .= '</table>';
  header('Content-Type: application/xls');
  header('Content-Disposition: attachment; filename=Dashboard_Report.xls');
  echo $output;
 }
}
?>




<br>
    © 2030 SagarKamble, Inc.





















