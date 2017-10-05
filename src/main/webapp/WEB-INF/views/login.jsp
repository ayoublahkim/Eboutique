<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="j_spring_security_check" method="post">
	<div class="col-md-4 col-md-offset-4 col-sm-offset-2">
		<div class="panel panel-primary">
			<div class="panel-heading">Authentification</div>
			<div class="panel-body">
				<table>

					<tr>
						<td>Login</td>
						<td><input type="text" name="j_username" class="form-control"></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="j_password"
							class="form-control"></td>
					</tr>
					<tr>
						<td><input type="submit" value="Login"
							class="btn btn-primary"></td>
					</tr>
				</table>
			</div>
		</div>
		</div>
	</form>
</body>
</html>