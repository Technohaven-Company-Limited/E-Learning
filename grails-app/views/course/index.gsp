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
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${courses}" var="course">
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
                <td>
                    <g:link class="btn btn-sm btn-primary" style="text-decoration: none" action="edit" params="[id: course.id]">Edit</g:link>
                    <g:link class="btn btn-sm btn-danger ml-5" style="text-decoration: none" action="delete" params="[id: course.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">Delete</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>