<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
table{
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr: {
  background-color: #dddddd;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-inverse">
 	<div class="container-fluid">
 		<ul class="nav navbar-nav">
 			<li class="active"><a href="ViewOrders.jsp">Go back</a></li>
 		</ul>
 		 <ul class="nav navbar-nav navbar-right">	
 			<li><a href="Login.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>	
 		</ul>
 	</div>
</nav>	

<h1>Your results </h1>
<table>
<tr>
	<th>Concert Name</th>
	<th>Venue</th>
	<th>Start Time</th>
	<th>Available seats</th>
	<th>Price</th>
	<th>Opening Acts </th>
	<th>Band Logo</th>
</tr>
<tr>
	<td>Trance</td>
	<td>Pinnacle Bank Arena</td>
	<td>5:00pm</td>
	<td>10</td>
	<td>$60</td>
	<td>None</td>
	<td><img src="../images/linkin_park.jpg" border=3 height=100 width=100></img></td>
	<td><a href="ConcertDetailsSelection.jsp"> View Details</a></td>
</tr>
<tr>
	<td>Backstreet Boys</td>
	<td>Lied Center</td>
	<td>7:00pm</td>
	<td>40</td>
	<td>$80</td>
	<td>None</td>
	<td><img src="../images/backstreet.jpg" border=3 height=100 width=100></img></td>
	<td><a href="ConcertDetailsSelection.jsp"> View Details</a></td>
</tr>

</table>
</body>
</html>
