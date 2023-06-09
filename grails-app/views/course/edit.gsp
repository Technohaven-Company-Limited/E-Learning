<%@ page import="elearning.Course" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>COURSE</title>
    %{--    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <div class="card mt-5" style="box-shadow: 10px 10px 8px LightGray;">
                <div class="card-header bg-info"><h3 class="text-light">Upload Course</h3></div>
                <div class="card-body">
                    <g:form controller="course" action="update" enctype="multipart/form-data" method="PUT">
                        <div class="row">
                            <div class="col-4"></div>
                            <div class="col-8">
                                <g:hiddenField class="form-control" name="id" bean="${course}" value="${id}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Category</label></div>
                            <div class="col-8">
                                <g:select class="form-control" from="['Web Development', 'Web Design', 'Graphics Design', 'Networking', 'Microsoft Office']" noSelection="['':'Choose your category']" name="courseCategory" bean="${course}" value="${course.courseCategory}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Code</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="courseCode" bean="${course}" value="${courseCode}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Name</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="courseName" bean="${course}" value="${courseName}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Trainer</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="courseTrainer" bean="${course}" value="${courseTrainer}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Upload Date</label></div>
                            <div class="col-8">
                                %{--                                <g:datePicker class="form-control" name="courseUploadDate" value="${courseUploadDate}"/>--}%
                                <input type="date" class="form-control" name="courseUploadDate" bean="${course}" value="${course.courseUploadDate}">
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Duration</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="courseDuration" bean="${course}" value="${courseDuration}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Description</label></div>
                            <div class="col-8">
                                <g:textArea class="form-control" name="courseDescription" bean="${course}" value="${courseDescription}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Price</label></div>
                            <div class="col-8">
                                <g:field type="number" name="coursePrice" class="form-control" bean="${course}" value="${coursePrice}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Discount</label></div>
                            <div class="col-8">
                                <g:field type="number" class="form-control" name="courseDiscount" bean="${course}" value="${courseDiscount}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Course Logo</label></div>
                            <div class="col-8">
%{--                                <g:textField class="form-control" name="courseLogo" bean="${course}" value="${courseLogo}"/>--}%
                                <g:field class="form-control" type="file" name="courseLogoFile" value="${courseLogo}"/>
                            </div>
                        </div>
                        <br>
                        <div style="display: flex; justify-content: center;">
                            <g:submitButton class="btn btn-outline-primary" name="update" value="Update"/>
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