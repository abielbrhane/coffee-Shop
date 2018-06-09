<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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
		<span class="navbar-nav mr-auto"></span>
		<div class="form-inline my-2 my-lg-0">
			<security:authorize access="isAuthenticated()">
			   User Name: <security:authentication property="principal.username" />
			</security:authorize>

		</div>
		<a class="p-2 text-dark" href="<c:url value="/user/profile" />">Your
			Profile</a><br> <a class="p-2 text-dark"
			href="<c:url value="/spring-flow" />">Order here </a> <br>
		<div class="form-inline my-2 my-lg-0">
			<a class="btn btn-outline-success my-2 my-sm-0"
				href="<c:url value="/logout" />">logout </a>
		</div>
	</div>

	<div
		class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-4">Welcome ${userData.firstName}
			${userData.lastName}</h1>
	</div>


</body>
</html>