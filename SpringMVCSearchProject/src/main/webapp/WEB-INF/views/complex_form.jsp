<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Complex Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    
    <h2 class="text-center mb-4">Complex Form</h2>
    
    <div class="alert alert-danger" role="alert">
        <form:errors path="user.*"/>
    </div>

    <form action="handleform" method="get">
        
        <div class="mb-3">
            <label for="name" class="form-label">Your name</label>
            <input type="text" class="form-control" id="name" name="userName" placeholder="Enter Name">
            <div class="form-text">We'll never share your name with anyone else.</div>
        </div>

        <div class="mb-3">
            <label for="id" class="form-label">Your id</label>
            <input type="text" class="form-control" id="id" name="userId" placeholder="Enter ID">
        </div>

        <div class="mb-3">
            <label for="dob" class="form-label">Your DOB</label>
            <input type="date" class="form-control" id="dob" name="userDob">
        </div>

        <div class="mb-3">
            <label for="course" class="form-label">Example Course</label>
            <select multiple class="form-control" id="course" name="userCourse[]">
                <option value="Java">Java</option>
                <option value="Python">Python</option>
                <option value="C++">C++</option>
                <option value="Django">Django</option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label d-block">Select Gender</label>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="userGender" id="male" value="male">
                <label class="form-check-label" for="male">Male</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="userGender" id="female" value="female">
                <label class="form-check-label" for="female">Female</label>
            </div>
        </div>

        <div class="mb-3">
            <label for="type" class="form-label">Select Type</label>
            <select class="form-control" id="type" name="userType">
                <option value="Old Student">Old Student</option>
                <option value="New Student">New Student</option>
            </select>
        </div>
        
        
<div class="card">
    <div class="card-body">
        <p>Your Address</p>
        
        <div class="form-group mb-3">
            <input type="text" class="form-control" name="address.street" placeholder="Enter Street">
        </div>
        
        <div class="form-group mb-3">
            <input type="text" class="form-control" name="address.city" placeholder="Enter City">
        </div>              
    </div>
</div>

        <div class="text-center mt-3">
             <button type="submit" class="btn btn-primary">Submit</button>
        </div>     
    </form>
</div>
</body>
</html>
