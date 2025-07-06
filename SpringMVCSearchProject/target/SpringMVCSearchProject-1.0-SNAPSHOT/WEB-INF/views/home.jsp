<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
              rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

        <!-- Bootstrap Icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        
        <!-- Include CSS using contextPath -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/CSS/style.css" />

        <!-- Custom JavaScript -->
        <script src="<c:url value='/resources/JS/script.js' />"></script>
        <title>Elegant Search</title>
    </head>
    <body>

        <div class="search-card text-center">
            <h3>Smart Search</h3>
            <form method="get" action="search">
                <div class="form-group mb-4">
                    <i class="bi bi-search input-icon"></i>
                    <input type="text" name="querybox" placeholder="Enter your keyword"
                           class="form-control" required />
                </div>
                <button type="submit" class="btn btn-custom">Search</button>
            </form>
        </div>
    </body>
</html>
