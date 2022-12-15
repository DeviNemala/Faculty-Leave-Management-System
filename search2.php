<?php
include 'coonnect_test_db.php';
$searchErr = '';
$employee_details='';
if(isset($_POST['save']))
{
    if(!empty($_POST['search']))
    {
        $search = $_POST['search'];
        $stmt = $con->prepare("SELECT * FROM `employee` where lastName like '%$search%' or dept like '%$search%'");
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
	<title>Search Emply |  Admin Panel | Faculty Leave System</title>
	<link rel="stylesheet" type="text/css" href="styleview.css">
    <style type="text/css">
        .fun
        {
            padding:5px;
            width:20%;
        }
    </style>
</head>
<body>
	<header>
		<nav>
			<h1>Faculty Leave System</h1>
			<ul id="navli">
				<li><a class="homeblack" href="aloginwel.php">HOME</a></li>
				<li><a class="homeblack" href="addemp.php">Add Faculty</a></li>
				<li><a class="homeblack" href="viewemp.php">View Faculty</a></li>
				<li><a class="homered" href="search1.php">Search Faculty</a></li>

                <li><a class="homeblack" href="empleave.php">Faculty Leave</a></li>
				<li><a class="homeblack" href="alogin.html">Log Out</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="divider"></div>
	<div class="container">
    <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Search Faculty Status</h2>
    <br/><br/>
    
    <form class="form-horizontal" action="#" method="post">
    <div class="row">
        <div class="form-group">
            <center><label class="control-label col-sm-4" for="email"><b>Search Faculty Information:</b>:</label></br></br></center>
            <div class="col-sm-4">
                <center>
              <input class="fun" style="outline-color: rgba(form-group);"type="text" class="form-control" name="search" placeholder="search here"></center></br>
            </div>
            <div class="col-sm-2">
              <center><button type="submit" name="save" class="btn btn-success btn-sm">Submit</button></center>
            </div>
        </div>
        <center>
        <div class="form-group" class="col-sm-2">
            <span class="error" style="color:red;">* <?php echo $searchErr;?></span>
        </div>
        </center>
    </div>
    </form>
    <br/><br/>
    <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Search Results</h2>
    <div class="table-responsive">          
      <table class="table">
        <thead>
			<tr>

				<th align = "center">#</th>
				<th align = "center">Faculty Name</th>
				<th align = "center">Phone No</th>
				<th align = "center">Email</th>
				<th align = "center">Department</th>
				
				
				<th align = "center">Status</th>
			</tr>
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
                    {
                        ?>
                    <tr>
                        <td><?php echo $key+1;?></td>
                        <td><?php echo $value['lastName'];?></td>
                        <td><?php echo $value['contact'];?></td>
                        <td><?php echo $value['email'];?></td>
                        <td><?php echo $value['dept'];?></td>
                    </tr>
                        
                        <?php
                    }
                    
                 }
                ?>
            
         </tbody>

		</table>
		
	
</body>
</html>