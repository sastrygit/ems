
<?php

//$date=$_POST["dt"];
$date='2021-07-06';
$yr=date('Y',strtotime($date));
$mt=date('F',strtotime($date));

?>
<center>
<h3><u>Employee Details </u></h3>
<table border=1 width="70%" align="center">
<tr>

<th>EMPID</th>
<th>Basic Pay</th>
<th>Take Home</th>
<th>DA</th>
<th>HRA</th>
<th>PF</th>
<th>Allowance</th>
<th>Deduction</th>
<th>Gross</th>
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
$sql= "SELECT * from salary where month='$mt'&& year='$yr'";
$result=$con->query($sql);

if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
	echo"<tr><td>".$row["empid"]."</td><td>".$row["basic"]."</td><td>".$row["netsalary"]."</td><td>".$row["da"]."</td><td>".$row["hra"]."</td><td>".$row["pf"]."</td><td>".$row["allow"]."</td><td>".$row["ded"]."</td><td>".$row["gross"]."</td></tr>";
}
}
else{
echo "0 result";
}
$conn->close();
?>
</table>
