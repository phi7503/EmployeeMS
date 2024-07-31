<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Employee</title>
</head>
<body>
<h1>Edit Employee</h1>
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

    <button type="submit">Save Changes</button>
</form>

<a href="employees">Cancel</a>
</body>
</html>