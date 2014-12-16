<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/style/style.css" />"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project404</title>
</head>
<body>



	<div class="wrapper">
		<div class="header" id="top">
			<div class="userlogin">
				<ul>
					<li class="disqus"><a href="recommend">Recommend</a></li>
					<li class="disqus"><a href="recommend" id="sign_up">Sign
							Up</a></li>
					<li class="disqus"><a href="login" id="sign_in">Login</a></li>
				</ul>
			</div>
		</div>

	</div>
	<div>
		<img src="<c:url value="/resources/images/banner.png" />">
	</div>
	<div class="contentwrapper">
		<div id="main_data">
			<div class="content">

				<c:forEach var="product" items="${productList}">
					<div class="productbox">
						<img src="<c:url value="/resources/images/banner.png" />"
							height="240" width="240">
						<div class="productdesc">
							<h3>${product.name} </h3>
							<h2>${product.description}</h2>
							<span class="save">Price: $ ${product.price} }</span>
							<div class="moredetails">
								<div class="seperator">
									<div class="buttonholder">
										<a href="viewdetails?product=${product.id}" class="viewdetails">View Details</a>
									</div>
								</div>
								<br>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>