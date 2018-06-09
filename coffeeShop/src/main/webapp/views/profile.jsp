<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="color:blue"> User Name: <security:authentication property="principal.username" /> </div>
	<h1>Profile page</h1> 
	
	<a href="<c:url value="/logout" />">logout </a>
	
	<div style="color:blue">
	<p>First Name: ${person.firstName}</p>
	<p>Last Name: ${person.lastName}</p>
	<p>email: ${person.email}</p>
	<p>Phone: ${person.phone}</p>
	<p>City: ${person.address.city}</p>
	<p>Country: ${person.address.country}</p>
	<p>State: ${person.address.state}</p>
	<p>ZipCode: ${person.address.zipcode}</p>
	
	</div>
		
		<br>
		<br>
	<a href="/user/profile/update">Update Profile</a>
	<br>
	<br>
	<a href="/user">Back</a>

</body>
</html>