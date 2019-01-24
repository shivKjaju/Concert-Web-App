<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<script>
function validateForm() {
    var x = document.forms["userForm"]["userName"].value;
    var y = document.forms["userForm"]["password"].value;
    if (x == "") {
        alert("Username must be filled out");
        return false;
    }
    
    if (y == "") {
        alert("Password must be filled out");
        return false;
    }
}
</script>
</head>
<body>
<h2> Login Page </h2>


<!-- Actual Form -->
<form name="userForm" action=Login
      onsubmit="return validateForm()" method="post">
User Name: <input type=text  name=userName><br>
Password: <input type=text  name=password><br>
<input type=submit value=Login><br>
</form>


<!-- Navigation link = Registration Page -->
<a href="Registration.jsp">New user? click here</a><br>

</body>
</html>