<%@ page import="elearning.Lesson" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    %{--    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%
</head>
<body>
<div class="container-fluid">
    <h1>Lesson List</h1>
    <table class="table table-info table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Lesson Course</th>
            <th>Lesson Code</th>
            <th>Lesson Name</th>
            <th>Lesson Duration</th>
            <th>Lesson Description</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${lessons}" var="lesson">
            <tr>
                <td>${lesson.id}</td>
                <td>${lesson.lessonCourse}</td>
                <td>${lesson.lessonCode}</td>
                <td>${lesson.lessonName}</td>
                <td>${lesson.lessonDuration}</td>
                <td>${lesson.lessonDescription}</td>
                <td>
                    <g:link class="btn btn-sm btn-primary" style="text-decoration: none" action="edit" params="[id: lesson.id]">Edit</g:link>
                    <g:link class="btn btn-sm btn-danger ml-5" style="text-decoration: none" action="delete" params="[id: lesson.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">Delete</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>