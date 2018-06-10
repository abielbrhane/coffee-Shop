<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.5.0/css/bulma.min.css">
</head>
<body>
	<div class="container is-fluid" align="center" style="margin-top: 15px">
		<h1>Personal Information</h1>
	</div>
	<div class="container is-fluid" align="center" style="margin-top: 15px">
		<form:form class="needs-validation" modelAttribute="order"
			action="${flowExecutionUrl}">

			<table class="col-md-30 order-md-2" width="30%" border="0"
				cellspacing="3" cellpadding="1">


				<tr>
					<td><spring:message code="firstName" /></td>
					<td><form:input type="text" class="form-control"
							path="person.firstName" placeholder="First Name"
							required="required" /></td>
					<td><form:errors path="person.firstName" cssClass="error" /></td>
				</tr>

				<tr>
					<td><spring:message code="lastName" /></td>
					<td><form:input type="text" class="form-control"
							path="person.lastName" placeholder="Last Name"
							required="required" /></td>
					<td><form:errors path="person.lastName" cssClass="error" /></td>
				</tr>
				<tr>
					<td><spring:message code="email" /></td>
					<td><form:input type="text" class="form-control"
							path="person.email" placeholder="Email" required="required" /></td>
					<td><form:errors path="person.email" cssClass="error" /></td>
				</tr>
				<tr>
					<td><spring:message code="phone" /></td>
					<td><form:input type="text" class="form-control"
							path="person.phone" placeholder="Phone" required="required" /></td>
					<td><form:errors path="person.phone" cssClass="error" /></td>
				</tr>
				<tr>

					<td><spring:message code="city" /></td>
					<td><form:input type="text" class="form-control"
							path="person.address.city" placeholder="City" required="required" />
					<td><form:errors path="person.address.city" cssClass="error" /></td>
				</tr>
				<tr>
					<td><spring:message code="state" /></td>
					<td><form:input type="text" class="form-control"
							path="person.address.state" placeholder="State"
							required="required" />
					<td><form:errors path="person.address.state" cssClass="error" /></td>
				</tr>

				<tr>
					<td><spring:message code="country" /></td>
					<td><form:input type="text" class="form-control"
							path="person.address.country" placeholder="Country"
							required="required" />
					<td><form:errors path="person.address.country"
							cssClass="error" /></td>
				</tr>

				<tr>
					<td><spring:message code="zip" /></td>
					<td><form:input type="text" class="form-control"
							path="person.address.zipcode" placeholder="Zipcode"
							required="required" />
					<td><form:errors path="person.address.zipcode"
							cssClass="error" /></td>
				</tr>
			</table>
			<div>
				<table width="20%" border="0" cellspacing="3" cellpadding="1">
					<tr>
						<td>
							<button class="btn btn-primary btn-sm" type="submit" id="next"
								name="_eventId_next">
								<spring:message code="next" />
							</button>
						</td>
						<td>
							<button class="btn btn-secondary btn-sm" type="submit"
								id="cancel" name="_eventId_cancel">
								<spring:message code="cancel" />
							</button>
						</td>
					</tr>
				</table>
			</div>
		</form:form>
	</div>
</body>
</html>