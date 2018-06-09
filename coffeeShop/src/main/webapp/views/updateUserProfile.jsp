<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile updater page</title>
</head>
<body>
<h1>Profile update</h1>
		<a href="<c:url value="/logout" />"> LogOut </a> 
				<br> 
		
		
		<form:form action="/user/profile/update" method="POST" modelAttribute="person">
		
		
		<p>First name: <input type="text" name="firstName" value="${userData.firstName}"></p>
		<p>Last name: <input type="text" name="lastName" value="${userData.lastName}" ></p>	
		<p>Phone: <input type="text" name="phone" value="${userData.phone}" ></p>	
		<p>City: <input type="text" name="address.city" value="${userData.address.city}"></p>
		<p>State: <input type="text" name="address.state" value="${userData.address.state}"></p>
		<p>Country: <input type="text" name="address.country" value="${userData.address.country}"></p>
		<p>ZipCode: <input type="text" name="address.zipcode" value="${userData.address.zipcode}"></p>
		<p> <input type="submit" value="Update Profile"></p>
		
		</form:form>

		<a href="<c:url value="/user/profile" />"> Back </a>
</body>
</html>