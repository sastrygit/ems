<center>
<h3><u>Employee Details</u><br><br>
<table border=1 width=80%>
<tr>
<th>EmpID</th>
<th>EName</th>
<th>Dept</th>
<th>Desig</th>
</tr>
<?php

echo "<body style='background-color:lightgreen'>";
$con=mysqli_connect("localhost","gowthamidb","Chinnu@1","ems");
if($con->connect_error)
{
die("Connection Failed:".$con->connect_error);
}
$sql= "SELECT empid,ename,dept,desig from emp";
$result=$con->query($sql);

if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
	echo"<tr><td>".$row["empid"]."</td><td>".$row["ename"]."</td><td>".$row["dept"]."</td><td>".$row["desig"]."</td></tr>";
}
}
else{
echo "0 result";
}
$conn->close();
?>
</table>
