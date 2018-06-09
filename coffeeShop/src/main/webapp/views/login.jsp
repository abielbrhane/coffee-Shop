<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>

	<center>
		
		<div class="text-center mb-4">
        <h2>Signup Details</h2>
      </div>
		<form class="form-signin" action="login" method="post">
			
			<div class="col-sm-4">
				<div class="form-label-group">
					<input type="email" id="inputEmail" class="form-control"
						placeholder="Email address" name="username" required="required">
					<label for="inputEmail">Email address</label>
				</div>

				<div class="form-label-group">
					<input type="password" id="inputPassword" class="form-control"
						placeholder="Password" required="required" name="password"> <label
						for="inputPassword">Password</label>
				</div>
			
			
			<div>

				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>

			</div>
			</div>
		</form>
	</center>
</body>
</html>

