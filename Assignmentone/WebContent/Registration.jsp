<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here</title>
<script>
function validateForm() {
    var x = document.forms["registerForm"]["userName"].value;
    var y = document.forms["registerForm"]["password"].value;
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
<h2> Registration Page</h2>

<!-- Registration Form -->
<form name=registerForm action=Registration
onsubmit="return validateForm()" method="post">
User Name:<input type=text name=userName><br>
Email Id:<input type=text name=emailId><br>
Password:<input type=text name=password><br>
<input type=submit value=Register><br> 

</form>
<br>
<br>

</body>
</html>