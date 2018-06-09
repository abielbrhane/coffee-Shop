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

	<a href="<c:url value="/logout" />"> LogOut </a>
	<br>
	<br>

	<div align="center" style="margin-top: 15px">

		<table border="1">
			<tr>
				<td colspan="10" align="center"><h2>List of Orders</h2></td>
			</tr>
			<tr>
				<td>Customer first Name</td>
				<td>Customer Last Name</td>
				<td>Order Date</td>
				<td>prodctName</td>
				<td>product Type</td>
				<td>Quantity</td>
				<td>product price</td>

			</tr>

			<c:forEach var="order" items="${orders}">
				<c:forEach var="orderLine" items="${order.orderLines}">

					<tr>
						<td align="center">${orderLine.order.person.firstName}</td>
						<td align="center">${orderLine.order.person.lastName}</td>
						<td align="center">${orderLine.order.orderDate}</td>

						<td align="center">${orderLine.product.productName}</td>
						<td align="center">${orderLine.product.productType}</td>
						<td align="center">${orderLine.quantity}</td>

						<td align="center">${orderLine.product.price}</td>


					</tr>
				</c:forEach>
			</c:forEach>

		</table>
	</div>


	<br>


	<a href="<c:url value="/orders/manage" />"> Back </a>


</body>
</html>