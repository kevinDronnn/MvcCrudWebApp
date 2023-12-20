<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: voros
  Date: 05.10.2023
  Time: 02:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file="/WEB-INF/view/style.css"%>
    </style>
    <title>allEmployees</title>
</head>
<body>
<div class="parent">
<h2 class="header">All Employees</h2>

    <div class="child">
<table class="content-table">
    <tr class="table-header">
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">

        <c:url var="updateButton" value="http://localhost:8080/SpringMvcAopHib/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <c:url var="deleteButton" value="http://localhost:8080/SpringMvcAopHib/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr class="active-row">
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Update" onclick="window.location.href = '${updateButton}'" class="button-pos">
                <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'" class="button-pos">
            </td>
        </tr>
    </c:forEach>

</table></br>
<input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'" class="button-pos"/>
<input type="button" value="AddGrn" onclick="window.location.href = 'addGrn'" class="button-pos"/>

    </div>
</div>
</body>
</html>
