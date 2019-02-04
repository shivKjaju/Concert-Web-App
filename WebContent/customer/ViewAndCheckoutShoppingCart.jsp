<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
</head>
<body>
<nav class="navbar navbar-inverse">
 	<div class="container-fluid">
 		<ul class="nav navbar-nav">
 			<li class="active"><a href="CustomerHomePage.jsp">Home</a></li>	
 		</ul>
 		<ul class="nav navbar-nav navbar-right">
 			<li><a href="Login.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
 		</ul>
 	</div>
 </nav>		
<h2>Your shopping list</h2>
<div class="container">
<table id = "cart" class="tbale tbale-hover tbale-condensed">
<thead>
<tr>
	<th style="width:20%">Band</th>
	<th style="width:20%">Thumbnail</th>
	<th style="width:20%">Showtime and Date</th>
	<th style="width:20%">Number of tickets</th>
	<th style="width:40%">Subtotal</th>
</tr>
</thead>
<tbody>
<tr>
<td data-th="Band">
	<div class = "row">
	<div class="col-sm-10">
	<h5 class="nomargin">Linkin Park</h5>
	</div>
	</div>
</td>	
<td data-th="Thumbnail"><img src="../images/linkin_park.jpg" border=3 height=50 width=50></img></td>
<td data-th="Showtime and Date">5:00pm Date:12/7/2016</td>
<td data-th="Number of tickets"><input type="number" class="form-control text-center" value="1"></td>
<td data-th="Subtotal" class="text-center">$60</td>
<td class="actions" data-th="">
<button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
</td>
</tr>
</tbody>
<tfoot>
<tr class="visible-xs">
	<td class="text-center"><strong>Total $60</strong></td>
</tr>
<tr>
<td colspan="2" class="hidden-xs"></td>
<td class="hidden-xs text-center"><strong>Total $60.00</strong></td>
<td><a href="CustomerTransaction.jsp" class="btn btn-success btn-block">Checkout<i class="fa fa-angel-right"></i></a></td>	
</tr>
</tfoot>
</table>
</div>
</body>
</html>