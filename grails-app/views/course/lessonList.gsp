<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>LESSON LIST</title>
    %{--    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%
</head>
<body>
<div class="container-fluid">
    <h1>Lessons List</h1>
    <table class="table table-secondary table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Duration</th>
            </tr>
        </thead>
        <tbody>
        <g:each in="${lessons}" var="lesson">
            <tr>
                <td>${lesson.id}</td>
                <td>${lesson.lessonName}</td>
                <td>${lesson.lessonDescription}</td>
                <td>${lesson.lessonDuration}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>