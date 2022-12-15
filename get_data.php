<?php
$date1 = date("Y-m-d", strtotime($_POST['date_from']));
//$date2 = date("Y-m-d", strtotime($_POST['date2']));
$conn = new mysqli("localhost", "root", "", "ems");
if(!$conn){
	die("Fatal Error: Connection Error!");
}
	
$q_book = $conn->query("SELECT * FROM `events` WHERE `start_event` BETWEEN '$date1'  ORDER BY `end_event` ASC") or die(mysqli_error());
$v_book = $q_book->num_rows;
if($v_book > 0){
	while($f_book = $q_book->fetch_array()){
	?>
	<tr>
		<td><?php echo $f_book['title']?></td>
		<td><?php echo $f_book['start_event']?></td>
		<td><?php echo $f_book['end_event']?></td>
		
	</tr>
	<?php
	}
}else{
		echo '
		<tr>
			<td colspan = "4"><center>Record Not Found</center></td>
		</tr>
		';
}
	?>