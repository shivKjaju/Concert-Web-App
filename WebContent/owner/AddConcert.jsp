<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Bootstrap Library -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!--Library for jQuery Popperjs, JS, This is for the dropdown menu bar-->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>Add Concert</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light bg-light">
	<a class = "navbar-brand">CinemaBros</a>
	<div class = "collapse navbar-collapse">
		<ul class = 'navbar-nav mr-auto'>
			<li class = "nav-item">
				<a class = "nav-link" href="OwnerHomePage.jsp">Home</a>
			</li>
			<li class = "nav-item">
				<a class = "nav-link" href="Login.jsp">Logout</a>
			</li>
		</ul>
	</div>
</nav>
<div class = "container-fluid">
	<div class = "row">
		<div class = "col-md-12">
			<form>
				<div class = "form-group">
					<label for="newBandName">Headliner/Band Name</label>
					<input type = "email" class = "form-control" placeholder="Enter Headliner/Band Name" >
				</div>
				<div class = "form-group">
					<label for="newBandMedia">Band thumbnail,images,videos</label>
					<input type = "file" class = "form-control-file" placeholder="Provide Band's thumbnail, images, videos" >
				</div>
				<div class = "form-group">
					<label for="newBandDesc">Band and Concert Description</label>
					<textarea class = "form-control" id="newBandDesc"rows="4">Enter Band and Concert Description</textarea>
				</div>
				<div class = "form-group">
					<label for="newConcertTime">Concert Start Time</label>
					<input type = "text" class = "form-control" placeholder="Enter Concert Time" >
				</div>
			</form>
			<a class ="btn btn-primary" role="button" href="AddConcertConfirmation.jsp">Submit</a>
			<a class ="btn btn-danger" href="OwnerHomePage.jsp">Cancel</a>
		</div>
	</div>
</div>
</body>
</html>