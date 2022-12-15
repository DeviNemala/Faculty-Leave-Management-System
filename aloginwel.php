<?php 
require_once ('process/dbh.php');
$sql = "SELECT id, firstName, lastName,  points FROM employee, rank WHERE rank.eid = employee.id order by rank.points desc";
$result = mysqli_query($conn, $sql);
require_once ('process/dbh.php');

//$sql = "SELECT * from `employee_leave`";
$sql = "Select employee.id, employee.firstName, employee.lastName, employee_leave.start, employee_leave.end, employee_leave.reason, employee_leave.status,employee_leave.faculty, employee_leave.token From employee, employee_leave Where employee.id = employee_leave.id order by employee_leave.token";

//echo "$sql";
$result = mysqli_query($conn, $sql);


include 'coonnect_test_db.php';
$searchErr = '';
$employee_details='';
if(isset($_POST['save']))
{
    if(!empty($_POST['search']))
    {
        $search = $_POST['search'];
        $stmt = $con->prepare("SELECT * FROM `events` WHERE '$search'>=start_event AND '$search'<=end_event ");
        $stmt->execute();
        $employee_details = $stmt->fetchAll(PDO::FETCH_ASSOC);
        //print_r($employee_details);
        
    }
    else
    {
        $searchErr = "Please enter the information";
    }
   
}

   
?>


<html>
<head>
	<title>Admin Panel | Faculty Leave System</title>
	<link rel="stylesheet" type="text/css" href="styleemplogin.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.min.js"></script>
  <script>
   
  $(document).ready(function() {
   var calendar = $('#calendar').fullCalendar({
    editable:true,
    header:{
     left:'prev,next today',
     center:'title',
     right:'month,agendaWeek,agendaDay'
    },
    events: 'calender/load.php',
    selectable:true,
    selectHelper:true,
    select: function(start, end, allDay)
    {
     var title = prompt("Enter Event Title");
     if(title)
     {
      var start = $.fullCalendar.formatDate(start, "Y-MM-DD HH:mm:ss");
      var end = $.fullCalendar.formatDate(end, "Y-MM-DD HH:mm:ss");
      $.ajax({
       url:"calender/insert.php",
       type:"POST",
       data:{title:title, start:start, end:end},
       success:function()
       {
        calendar.fullCalendar('refetchEvents');
        alert("Added Successfully");
       }
      })
     }
    },
    editable:true,
    eventResize:function(event)
    {
     var start = $.fullCalendar.formatDate(event.start, "Y-MM-DD HH:mm:ss");
     var end = $.fullCalendar.formatDate(event.end, "Y-MM-DD HH:mm:ss");
     var title = event.title;
     var id = event.id;
     $.ajax({
      url:"calender/update.php",
      type:"POST",
      data:{title:title, start:start, end:end, id:id},
      success:function(){
       calendar.fullCalendar('refetchEvents');
       alert('Event Update');
      }
     })
    },

    eventDrop:function(event)
    {
     var start = $.fullCalendar.formatDate(event.start, "Y-MM-DD HH:mm:ss");
     var end = $.fullCalendar.formatDate(event.end, "Y-MM-DD HH:mm:ss");
     var title = event.title;
     var id = event.id;
     $.ajax({
      url:"calender/update.php",
      type:"POST",
      data:{title:title, start:start, end:end, id:id},
      success:function()
      {
       calendar.fullCalendar('refetchEvents');
       alert("Event Updated");
      }
     });
    },

    eventClick:function(event)
    {
     if(confirm("Are you sure you want to remove it?"))
     {
      var id = event.id;
      $.ajax({
       url:"calender/delete.php",
       type:"POST",
       data:{id:id},
       success:function()
       {
        calendar.fullCalendar('refetchEvents');
        alert("Event Removed");
       }
      })
     }
    },

   });
  });
   
  </script>
</head>
<body>
	
	<header>
		<nav>
			<h1>Faculty Leave System</h1>
			<ul id="navli">
				<li><a class="homered" href="aloginwel.php">HOME</a></li>
				<li><a class="homeblack" href="addemp.php">Add Faculty</a></li>
				<li><a class="homeblack" href="viewemp.php">View Faculty</a></li>
				<li><a class="homeblack" href="search2.php">Search Faculty</a></li>
				
				<li><a class="homeblack" href="empleave.php">Faculty Leave</a></li>
				<li><a class="homeblack" href="alogin.html">Log Out</a></li>
			</ul>
		</nav>
	</header>
	 
	<div class="divider"></div>
	<div id="divimg">
		<h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Faculty status </h2>
    	<table>

			<!--<tr bgcolor="#000">
				<th align = "center">Seq.</th>
				<th align = "center">Emp. ID</th>
				<th align = "center">Name</th>
				
				

			</tr>-->

			
<br />
  <h2 align="center">Faculty status calender</h2>
  <br />
  <div class="container">
   <div id="calendar"></div>
			
		
		
	</div>
  <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Search Results</h2>
  <div  style="text-align: center;" ><form method="post" action="#">
   <div>
      <label align = "center">Set Date To Search</label>
      <input align = "center" class="input--style-1" type="date" placeholder="end" name="search">
   </div>
   
   
   <button style="display: inline-block;float: right; margin-right: 40%;" type="submit" name="save">Search</button>

   <div class="form-group" class="col-sm-2">
            <span align = "center" class="error" style="color:red;">* <?php echo $searchErr;?></span>
        </div>
</form></div>
<br/><br/>

    <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Search Results</h2>
    <div class="table-responsive">          
      <table class="table">
        <thead>
      <tr>
        <th align = "center">#</th>
        <th align = "center">Faculty Name</th>
        <th align = "center">Start Date</th>
        <th align = "center">End Date</th>
        
        <th align = "center">Faculty Assaigned</th>
       </tr>
        </thead>
        <tbody>

      <?php
                 if(!$employee_details)
                 {
                    echo '<tr center >No data found</tr>';
                 }
                 else{
                    foreach($employee_details as $key=>$value)
                    {  while ($employee = mysqli_fetch_assoc($result)) {
                                     
                           
                        ?>


                    <tr>
                        <td><?php echo $key+1;?></td>
                        <td><?php echo $value['title'];?></td>
                        <td><?php echo $value['start_event'];?></td>
                        <td><?php echo $value['end_event'];?></td>
                         <td><?php echo $value['facass'];?></td>

                    </tr>
                        
                        <?php
                    }
                    
                 }
               }
                ?>
            
         </tbody>

    </table>

</body>
</html>