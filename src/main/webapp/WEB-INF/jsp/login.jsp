<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<h3 class="panel-title">Please sign in</h3>

			<c:if test="${not empty error}">
				<div class="alert">
					Username or password invalid!!
					<br />
				</div>
			</c:if>
			<form action="<c:url value="/j_spring_security_check"/>"
				method="post">
				<fieldset>
					<div class="form-group">
						<input class="form-control" placeholder="User Name"
							name='username' type="text">
					</div>

					<div class="form-group">
						<input class="form-control" placeholder="Password"
							name='password' type="password" value="">
					</div>

					<input class="btn btn-lg btn-success btn-block" type="submit"
						value="Login">

				</fieldset>
			</form>
		</div>
	</div>

</body>
</html>