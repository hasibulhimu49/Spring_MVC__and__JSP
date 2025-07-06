<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Name: ${user.userName}</p>
        <p>ID: ${user.userId}</p>
        <p>DOB: ${user.userDob}</p>
        <p>Courses: 
    <c:forEach var="course" items="${user.userCourse}">
        ${course} 
    </c:forEach>
</p>
<p>Gender: ${user.userGender}</p>
<p>Type: ${user.userType}</p>

<hr>
<p>Street: ${user.address.street}</p>
<p>City: ${user.address.city}</p>
</body>
</html>
