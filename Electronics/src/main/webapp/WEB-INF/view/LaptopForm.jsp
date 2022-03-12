<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Laptop</title>
</head>
<body>
    <div align="center">
        <h1>New/Edit Laptop</h1>
        <form:form action="saveLaptop" method="post" modelAttribute="laptop">
        <table>
            <%-- <form:hidden path="id"/> --%>
            <form:hidden path="p_Type" value="Laptop"/>
            <tr>
                <td>Name:</td>
                <td><form:input path="lName" /></td>
            </tr>
            <tr>
                <td>Ram:</td>
                <td><form:input path="lRam" /></td>
            </tr>
            <tr>
                <td>Processor:</td>
                <td><form:input path="lProcessor" /></td>
            </tr>
            <tr>
                <td>Storage:</td>
                <td><form:input path="lStorage" /></td>
            </tr>
            <tr>
                <td>Color:</td>
                <td><form:input path="lColor" /></td>
            </tr>
            <tr>
                <td>Graphics:</td>
                <td><form:input path="lGraphics" /></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><form:input path="p_Description" /></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><form:input path="p_Price" /></td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td><form:input path="p_Quantity" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>