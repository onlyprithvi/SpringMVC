<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link href="<c:url value="/resources/style/style.css" />"
        rel="stylesheet">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Project404</title>
</head>
<body>
<tiles:insertDefinition name="defaultTemplate">
  <tiles:putAttribute name="body">
    </div>
    <div class="contentwrapper">
      <div id="main_data">
        <div class="content">
<h1>${message} <div class="buttonholder">
    <a href="<c:url value="/admin"/>"
       class="viewdetails">Manage Requests</a>
</div></h1>
          <c:forEach var="product" items="${requestforApproval}">
            <div class="productbox">
                <img src="<c:url value="${product.details.imagePath}" />"
                     height="200" width="200">
              <div class="productdesc">
                <h3>${product.name}</h3>
                <h2>${product.details.description}</h2>
                <span class="save">Price: $ ${product.details.price} }</span>
                <div class="moredetails">
                  <div class="seperator">
                    <div class="buttonholder">
                      <a href="<c:url value="/admin/approve?productId=${product.id}"/>"
                         class="viewdetails">Approve</a>
                      <a href="<c:url value="/admin/delete?productId=${product.id}"/>"
                         class="viewdetails">Delete</a>
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