<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="resources/style/style.css" />"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project404</title>
</head>
<body>
	<tiles:insertDefinition name="defaultTemplate">
		<tiles:putAttribute name="body">

			<div class="wrapper">
				<div class="header" id="top">
					<div class="userlogin">
						<ul>
							<li class="disqus"><a href="recommend" id="sign_up">Sign
									Up</a></li>
							<li class="disqus"><a href="login" id="sign_in">Login</a></li>
						</ul>
					</div>
				</div>

			</div>

			<div id="main_data" align="center">
				<div class="content">
					<div class="productDetailbox">
						<img src="<c:url value="resources/images/banner.png" />"
							height="200" width="200">
						<div class="buttonholderView">
							<a href="?reserve=${product.id}" class="viewdetails">Reserve</a>
							<a href="?contactSeller=${product.id}" class="viewdetails">Contact
								Seller</a> <a href="?reserve=${product.id}" class="viewdetails">Report
								Abuse</a> <a href="?contactSeller=${product.id}" class="viewdetails">Recommend</a>
						</div>
						<h3>${product.name}</h3>
						<h2>${product.description}</h2>
						<span class="save">Price: $ ${product.price } </span>
						<div align="justify">this is a detail desc this is a detail
							desc this is a detail desc this is a detail desc this is a detail
							descthis is a detail descthis is a detail descthis is a detail
							descthis is a detail descthis is a detail descthis is a detail
							descthis isthis is a detail descthis is a detail descthis is a
							detail descthis is a detail descthis is a detail descthis is a
							detail descthis is a detail descthis isthis is a detail descthis
							is a detail descthis is a detail descthis is a detail descthis is
							a detail descthis is a detail descthis is a detail descthis
							isthis is a detail descthis is a detail descthis is a detail
							descthis is a detail descthis is a detail descthis is a detail
							descthis is a detail descthis isthis is a detail descthis is a
							detail descthis is a detail descthis is a detail descthis is a
							detail descthis is a detail descthis is a detail descthis isthis
							is a detail descthis is a detail descthis is a detail descthis is
							a detail descthis is a detail descthis is a detail descthis is a
							detail descthis is a detail descthis is a detail desc</div>
					</div>

				</div>
			</div>
		</tiles:putAttribute>
	</tiles:insertDefinition>
</body>
</html>