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
<title>Insert title here</title>
</head>
<body>
<h1>Remove product</h1>
		<a href="<c:url value="/logout" />"> LogOut </a> 
		<br> 
		
		<form:form action="/product/delete" method="POST" modelAttribute="id">		
		<p>Enter Product Id:<input type="text" name="id"></p>		
		<input type="submit" value="Remove Product" >	
		</form:form>
		
		
		<a href="<c:url value="/products/manage" />"> Back </a>

</body>
</html>