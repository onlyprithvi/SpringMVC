<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="headerTemplate mast-head">
<h1>Sell Your Stuff</h1>
</div>


<div class="wrapper">
    <div class="header" id="top">
        <div class="userlogin">
            <ul>
    <c:choose>
        <c:when test="${userSession==null}">
                        <li class="disqus"><a href="<c:url value="/user/addUser" />" id="sign_up">SignUp</a></li>
                        <li class="disqus"><a href="login" id="sign_in">Login</a></li>
        </c:when>
        <c:otherwise>
            <li class="disqus"><a href="<c:url value="j_spring_security_logout" />" id="sign_up">Log Out</a></li>
            <li class="disqus"><a href="<c:url value="/addProduct" />" id="sign_up">Add product</a></li>
            <li class="disqus"><a href="<c:url value="/user/showHistory" />" id="sign_up">View history</a></li>
            <li class="disqus"><a href="<c:url value="/" />" id="sign_up">Home</a></li>
        </c:otherwise>
    </c:choose>
            </ul>
        </div>
    </div>

</div>