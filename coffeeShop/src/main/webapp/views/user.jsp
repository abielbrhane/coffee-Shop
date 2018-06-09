<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="color:Blue">
<security:authorize access="isAuthenticated()">
   User Name: <security:authentication property="principal.username" /> 
</security:authorize>

</div>
 <br>
	
	
	   <a href="<c:url value="/logout" />">logout </a>
	   <br>
	     <br>
	     <h1>Welcome ${userData.firstName} ${userData.lastName}</h1> 
	   	
	
	<a href="<c:url value="/user/profile" />">Your Profile</a><br>
	<a href="<c:url value="/spring-flow" />">Order here </a> <br>

</body>
</html>