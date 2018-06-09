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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>
<div class="navbar navbar-expand-md navbar-dark top bg-light">
        <a class="p-2 text-dark" href="/user">Back</a>
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
          <div class="col-sm-8 mx-auto">
            <h1>Profile page</h1>
            <div class="container">
  <div class="row">
    <div class="col-sm">
      <p>First Name: </p>
    </div>
    <div class="col-sm">
       <p>${person.firstName}</p>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm">
      <p>Last Name: </p>
    </div>
    <div class="col-sm">
      <p>${person.lastName}</p>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm">
      <p>email: </p>
    </div>
    <div class="col-sm">
     <p>${person.email}</p>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm">
      <p>Phone:</p>
    </div>
    <div class="col-sm">
     <p>${person.phone}</p>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm">
      <p>City: </p>
    </div>
    <div class="col-sm">
     <p>${person.address.city}</p>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm">
      <p>Country: </p>
    </div>
    <div class="col-sm">
     <p>${person.address.country}</p>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm">
      <p>State: </p>
    </div>
    <div class="col-sm">
     <p>${person.address.state}</p>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm">
      <p>ZipCode:</p>
    </div>
    <div class="col-sm">
     <p>${person.address.zipcode}</p>
    </div>
  </div>
</div>
         
		</div>
		</div>
</body>
</html>