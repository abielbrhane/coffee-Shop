<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>
	
	<center>
		<h2>Signup Details</h2>
		<form class="form-horizontal" action="login" method="post">
			<br />
			<div class="col-sm-5">
				Username:<input class="form-control" id="inputEmail3"
					placeholder="Email" type="text" name="username"> <br />
			</div>
			<div class="col-sm-5">
				Password:<input class="form-control" id="inputPassword3"
					placeholder="Password" type="password" name="password"> <br />
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Sign in</button>
				</div>
			</div>
		</form>
	</center>
</body>
</html>

