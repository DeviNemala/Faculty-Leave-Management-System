<?php
//including the database connection file
require_once ('dbh.php');

//getting id of the data from url
$id = $_GET['id'];
//echo $id;
$reason = $_POST['reason'];

$start = $_POST['start'];
//echo "$reason";
$end = $_POST['end'];
$faculty = $_POST['faculty'];
$Name = $_POST['Name'];


$sql = "INSERT INTO `employee_leave`(`id`,`token`, `start`, `end`, `reason`,`faculty`, `status`,`Name`) VALUES ('$id','','$start','$end','$reason','$faculty','Pending','$Name')";

$result = mysqli_query($conn, $sql);

//redirecting to the display page (index.php in our case)
header("Location:..//eloginwel.php?id=$id");
?>

