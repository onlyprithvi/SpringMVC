<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="resources/style/style.css" />"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project 404 - View details</title>
</head>
<body>
	<tiles:insertDefinition name="defaultTemplate">
		<tiles:putAttribute name="body">
			<div id="main_data" align="center">
				<div class="content">
					<div class="productDetailbox">
						<img src="<c:url value="${product.details.imagePath}" />"
							height="200" width="200">
						    <c:if test="${userSession!=null}">
                                <div class="buttonholderView">
                                    <c:choose>
                                        <c:when test="${product.isApprovedByAdmin!=true}">
                                            <a href="reserve?productId=${product.id}" class="viewdetails"><spring:message code="page.viewdetail.link.reserve.text" /></a>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="viewdetails" style="background: red">Already Reserved</span>
                                        </c:otherwise>
                                    </c:choose>
                                    <a href="contactSeller?sellerId=${product.owner}" class="viewdetails"><spring:message code="page.viewdetail.link.contactseller.text" /></a>
                                </div>
                            </c:if>
							<a href="report?productId=${product.id}" class="viewdetails">
								<spring:message code="page.viewdetail.link.reportabuse.text" />
							</a> 
							<a href="contactSeller?productId=${product.id}" class="viewdetails">
								<spring:message code="page.viewdetail.link.recommend.text" />Recommend</a>
						</div>
						<h3>${product.name}</h3>
						<h2>${product.details.description}</h2>
						<span class="save">Price: $ ${product.details.price } </span>
						<div align="justify">${product.details.detail}</div>
					</div>

				</div>
			</div>
		</tiles:putAttribute>
	</tiles:insertDefinition>
</body>
</html>