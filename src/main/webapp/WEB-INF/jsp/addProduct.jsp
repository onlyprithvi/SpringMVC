<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Add Title</title>

    <script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
    <script>
        tinymce.init({
            selector : 'textarea'
        });
    </script>
</head>


<body>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h1>Add Product</h1>

        <form:form modelAttribute="newProduct" action="addProduct" enctype="multipart/form-data">
            <form:input path="id" type="hidden"/>
            <table>
                <tr>
                    <td>Product Name:</td>
                    <td><form:input path="name" /></td>
                    <td><form:errors path="name" /></td>
                </tr>

                <tr>
                    <td>Product Price:</td>
                    <td><form:input path="details.price" type="text" /></td>
                    <td><form:errors path="details.price" /></td>
                </tr>

                <tr>
                    <td>Product Description:</td>
                    <td><form:input path="details.description" type="text" /></td>
                    <td><form:errors path="details.description" /></td>
                </tr>
                <tr>
                    <td>Product Status:</td>
                    <td><form:select path="details.productStatus">
                        <form:option value="">--Select</form:option>
                        <form:options items="${status}" />
                    </form:select></td>
                    <td><form:errors path="details.productStatus" /></td>
                </tr>
                <tr>
                    <td>Product Image:</td>
                    <td><input type="file" name="file"></td>
                    <td></td>
                </tr>

                <tr>
                    <td colspan="2">Add Description</td>
                </tr>
                <tr>
                    <td colspan="3"><form:textarea path="details.detail"/></td>
                </tr>
                <tr>
                    <td colspan=3><input type="submit" value="Add" /></td>
                </tr>
            </table>

        </form:form>
    </tiles:putAttribute>
</tiles:insertDefinition>

</body>
</html>