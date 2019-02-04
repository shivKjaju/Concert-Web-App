<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<section>
	<h2>Headliner</h2>
	<p>Mike Shinoda</p>
</section>
<section>
	<h2>Band Description</h2>
	<p>Linkin Park is an American rock band from Agoura Hills, California. Formed in 1996, the band rose to international fame with their debut album Hybrid Theory (2000), which was certified Diamond by the RIAA in 2005, and multi-Platinum in several other countries</p>
</section>
<section>
	 <h2>Work from the Band</h2>
	 <ul>
	  <li>One more light</li>
	  <li>The Hunting Party</li>
	  <li>Living Things</li>
     </ul> 
     <img src="../images/mike.jpg" height=500 width=800></img>
</section>

<section>
	<h2>Start Time</h2>
	<p>
	The concert starts at 5:00pm
	</p>
</section>

<section>
	<h2>Prices</h2>
	<p>
	Price of each seat is $60 dollars
	</p>
</section>

<section>
	<h2>Availability</h2>
	<p>
	Seats available currently 10
	</p>
</section>

<section>
<span class="heading">Overall using Rating</span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<p>5 average based on 10 user reviews</p>
</section>

<section>
<!-- <p style="text-align: left">John<span style="text-float:right">12/7/2016</span></style> -->
<p>John &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 12/7/2016 &nbsp&nbsp&nbsp
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span><br>
<span class="heading">Review: Great Band!</span><br>
</p>
</section>

</body>
</html>