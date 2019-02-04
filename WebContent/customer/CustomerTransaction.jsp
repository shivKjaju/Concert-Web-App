<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Transaction</title>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-inverse">
 	<div class="container-fluid">
 	    <ul class="nav navbar-nav">
 			<li class="active"><a href="ViewOrders.jsp">View your orders</a></li>
 		</ul>
 		<ul class="nav navbar-nav navbar-right">	
 			<li><a href="Login.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>	
 		</ul>
 	</div>
</nav>
<h2>Your Order</h2>
<ul>
	<li>Band name:Linkin Park</li>
	<li>Ticket quantity: 1</li>
	<li>Total Price: $60</li>
	<li>Pinnacle Bank Arena</li>
	<strong>Your total: $60</strong>
</ul>
<div class="container">
<div class="row">
<div class="span12">
<form class="form-horizontal span6">
<div class="control-group">
<label class="control-label">Card Holder's Name</label>
<div class="controls">
              <input type="text" class="input-block-level" pattern="\w+ \w+.*" title="Fill your first and last name" required>
            </div>
</div>

<div class="control-group">
<label class="control-label">Card Number</label>
 <div class="controls">
              <div class="row-fluid">
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="First four digits" required>
                </div>
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Second four digits" required>
                </div>
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Third four digits" required>
                </div>
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Fourth four digits" required>
                </div>
              </div>
            </div>
</div>

<div class="control-group">
<label class="control-label">Card Expiry Date</label>
  <div class="controls">
              <div class="row-fluid">
                <div class="span9">
                  <select class="input-block-level">
                    <option>January</option>
                    <option>...</option>
                    <option>December</option>
                  </select>
                </div>
                <div class="span3">
                  <select class="input-block-level">
                    <option>2013</option>
                    <option>...</option>
                    <option>2015</option>
                  </select>
                </div>
              </div>
            </div>
          </div>
</div>

<div class="control-group">
<label class="control-label">CVV</label>
<div class="controls">
<div class="row-fluid">
<div class="span3">
<input type="text" class="input-block-level" autocomplete="off" maxlength="3" pattern="\d{3}" title="Three digits at back of your card" required>
</div>
                <div class="span8"></div>

</div>

</div>


</div>
<form action="CustomerTransactionConfirmation.jsp">
    <input type="submit" value="Confirm Payment" />
</form>
<form action="ViewAndCheckoutShoppingCart.jsp">
	<input type="submit" value="cancel" />
</form>
</form>
</div>
</div>
</div>


</body>
</html>