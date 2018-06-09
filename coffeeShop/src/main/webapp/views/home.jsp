<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>
	<div class="navbar navbar-expand-md navbar-dark fixed-top bg-dark"><span class="navbar-nav mr-auto"></span>
	<div class="form-inline my-2 my-lg-0"><a class="btn btn-outline-success my-2 my-sm-0" href="<c:url value="/login" />"> Login </a></div>
	</div>
	<div class="jumbotron"><h2>List of products</h2></div>
	
	<table class="table table-striped">
		<tr>
			<td>Product Name</td>
			<td>Product Type</td>
			<td>Price</td>
			<td>Description</td>

		</tr>

		<c:forEach var="product" items="${products}">

			<tr>
				<td>${product.productName}</td>
				<td>${product.productType}</td>
				<td>${product.price}</td>
				<td>${product.description}</td>

			</tr>
		</c:forEach>
	</table>
	<br>

</body>
</html>