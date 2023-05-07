<%@ page import="elearning.Course" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'customList.css')}" type="text/css">
</head>
<body>
%{--<div class="container-fluid">--}%
%{--    <h1>Course List</h1>--}%
%{--    <table class="table table-info table-bordered">--}%
%{--        <thead>--}%
%{--        <tr>--}%
%{--            <th>ID</th>--}%
%{--            <th>Code</th>--}%
%{--            <th>Category</th>--}%
%{--            <th>Name</th>--}%
%{--            <th>Trainer</th>--}%
%{--            <th>Upload Date</th>--}%
%{--            <th>Duration</th>--}%
%{--            <th>Description</th>--}%
%{--            <th>Price</th>--}%
%{--            <th>Discount</th>--}%
%{--            <th>Logo</th>--}%
%{--            <th style="width: 130px">Action</th>--}%
%{--        </tr>--}%
%{--        </thead>--}%
%{--        <tbody>--}%
%{--        <g:each controller="course" in="${coursesss}" var="course">--}%
%{--            <tr>--}%
%{--                <td>${course.id}</td>--}%
%{--                <td>${course.courseCode}</td>--}%
%{--                <td>${course.courseCategory}</td>--}%
%{--                <td>${course.courseName}</td>--}%
%{--                <td>${course.courseTrainer}</td>--}%
%{--                <td>${course.courseUploadDate}</td>--}%
%{--                <td>${course.courseDuration}</td>--}%
%{--                <td>${course.courseDescription}</td>--}%
%{--                <td>${course.coursePrice}</td>--}%
%{--                <td>${course.courseDiscount}</td>--}%
%{--                <td>${course.courseLogo}</td>--}%
%{--                <td>--}%
%{--                    <g:link class="btn btn-sm btn-primary" style="text-decoration: none" action="edit" params="[id: course.id]">Edit</g:link>--}%
%{--                    <g:link class="btn btn-sm btn-danger ml-3" style="text-decoration: none" action="delete" params="[id: course.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">Delete</g:link>--}%
%{--                </td>--}%
%{--            </tr>--}%
%{--        </g:each>--}%
%{--        </tbody>--}%
%{--    </table>--}%
%{--</div>--}%

<div class="container-fluid" style="background: RGB(23, 162, 184); min-height: 80px">
    <div class="row" id="nav_bar" style="padding-top: 10px;">
        <div class="col-3">
            <div class="row pb-3" >
                <div class="col-12">
                    <a class="text-info" href="" id="logo"><g:img dir="images" file="logo.png" style="height: 60px; width: 60px;"/></a>
                </div>
            </div>
        </div>

        <div class="col-5" style=" padding-top: 10px;">
            <nav class="nav">
                <a class="nav-link text-light active" aria-current="page" href="/home">Home</a>
                <a class="nav-link text-light" href="/lesson">Upload Lesson</a>
                <a class="nav-link text-light" href="/course">Upload Courses</a>
                <a class="nav-link text-light" href="/contactus">Contact Us</a>
            </nav>
        </div>

        <div class="col-4">
            <nav class="nav d-flex flex-row-reverse">
                <button class="nav-link text-danger" style="padding-top: 14px; background: transparent; border: none;">Logout</button>
                <a class="nav-link text-light" style="padding-top: 14px;" href="">Profile</a>
            </nav>
        </div>
    </div>
</div>

<!-- card heading -->
<div class="container pt-5">
    <div class="col-2"></div>
    <div class="col-8 mt-3">
        <h2 class="text-secondary"><strong>Exciting crash programs</strong></h2>
    </div>
    <div class="col-2"></div>
</div>
<br>
<!--Card-->
<div class="container p-5 mt-1 border border-1" style="border-radius: 15px; background-color: aliceblue;">
    <div class="row">
        <g:each controller="course" in="${coursesss}" var="course">
            <div class="col-3">
                <div class="card hvr-grow" style="border-radius:10px; width: 250px; height: 350px;">
                    <a href=""><g:img class="card-img-top" dir="images" file="${course.courseLogo}" alt="Card image cap" style="height: 150px; border-radius:5px;"/></a>
                    <div class="card-body" style="line-height: 0px;">
                        <p class="d-inline text-light" style="background: #00CED1; padding:0 5px 0 5px; border-radius: 15px; font-size: 11px; font-weight: 600;">${course.coursePrice}</p>
                        <h5 class="card-title" style="font-size: 11px; font-weight: 600; margin-top: 10px;"><a>${course.courseName}</a></h5>
                        <table style="font-size: 11px;">
                            <tr>
                                <td>Instructor</td>
                                <td>${course.courseTrainer}</td>
                            </tr>
                            <tr>
                                <td>Duration</td>
                                <td>${course.courseDuration}</td>
                            </tr>
                            <tr>
                                <td>Publish</td>
                                <td>${course.courseUploadDate}</td>
                            </tr>
                        </table>
                        <a href="#" class="btn btn-primary" style="padding-top: 0px; padding-bottom: 0px; font-size: 11px; text-decoration: none">Buy now</a>
                    </div>
                </div>
            </div>
        </g:each>
    </div>

</body>
</html>