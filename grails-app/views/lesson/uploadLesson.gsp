<%@ page import="elearning.Lesson" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>LESSON</title>
%{--    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <div class="card mt-5">
                <div class="card-header bg-info"><h3 class="text-light">Upload Lesson</h3></div>
                <div class="card-body">
                    <g:form controller="lesson" action="save" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Code</label></div>
                            <div class="col-8">
                                <g:select class="form-control" from="${elearning.Course.listOrderByCourseCode()}" name="lessonCourse" value="${lessonCourse}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Lesson Code</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="lessonCode" value="${lessonCode}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Lesson Name</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="lessonName" value="${lessonName}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Lesson Duration</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="lessonDuration" value="${lessonDuration}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Lesson Description</label></div>
                            <div class="col-8">
                                <g:textArea class="form-control" name="lessonDescription" value="${lessonDescription}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Lesson File</label></div>
                            <div class="col-8">
                                <g:field type="file" class="form-control" name="lessonFileUpload" value="${lessonFile}"/>
                            </div>
                        </div>
                        <br>
                        <div style="display: flex; justify-content: center;">
                            <g:submitButton class="btn btn-outline-primary" name="save" value="Submit"/>
                            <button class="btn btn-outline-danger ml-3">Reset</button>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
        <div class="col-3"></div>
    </div>
</div>

</body>
</html>