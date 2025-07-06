<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Page Not Found</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: #f8f8f8;
            margin-top: 100px;
        }
        h1 {
            font-size: 48px;
            color: #333;
        }
        h2 {
            font-size: 24px;
            color: #666;
        }
        p {
            font-size: 16px;
            color: #999;
        }
        a {
            color: #007BFF;
            text-decoration: none;
            margin: 0 10px;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Oops! Sorry</h1>
    <h2>Something went wrong !!</h2>
    <h3>${msg}</h3>
    <p>Sorry, an error has occured, Requested page not found!</p>
    <p>
        <a href="index.jsp">Take Me Home</a> |
        <a href="contact.jsp">Contact Support</a>
    </p>
</body>
</html>
