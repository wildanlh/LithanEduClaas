<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Store</title>
</head>
<body>
	<form:form action="stores" method="post" modelAttribute="store">
		<label>Name</label><br>
		<form:input path="name" type="text" /><br><br>
		
		<label>Phone Number</label><br>
		<form:input path="phone_number" type="text" /><br><br>
		
		<label>Localities</label><br>
		<form:input path="localities" type="text" /><br><br>
		
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>