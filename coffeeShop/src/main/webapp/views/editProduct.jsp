<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Management Page</title>
</head>
<body>
<h1>Product Management</h1>

<a href="<c:url value="/products/list" />">List of Products</a> <br>
<a href="<c:url value="/product/create" />">create Product</a> <br>
<a href="<c:url value="/product/delete" />">Remove product</a> <br>
<br>
<a href="<c:url value="/admin" />"> Back </a>

</body>
</html>