<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
		<div class="contentwrapper">
			<div id="main_data">
				<div class="content">

					<c:forEach var="product" items="${productList}">
						<div class="productbox">
							<img src="<c:url value="${product.details.imagePath}" />"
								 height="240" width="240">
							<div class="productdesc">
								<h3>${product.name}</h3>
								<h2>${product.details.description}</h2>
								<span class="save"><spring:message code="page.home.price.text" /> $ ${product.details.price}</span>
								<div class="moredetails">
									<div class="seperator">
										<div class="buttonholder">
											<a href="viewdetails?product=${product.id}"
											   class="viewdetails"><spring:message code="page.home.viewdetail.text" /></a>
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
	</tiles:putAttribute>
</tiles:insertDefinition>
</body>
</html>