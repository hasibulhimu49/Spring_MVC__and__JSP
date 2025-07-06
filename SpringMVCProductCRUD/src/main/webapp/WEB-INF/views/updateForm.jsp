<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="./base.jsp"%>
    </head>
    <body>
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h2 class="text-center mb-4">Update Product</h2>
                    
                    <form action="${pageContext.request.contextPath}/update-product" method="post">   
                        <input type="hidden" name="pid" value="${product.pid}" />

                        <div class="form-group">
                            <label for="pname">Product Name</label>
                            <input type="text" class="form-control" id="pname" name="pname" value="${product.pname}" required>
                        </div>

                        <div class="form-group">
                            <label for="pdescription">Product Description</label>
                            <textarea class="form-control" id="pdescription" name="pdescription" required>${product.pdescription}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="pprice">Price</label>
                            <input type="number" class="form-control" id="pprice" name="pprice" value="${product.pprice}" required>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Update Product</button>
                            <a href="${pageContext.request.contextPath}/" class="btn btn-secondary">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
