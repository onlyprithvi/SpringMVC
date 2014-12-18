<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="headerTemplate">
Maharshi University Give and Take and Buy
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
        </c:otherwise>
    </c:choose>
            </ul>
        </div>
    </div>

</div>