<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile updated successfully</title>
</head>
<body>	
		<h1>${userData.email} profile is updated successfully</h1>
		
		<form:form action="/user/profile" method="GET" modelAttribute="product">
		<input type="submit" name="submit" value="End"/>
		
		</form:form>
		
</body>
</html>