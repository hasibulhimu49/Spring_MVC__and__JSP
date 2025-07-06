<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><c:out value="${title}">Product CRUD app</c:out></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">

            <h1 class="text-center mb-3">Fill the product detail</h1>

            <form action="handle-product" method="post">
                
                <!-- Product Name -->
                <div class="form-group">
                    <label for="name">Product Name</label>
                    <input type="text"
                           class="form-control"
                           id="name"
                           name="pname"
                           placeholder="Enter the product name here"
                           aria-describedby="emailHelp">
                </div>

                <!-- Product Description -->
                <div class="form-group">
                    <label for="description">Product Description</label>
                    <textarea class="form-control"
                              name="pdescription"
                              id="description"
                              rows="5"
                              placeholder="Enter the product description"></textarea>
                </div>

                <!-- Product Price -->
                <div class="form-group">
                    <label for="pprice">Product Price</label>
                    <input type="text"
                           class="form-control"
                           id="price"
                           name="pprice"
                           placeholder="Enter Product Price">
                </div>

                <!-- Buttons -->
                <div class="container text-center mt-4">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>

        </div>
    </div>
</div>

</body>
</html>
