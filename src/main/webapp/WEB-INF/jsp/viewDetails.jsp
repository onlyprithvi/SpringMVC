<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="resources/style/style.css" />"rel="stylesheet">

    <script type="application/javascript">
            function viewSeller(a){
                $.ajax({
                    url: "contactSeller?sellerId="+a,
                    type:'GET',
                    success: function(result){
                        $("#sellerDetail").empty().html(result);
                    }
                });
            }
    </script>
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

                        <h2>${product.name}</h2>
                        <div>${product.details.description}</div>
                        <div >Price: $ ${product.details.price } </div>
                        <div align="justify">${product.details.detail}</div>
                        <div class="buttonholder">
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
                                    <a href="#" class="viewdetails" id="viewSeller" onclick="viewSeller('${product.owner}');"><spring:message code="page.viewdetail.link.contactseller.text" /></a>
                                </div>
                            </c:if>
							<a href="report?productId=${product.id}" class="viewdetails">
								<spring:message code="page.viewdetail.link.reportabuse.text" />
							</a>
							<a href="contactSeller?productId=${product.id}" class="viewdetails">
								<spring:message code="page.viewdetail.link.recommend.text" /></a>
						</div>
                        </div>

					</div>
                    <div id="sellerDetail"></div>
				</div>
			</div>

		</tiles:putAttribute>
	</tiles:insertDefinition>
</body>
</html>