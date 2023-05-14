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
            <th>Name</th>
            <th>Description</th>
            <th>Duration</th>
            <th>Resource</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${lessonss}" var="lesson">
            <tr>
                <td>${lesson.lessonName}</td>
                <td>${lesson.lessonDescription}</td>
                <td>${lesson.lessonDuration}</td>
                <td>
                    <video width="320" height="240" controls>
                        <source src="../../assets/videos/${lesson.lessonFile}" type="video/mp4">
                    </video>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>