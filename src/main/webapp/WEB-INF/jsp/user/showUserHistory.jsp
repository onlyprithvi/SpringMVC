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

        <table border="1">
            <tr>
                <th>Product Name</th>
                <th>Product Detail</th>
                <th>Product Price</th>
                <th>Product Posted Date</th>
                <th>Product Reserved/Not</th>
                <th>Product Approved?</th>
            </tr>

            <c:forEach var="product" items="${products}">
                <tr>
                    <td><a href="<c:url value="/viewdetails?product=${product.id}"/>">${product.name}</a></td>
                    <td>${product.details.detail}</td>
                    <td>${product.details.price}</td>
                    <td>${product.details.postedDate}</td>
                    <td>${product.reservedOrOpen?"Reserved":"Not Reserved Yet"}</td>
                    <td>${product.isApprovedByAdmin?"Approved by admin":"Not Approved Yet"}</td>
                </tr>
            </c:forEach>
        </table>
    </tiles:putAttribute>
</tiles:insertDefinition>
</body>
</html>