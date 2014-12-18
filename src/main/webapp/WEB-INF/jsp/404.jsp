<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>404 - Resource not found!</title>
</head>
<body>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
	<div class="container">
		<div class="row">
			<h2 class="panel-title"><spring:message code="page.login.notfound.text" /></h2>
			<h3 class="panel-title"><spring:message code="page.login.notfound.message" /></h3>
			
		</div>
	</div>
    </tiles:putAttribute>
</tiles:insertDefinition>
</body>
</html>