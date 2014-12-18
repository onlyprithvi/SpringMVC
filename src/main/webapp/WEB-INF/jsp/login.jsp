<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<tiles:insertDefinition name="defaultTemplate">
<tiles:putAttribute name="body">
	<div class="container">
		<div class="row login-form ">
			<h3 class="panel-title"><spring:message code="page.login.signin.text" /></h3>

			<c:if test="${not empty error}">
				<div class="alert">
				<spring:message code="page.login.invalidlogincredential.errormessage" />
					<br />
				</div>
			</c:if>
			<form action="<c:url value="/j_spring_security_check"/>"
				method="post">
				<fieldset>
					<div class="form-group">
						<input class="form-control" placeholder="<spring:message code="page.login.form.username.placeholder" />"
							name='username' type="text">
					</div>

					<div class="form-group">
						<input class="form-control" placeholder="<spring:message code="page.login.form.password.placeholder" />"
							name='password' type="password" value="">
					</div>

					<input style="width: 225px;" class="btn btn-lg btn-success btn-block" type="submit"
						value='<spring:message code="page.login.form.submit.text" />' />

				</fieldset>
			</form>
		</div>
	</div>
</tiles:putAttribute></tiles:insertDefinition>
</body>
</html>