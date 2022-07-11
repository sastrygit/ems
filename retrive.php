
<table border=1 width="50%" align="center">
<tr>
<th>Employee ID</th>
<th>Status</th>
</tr>
<?php
echo "<center><b><u><pre>




</pre>Today Attendence Report</b>";

echo "<body style='background-color:lightgreen'>";
$con=mysqli_connect("localhost","gowthamidb","Chinnu@1","ems");
if($con->connect_error)
{
die("Connection Failed:".$con->connect_error);
}

$sql="select distinct(ename),status from attendance where Day=CURDATE()";
$result=$con->query($sql);

if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
	echo"<tr><td>".$row["ename"]."</td><td>".$row["status"]."</td></tr>";
}
}
else {
	
echo "0 result";
}
$conn->close();
?>
</table>

