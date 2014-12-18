<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Project404</title>
</head>
<body>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
    <div><h1>Register me.</h1></div>
    <div>
      <form:form modelAttribute="newUser" action="addUser">
          <table>
                <tr>
                    <td>First Name</td>
                    <td><form:input path="firstName"/></td>
                    <td><form:errors path="firstName" class="vaidationError"/> </td>
                </tr>
              <tr>
                  <td>Last Name</td>
                  <td><form:input path="lastName"/></td>
                  <td><form:errors path="lastName" class="vaidationError"/> </td>
              </tr>
              <tr>
                  <td>Email/UserName</td>
                  <td><form:input path="username"/></td>
                  <td><form:errors path="username" class="vaidationError"/> </td>
              </tr>
              <tr>
                  <td>Password</td>
                  <td><form:input path="password" type="password"/></td>
                  <td><form:errors path="password" class="vaidationError"/> </td>
              </tr>
              <tr>
                  <td>Phone</td>
                  <td>
                      <form:input path="phone1" size="3" type="text"/>-
                      <form:input path="phone2" size="3" type="text"/>-
                      <form:input path="phone3" size="4" type="text"/>
                  </td>
                  <td><form:errors path="phone1" class="vaidationError"/><form:errors path="phone2" class="vaidationError"/> <form:errors path="phone3" class="vaidationError"/>  </td>
              </tr>
              <tr>
                  <td>Address Line 1</td>
                  <td><form:input path="address1"/></td>
                  <td><form:errors path="address1" class="vaidationError"/> </td>
              </tr>
              <tr>
                  <td>Address Line 2</td>
                  <td><form:input path="address2"/></td>
                  <td><form:errors path="address2" class="vaidationError"/> </td>
              </tr>
              <tr>
                  <td>State</td>
                  <td><form:input path="state"/></td>
                  <td><form:errors path="state" class="vaidationError"/> </td>
              </tr>
              <tr>
                  <td>Country</td>
                  <td><form:input path="country"/></td>
                  <td><form:errors path="country" class="vaidationError"/> </td>
              </tr>
              <tr>
                  <td colspan="3"><input type="submit" value="Register"/></td>
              </tr>


          </table>
      </form:form>
        
    </div>
    </tiles:putAttribute>
</tiles:insertDefinition>
</body>
</html>