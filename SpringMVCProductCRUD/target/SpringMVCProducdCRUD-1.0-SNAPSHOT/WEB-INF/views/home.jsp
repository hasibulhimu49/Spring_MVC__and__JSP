<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="./base.jsp"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center mb-3">Welcome to Product App</h1>
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Description</th>
                                <th scope="col">Price</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${product}" var="p">
                                <tr>
                                    <th scope="row">TECHONLY${p.pid}</th>
                                    <td>${p.pname}</td>
                                    <td>${p.pdescription}</td>
                                    <td class="font-weight-bold">&#36; ${p.pprice}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/delete/${p.pid}">
                                            <i class="fa-solid fa-trash text-danger"></i>
                                        </a>

                                        <a href="${pageContext.request.contextPath}/update/${p.pid}">
                                            <i class="fa-solid fa-square-pen"></i>
                                        </a>

                                    </td>

                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>

                    <div class="container text-center">
                        <a href="add-product" class="btn btn-outline-success">Add Product</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
