<!DOCTYPE html>
<html lang = "en">
	<head>
		<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css"/>
		<link rel = "stylesheet" type = "text/css" href = "css/jquery-ui.css"/>
		<meta charset = "UTF-8" name = "viewport" content = "width=device-width, initial-scale=1"/>
	</head>
<body>
	<nav class = "navbar navbar-default">
		<div class = "container-fluid">
			<a href = "https://sourcecodester.com" class = "navbar-brand">Sourcecodester</a>
		</div>
	</nav>
	<div class = "row">
		<div class = "col-md-3"></div>
		<div class = "col-md-6 well">
			<h3 class = "text-primary">Simple Date Range Search Using PHP & Ajax</h3>
			<hr style = "border-top:1px dotted #000;"/>
			<div class = "form-inline">
				<label>Date:</label>
				<input type = "text" class = "form-control" placeholder = "Start"  id = "date1"/>
				<label>To</label>
				<input type = "text" class = "form-control" placeholder = "End"  id = "date2"/>
				<button type = "button" class = "btn btn-primary" id = "btn_search"><span class = "glyphicon glyphicon-search"></span></button> <button type = "button" id = "reset" class = "btn btn-success"><span class = "glyphicon glyphicon-refresh"><span></button>
			</div>
			<br /><br />
			<div class = "table-responsive">	
				<table class = "table table-bordered alert-warning">
					<thead>
						<tr>
							<th style = "width:25%;">ISBN</th>
							<th style = "width:30%;">Title</th>
							<th>Author</th>
							<th style = "width:20%;">Date Published</th>
						</tr>
					</thead>
					<tbody id = "load_data">
						<?php
							$conn = new mysqli("localhost", "root", "", "db_search");
							if(!$conn){
								die("Fatal Error: Connection Error!");
							}
							
							$q_book = $conn->query("SELECT * FROM `book` ORDER BY `title` ASC") or die(mysqli_error());
							while($f_book = $q_book->fetch_array()){
						?>
						<tr>
							<td><?php echo $f_book['ISBN']?></td>
							<td><?php echo $f_book['title']?></td>
							<td><?php echo $f_book['author']?></td>
							<td><?php echo date("m/d/Y", strtotime($f_book['date_published']))?></td>
						</tr>
						<?php
							}
						?>
					</tbody>
				</table>
			</div>	
		</div>
	</div>
</body>
<script src = "js/jquery-3.1.1.js"></script>
<script src = "js/jquery-ui.js"></script>
<script src = "js/ajax.js"></script>
</html>