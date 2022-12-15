<?php

//insert.php




$connect = new PDO('mysql:host=localhost;dbname=ems', 'root', '');
$con=mysqli_connect("localhost","root","","ems");

$start = $_GET['start'];
$end = $_GET['end'];
$faculty2= $_GET['Name1'];
$faculty1= $_GET['Name2'];
$status=$_GET['status'];
$result = $faculty1 . $faculty2 . $status;
$id = $_GET['id'];
$facass = $_GET['facass'];
//$days = $_GET['days'];


 $query = "
 INSERT INTO events 
 (title, start_event, end_event,facass) 
 VALUES ('$result', '$start', '$end','$facass')
 ";
 $result=mysqli_query($con,$query);
 // $statement = $connect->prepare($query);
 // $statement->execute(
 //  array(
 //   'title'  => $faculty,
 //   'start_event' => $start,
 //   'end_event' => $end
 //  )
 // );
header("Location:..//empleave.php");
?>


?>
