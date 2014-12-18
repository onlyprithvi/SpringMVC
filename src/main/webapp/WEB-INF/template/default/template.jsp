<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <link href="<c:url value="/resources/style/style.css" />" rel="stylesheet">
        <script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Default tiles template</title>

</head>
<body>
    <div class="page">
        <tiles:insertAttribute name="header" />
        <div class="content">
		<%--<tiles:insertAttribute name="menu" /> --%>      
		      <tiles:insertAttribute name="body" />
        </div>

    </div>
    <tiles:insertAttribute name="footer" />
</body>
</html>