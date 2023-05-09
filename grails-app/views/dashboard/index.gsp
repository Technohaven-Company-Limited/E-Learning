<%@ page import="elearning.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'dashboard.css')}" type="text/css">
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

        <div class="col-5" style=" padding-top: 10px;">
            <nav class="nav">
                <g:link class="nav-link text-light active" aria-current="page" href="/dashboard/index">Home</g:link>
                <g:link class="nav-link text-light" controller="lesson" action="create">Lessons</g:link>
                <g:link class="nav-link text-light" controller="course" action="create">Courses</g:link>
                <g:link class="nav-link text-light" controller="contactUs" action="create">Contact Us</g:link>
            </nav>
        </div>

        <div class="col-4">
            <nav class="nav d-flex flex-row-reverse">
                <g:link class="nav-link text-danger" style="padding-top: 14px; background: transparent; border: none;" controller="authentication" action="logout"><i class="fa-solid fa-right-from-bracket"></i> Logout</g:link>
                <g:link class="nav-link text-light" style="padding-top: 14px;" controller="user" action="get"><i class="fa-solid fa-user"></i> Profile</g:link>
            </nav>
        </div>
    </div>
</div>
<h1>Welcome to Grails Elearning Platform</h1>


</body>
</html>