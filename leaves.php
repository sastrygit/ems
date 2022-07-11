
<?php

$date=$_POST["dt"];
$yr=date('Y',strtotime($date));
$mt=date('F',strtotime($date));

echo $date.$mt.$yr;
?>
<center>

<h3><u>Employee Details </u></h3>
<table border=1 width="70%" align="center">
<tr>

<th>EName</th>
<th>Leaves</th>
<th></th>
<th>Desired Month :<?php echo $mt; ?></th>
</tr>

<?php
echo "<body style='background-color:lightgreen'>";
$con=mysqli_connect("localhost","gowthamidb","Chinnu@1","ems");
if($con->connect_error)
{
die("Connection Failed:".$con->connect_error);
}
$sql= "SELECT ename,lops from leaves where month='$mt'&& year='$yr'";
$result=$con->query($sql);

if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
	echo"<tr><td>".$row["ename"]."</td><td>".$row["lops"]."</td></tr>";
}
}
else{
echo "0 result";
}
$conn->close();
?>
</table>
