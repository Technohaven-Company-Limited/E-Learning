<%@ page import="elearning.Course" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    %{--    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%
</head>
<body>
<div class="container-fluid">
    <h1>Course List</h1>
    <table class="table table-info table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Code</th>
            <th>Category</th>
            <th>Name</th>
            <th>Trainer</th>
            <th>Upload Date</th>
            <th>Duration</th>
            <th>Description</th>
            <th>Price</th>
            <th>Discount</th>
            <th>Logo</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${admin}" var="course">
            <tr>
                <td>${course.id}</td>
                <td>${course.courseCode}</td>
                <td>${course.courseCategory}</td>
                <td>${course.courseName}</td>
                <td>${course.courseTrainer}</td>
                <td>${course.courseUploadDate}</td>
                <td>${course.courseDuration}</td>
                <td>${course.courseDescription}</td>
                <td>${course.coursePrice}</td>
                <td>${course.courseDiscount}</td>
                <td>${course.courseLogo}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>