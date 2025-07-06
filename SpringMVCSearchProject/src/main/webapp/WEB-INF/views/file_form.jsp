<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Upload Image</title>
        
        <!-- Bootstrap CSS for styling -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/CSS/file.css">
    </head>
    <body>
        <div class="container p-5">
            <h1>Upload Image</h1>

            <form action="uploadImage" method="post" enctype="multipart/form-data">
                <div class="form-group mb-3">

                    <label for="formFile" class="form-label">Select your image</label>
                    <input type="file" name="profile" class="form-control" id="formFile" required>

                </div>
                <button class="btn btn-outline-success" type="submit">Upload</button>

            </form>
        </div>
    </body>
</html>
