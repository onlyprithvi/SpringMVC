<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Default tiles template</title>
    <style type="text/css">
    body {
        margin:0px;
        padding:0px;
        height:100%;
    }
 
    .page {
        min-height:100%;
        position:relative;
    }
     
    .headerTemplate {
        padding:35px;
        width:100%;
        text-align:center;
        background: blue;
    }
     
   
     
    .menu {
        padding:50px 10px 0px 10px;
        width:200px;
        float:left;
    }
 
    .body {
        margin:50px 10px 0px 250px;
    }
     
    .footer {
        clear:both;
        left:0;
        text-align:center;
        width:100%;
        background: blue;
    }
     
    </style>
</head>
<body>
    <div class="page">
        <tiles:insertAttribute name="header" />
        <div class="content">
		<%--<tiles:insertAttribute name="menu" /> --%>      
		      <tiles:insertAttribute name="body" />
        </div>
        <tiles:insertAttribute name="footer" />
    </div>
</body>
</html>