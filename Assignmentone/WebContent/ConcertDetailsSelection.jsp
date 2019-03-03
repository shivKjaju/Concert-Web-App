<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Concert Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.checked {
  color: orange;
}
</style>
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
</head>
<body>
<nav class="navbar navbar-inverse">
 	<div class="container-fluid">
 		<ul class="nav navbar-nav">
 			<li class="active"><a href="CustomerHomePage.jsp">Home</a></li>
 		    <li><a href="ConcertSearchResults.jsp">Back</a></li>	
 		</ul>
 		 <ul class="nav navbar-nav navbar-right">	
 			<li><a href="ViewAndCheckoutShoppingCart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>Shopping Cart</a></li>	
 		</ul>
 	</div>
 </nav>		
 
<h1>Concert Details</h1>
 <table>

<thead>
<tr>
	<th>Concert Name</th>
	<th>Band Detail</th>
	<th>Venue name</th>
	<th>Available Seats</th>
	<th>Rating</th>
	<th>Type of Seats</th>
	<th>Review</th>
	<th>Price</th>
	<th>Quantity</th>
	<th>Add Review</th>
</tr>
</thead>
<tbody>
	<tr>
	<th class="text-center"><c:out value="${csrBean.bandName }"/></th>
	<th class="text-center"><c:out value="${csrBean.desc }"/></th>
	<th class="text-center"><c:out value="${csrBean.venueName }"/></th>
	<th class="text-center"><c:out value="${csrBean.availableSeats }"/></th>
	<th class="text-center"><c:out value="${csrBean.rating }"/></th>
	<th class="text-center"><c:out value="${csrBean.typeOfSeats}"/></th>
	<th class="text-center"><c:out value="${csrBean.review}"/></th>
	<th class="text-center"><c:out value="${csrBean.price}"/></th>
	<th class="text-center">
		<form action="UpdateShoppingCart" method="post">
			<input type="hidden" name="concertName" value="${csrBean.bandName }">
			<input type="hidden" name="description" value="${csrBean.desc  }">
			<input type="hidden" name="venueName" value="${csrBean.venueName  }">
			<input type="hidden" name="availableSeats" value="${csrBean.availableSeats  }">
			<input type="hidden" name="rating" value="${csrBean.rating}">
			<input type="hidden" name="typeOfSeats" value="${csrBean.typeOfSeats }">
			<input type="hidden" name="review" value="${csrBean.review}">
			<input type="hidden" name="price" value="${csrBean.price}">
			<input type="text" name="qty" value=>
			<input type="hidden" name="removeCart" value="">
			<input type="submit" class="btn btn-primary" value="Add to Cart">
		</form>
	</th>
	<th class="text-center">
		<form action="CustomerReview.jsp" method="post">
			<input type="hidden" name="concertName" value="${csrBean.bandName }">
			<input type="hidden" name="description" value="${csrBean.desc  }">
			<input type="hidden" name="venueName" value="${csrBean.venueName  }">
			<input type="hidden" name="availableSeats" value="${csrBean.availableSeats  }">
			<input type="hidden" name="rating" value="${csrBean.rating}">
			<input type="hidden" name="typeOfSeats" value="${csrBean.typeOfSeats }">
			<input type="hidden" name="review" value="${csrBean.review}">
			<input type="hidden" name="delete" value="delete">
			<input type="submit" class="btn btn-primary" value="Add Review">
		</form>
	</th>
	</tr>
</tbody>
</table>
</body>
</html>