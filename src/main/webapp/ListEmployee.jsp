<%--@elvariable id="employee" type="sun.net.ftp.FtpClient"--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee List</title>
</head>
<body>

<h1>Employee List</h1>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Type</th>
        <th>Status</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${data}" var="u">
        <tr>
            <td>${u.name}</td>
            <td>${u.age}</td>
            <td>
                <c:choose>
                    <c:when test="${u.gender == 1}">Nam</c:when>
                    <c:when test="${u.gender == 2}">Nữ</c:when>
                    <c:otherwise>Unknown</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${u.type == 1}">Công nhân</c:when>
                    <c:when test="${u.type == 2}">Kỹ sư</c:when>
                    <c:otherwise>Unknown</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${u.status == 1}">Active</c:when>
                    <c:when test="${u.status == 2}">Unactive</c:when>
                    <c:otherwise>Unknown</c:otherwise>
                </c:choose>
            </td>
            <td>
                <a href="employees?mode=edit&employeeid=${u.employeeId}">Edit</a>
                <a href="employees?mode=4&employeeid=${u.employeeId}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

<h2>Add New Employee</h2>
<form action="employees" method="post">
    <input type="hidden" name="employeeId" value="${employee.employeeId}" />
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${employee.name}" required>
    <br>
    <label for="age">Age:</label>
    <input type="number" id="age" name="age" value="${employee.age}" required>
    <br>
    <label for="gender">Gender:</label>
    <select id="gender" name="gender" required>
        <option value="1" ${employee.gender == 1 ? 'selected' : ''}>Nam</option>
        <option value="2" ${employee.gender == 2 ? 'selected' : ''}>Nữ</option>
    </select>
    <br>
    <label for="type">Type:</label>
    <select id="type" name="type" required>
        <option value="1" ${employee.type == 1 ? 'selected' : ''}>Công nhân</option>
        <option value="2" ${employee.type == 2 ? 'selected' : ''}>Kỹ sư</option>
    </select>
    <br>
    <label for="status">Status:</label>
    <select id="status" name="status" required>
        <option value="1" ${employee.status == 1 ? 'selected' : ''}>Active</option>
        <option value="2" ${employee.status == 2 ? 'selected' : ''}>Unactive</option>
    </select>
    <br>
    <button type="submit">${employee.employeeId != null ? 'Update' : 'Add'}</button>
</form>

</body>
</html>
