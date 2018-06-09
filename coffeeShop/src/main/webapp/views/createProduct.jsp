<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html > <!-- xmlns:th="http://www.thymeleaf.org" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create new product</title>
</head>
<body>
	<h1>Create new product</h1>
	<a href="<c:url value="/logout" />"> LogOut </a>
	<br>

	<!--<form th:action="@{/product/save}" th:object="${product}" method="POST">

		Product Name: <br /> <input type="text" th:field="*{productName}"
			class="form-control" /> <span th:errors="*{productName}"
			class="text-danger"></span> <br /> Description <br />
		<textArea th:field="*{description}" class="form-control"></textArea>
		<span th:errors="*{description}" class="text-danger"></span> <br />
		Price <br /> <input type="text" th:field="*{price}" class="form-control" /> <span
			th:errors="*{price}" class="text-danger"></span><br /> Type <br />
		<select th:field="*{productType}">
			<option value="">BREAKFAST</option>
			<option value="">DINNER</option>
			<option value="">LUNCH</option>
			<option th:each="proType : ${productTypes}" th:value="${proType}"
				th:utext="${proType}" />
		</select> <span th:errors="*{productType}" class="text-danger"></span><br /> <br />
		<input type="submit" class="Create Product" />
	</form>


	<div th:if="${errorMessage}" th:utext="${errorMessage}"
		style="color: red; font-style: italic;"></div> -->



		<form:form action="/product/save" method="POST" modelAttribute="product">
		
		<p>Product Name: <input type="text" name="productName"></p>
		<p>Description: <textArea rows="10" cols="20" name="description"></textArea></p>
		<p>Price $: <input type="text" name="price"></p>
		<p>Product Type: <input type="text" name="productType" ></p>
		<p> <input type="submit" value="Create Product"></p>
		
		</form:form>



	<a href="<c:url value="/products/manage" />"> Back </a>

</body>
</html>