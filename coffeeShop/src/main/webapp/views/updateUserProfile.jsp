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
<title>Profile updater page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>
<div class="navbar navbar-expand-md navbar-dark top bg-light">
        <a class="p-2 text-dark" href="<c:url value="/user/profile" />"> Back </a>
		<span class="navbar-nav mr-auto"></span>
		<div class="form-inline my-2 my-lg-0">
			<security:authorize access="isAuthenticated()">
			   User Name: <security:authentication property="principal.username" />
			</security:authorize>

		</div>
		<a class="p-2 text-dark"
			href="/user/profile/update">Update Profile</a> <br>
		<div class="form-inline my-2 my-lg-0">
			<a class="btn btn-outline-success my-2 my-sm-0"
				href="<c:url value="/logout" />">logout </a>
		</div>
	</div>
	
	<div class="jumbotron">
          
            <h1>Profile update</h1>
            <div class="container">
	
	

	<form:form action="/user/profile/update" method="POST"
		modelAttribute="person">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4">First Name</label> <input type="text" name="firstName"
				value="${userData.firstName}" class="form-control" id="inputEmail4" >
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4">Last Name</label> <input type="text" name="lastName"
				value="${userData.lastName}" class="form-control" id="inputPassword4" >	
			</div>
		</div>
		
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputCity">City</label> <input type="text" name="address.city"
				value="${userData.address.city}" class="form-control">
			</div>
			<div class="form-group col-md-4">
				<label for="inputCity">State</label> <input type="text" name="address.state"
				value="${userData.address.state}" class="form-control">
			</div>
			<div class="form-group col-md-6">
				<label for="inputState">Country</label> <input type="text" name="address.country"
				value="${userData.address.country}" class="form-control">
					
			</div>
			
		</div>
		<div class="form-row">
			
			<div class="form-group col-md-2">
				<label for="inputZip">ZipCode</label> <input type="text" name="address.zipcode"
				value="${userData.address.zipcode}" class="form-control" id="inputZip">
					
			</div>
			<div class="form-group col-md-6">
				<label for="inputState">Phone Number</label> <input type="text" name="phone" value="${userData.phone}" class="form-control">
					
			</div>
		</div>
		
		<button type="submit" class="btn btn-primary" >Update Profile</button>
	</form:form>


	
</div>
</div>
	<a href="<c:url value="/user/profile" />"> Back </a>
</body>
</html>