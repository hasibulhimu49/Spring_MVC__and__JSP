<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File uploaded result</title>
    </head>

    <body>
        <h1>${msg}</h1>
        <img src="<c:url value='/resources/images/' />${filename}" alt="Profile Image" width="200" />
    </body>-->

    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <title>Upload Success</title>

            <!-- Bootstrap CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

            <!-- Bootstrap Icons (optional) -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

            <!-- Custom CSS -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/CSS/fileoutput.css">
        </head>
        <body>
            <div class="container d-flex justify-content-center align-items-center min-vh-100">
                <div class="card shadow p-4 text-center" style="max-width: 500px; width: 100%;">
                    <div class="card-body">
                        <h2 class="text-success mb-3"><i class="bi bi-check-circle-fill"></i> Upload Successful!</h2>
                        <p class="lead text-dark">${msg}</p>

                        <img src="<c:url value='/resources/images/' />${filename}" alt="Profile Image" class="img-thumbnail rounded mb-3" width="200" />

                        <div>
                            <a href="${pageContext.request.contextPath}/" class="btn btn-primary mt-2">
                                <i class="bi bi-house-door"></i> Go Home
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>

