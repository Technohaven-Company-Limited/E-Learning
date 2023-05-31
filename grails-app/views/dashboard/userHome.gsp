<%@ page import="elearning.Course" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>HOME</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'trainerHome.css')}" type="text/css">
</head>
<body>
<div class="container-fluid" style="background: RGB(23, 162, 184); min-height: 80px">
    <div class="row" id="nav_bar" style="padding-top: 10px;">
        <div class="col-3">
            <div class="row pb-3" >
                <div class="col-12">
                    <a class="text-info" href="" id="logo"><g:img dir="images" file="logo.png" style="height: 60px; width: 60px;"/></a>
                </div>
            </div>
        </div>

        <div class="col-3" style=" padding-top: 10px;">
            <nav class="nav">
                <g:link class="nav-link text-light" controller="dashboard" action="userHome">Home</g:link>
                <g:link class="nav-link text-light" controller="contactUs" action="create">Contact Us</g:link>
            </nav>
        </div>

        <div class="col-3" style=" padding-top: 10px;">
            <nav class="nav">
                <g:form controller="course" action="filterCourseWithName" method="POST">
                    <g:textField name="search" value=""/>
                    <span>
                        <button class="btn" style="background: lightcyan; color: darkgrey" type="submit">Search</button>
                    </span>
                </g:form>
            </nav>
        </div>

        <div class="col-3">
            <nav class="nav d-flex flex-row-reverse">
                <g:link class="nav-link text-danger" style="padding-top: 14px; background: transparent; border: none;" controller="authentication" action="logout"><i class="fa-solid fa-right-from-bracket"></i> Logout</g:link>
                <g:link class="nav-link text-light" style="padding-top: 14px;" controller="user" action="get"><i class="fa-solid fa-user"></i> Profile</g:link>
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
        <g:each controller="course" in="${coursess}" var="course">
            <div class="col-3 mb-5">
                <div class="card hvr-grow" style="border-radius:10px; width: 250px; height: 360px;">
                    <g:link controller="course" action="show" params="[id: course.id]"><g:img class="card-img-top" dir="images" file="${course.courseLogo}" alt="Card image cap" style="height: 150px; border-radius:5px;"/></g:link>
                    <div class="card-body" style="line-height: 0px;">
                        <p class="d-inline text-light" style="background: #00CED1; padding:0 5px 0 5px; border-radius: 15px; font-size: 14px; font-weight: 600;"><i class="fa-solid fa-bangladeshi-taka-sign"></i> ${course.coursePrice}</p>
                        <h5 class="card-title" style="font-size: 14px; font-weight: 600; margin-top: 10px;"><a>${course.courseName}</a></h5>
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
                        <a href="#" class="btn btn-primary" style="padding-top: 0px; padding-bottom: 0px; font-size: 11px;">Buy now</a>
                    </div>
                </div>
            </div>
        </g:each>
    </div>

</div>
</body>
</html>
