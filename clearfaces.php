

<?php

echo "<body style='background-color:lightgreen'>";


$con=mysqli_connect("localhost","gowthamidb","Chinnu@1","ems");
if($con->connect_error)
{
die("Connection Failed:".$con->connect_error);
}

$sql="TRUNCATE TABLE recogface";
if(mysqli_query($con,$sql))
{
	echo "<pre>




</pre><center>RECORDS DELETED SUCCESSFULLY";
}
$con->close();
?>



