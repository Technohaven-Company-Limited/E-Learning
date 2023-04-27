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
        <g:each controller="course" in="${courses}" var="course">
            <div class="col-3">
                <div class="card hvr-grow" style="border-radius:10px; width: 250px; height: 350px;">
                    <a href=""><g:img class="card-img-top" dir="images" file="Groovy.png" alt="Card image cap" style="height: 150px; border-radius:5px;"/></a>
                    <div class="card-body" style="line-height: 0px;">
                        <p class="d-inline text-light" style="background: #00CED1; padding:0 5px 0 5px; border-radius: 15px; font-size: 11px; font-weight: 600;">$150.00</p>
                        <h5 class="card-title" style="font-size: 11px; font-weight: 600; margin-top: 10px;"><a>Groovy for Beginners - Learn Programming from scratch</a></h5>
                        <table class="table" style="font-size: 11px;">
                            <tr>
                                <td>Instructor</td>
                                <td>${course.courseTrainer}</td>
                            </tr>
                            <tr>
                                <td>Duration</td>
                                <td>20 Hours</td>
                            </tr>
                            <tr>
                                <td>Lecture</td>
                                <td>32</td>
                            </tr>
                        </table>
                        <a href="#" class="btn btn-primary" style="padding-top: 0px; padding-bottom: 0px; font-size: 11px;">Buy now</a>
                    </div>
                </div>
            </div>
        </g:each>

%{--        <div class="col-md-3">--}%
%{--            <div class="card hvr-grow" style="border-radius:10px; width: 250px; height: 350px;">--}%
%{--                <a href=""><img class="card-img-top" alt="Card image cap" style="height: 150px; border-radius:5px;"></a>--}%
%{--                <div class="card-body" style="line-height: 0px;">--}%
%{--                    <p class="d-inline text-light" style="background: Violet; padding:0 5px 0 5px; border-radius: 15px; font-size: 11px; font-weight: 600;">$150.00</p>--}%
%{--                    <h5 class="card-title" style="font-size: 11px; font-weight: 600; margin-top: 10px;"><a>The Complete JavaScript Course 2023: From Zero to Expert!</a></h5>--}%
%{--                    <table class="table" style="font-size: 11px;">--}%
%{--                        <tr>--}%
%{--                            <td><i class="fa-regular fa-user"></i> Instructor</td>--}%
%{--                            <td>ABC</td>--}%
%{--                        </tr>--}%
%{--                        <tr>--}%
%{--                            <td><i class="fa-regular fa-clock"></i> Duration</td>--}%
%{--                            <td>20 Hours</td>--}%
%{--                        </tr>--}%
%{--                        <tr>--}%
%{--                            <td><i class="fa-regular fa-file"></i> Lecture</td>--}%
%{--                            <td>32</td>--}%
%{--                        </tr>--}%
%{--                    </table>--}%
%{--                    <a href="#" class="btn btn-primary" style="padding-top: 0px; padding-bottom: 0px; font-size: 11px;">Buy now</a>--}%
%{--                    <a href="#" class="btn btn-outline-warning" style="margin-left: 20px; padding-top: 0px; padding-bottom: 0px; font-size: 11px;"><i class="fa-solid fa-cart-plus"></i> Add to cart</a>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--        </div>--}%

%{--        <div class="col-md-3">--}%
%{--            <div class="card hvr-grow" style="border-radius:10px; width: 250px; height: 350px;">--}%
%{--                <a href=""><img class="card-img-top" alt="Card image cap" style="height: 150px; border-radius:5px;"></a>--}%
%{--                <div class="card-body" style="line-height: 0px;">--}%
%{--                    <p class="d-inline text-light" style="background: Tomato; padding:0 5px 0 5px; border-radius: 15px; font-size: 11px; font-weight: 600;">$150.00</p>--}%
%{--                    <h5 class="card-title" style="font-size: 11px; font-weight: 600; margin-top: 10px;"><a>React - The Complete Guide (incl Hooks, React Router)</a></h5>--}%
%{--                    <table class="table" style="font-size: 11px;">--}%
%{--                        <tr>--}%
%{--                            <td><i class="fa-regular fa-user"></i> Instructor</td>--}%
%{--                            <td>ABC</td>--}%
%{--                        </tr>--}%
%{--                        <tr>--}%
%{--                            <td><i class="fa-regular fa-clock"></i> Duration</td>--}%
%{--                            <td>20 Hours</td>--}%
%{--                        </tr>--}%
%{--                        <tr>--}%
%{--                            <td><i class="fa-regular fa-file"></i> Lecture</td>--}%
%{--                            <td>32</td>--}%
%{--                        </tr>--}%
%{--                    </table>--}%
%{--                    <a href="#" class="btn btn-primary" style="padding-top: 0px; padding-bottom: 0px; font-size: 11px;">Buy now</a>--}%
%{--                    <a href="#" class="btn btn-outline-warning" style="margin-left: 20px; padding-top: 0px; padding-bottom: 0px; font-size: 11px;"><i class="fa-solid fa-cart-plus"></i> Add to cart</a>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--        </div>--}%

%{--        <div class="col-md-3">--}%
%{--            <div class="card hvr-grow" style="border-radius:10px; width: 250px; height: 350px;">--}%
%{--                <a href=""><img class="card-img-top" alt="Card image cap" style="height: 150px; border-radius:5px;"></a>--}%
%{--                <div class="card-body" style="line-height: 0px;">--}%
%{--                    <p class="d-inline text-light" style="background: MediumSeaGreen; padding:0 5px 0 5px; border-radius: 15px; font-size: 11px; font-weight: 600;">$150.00</p>--}%
%{--                    <h5 class="card-title" style="font-size: 11px; font-weight: 600; margin-top: 10px;"><a>Photoshop Master Course: From Beginner to Photoshop Pro</a></h5>--}%
%{--                    <table class="table" style="font-size: 11px;">--}%
%{--                        <tr>--}%
%{--                            <td><i class="fa-regular fa-user"></i> Instructor</td>--}%
%{--                            <td>ABC</td>--}%
%{--                        </tr>--}%
%{--                        <tr>--}%
%{--                            <td><i class="fa-regular fa-clock"></i> Duration</td>--}%
%{--                            <td>20 Hours</td>--}%
%{--                        </tr>--}%
%{--                        <tr>--}%
%{--                            <td><i class="fa-regular fa-file"></i> Lecture</td>--}%
%{--                            <td>32</td>--}%
%{--                        </tr>--}%
%{--                    </table>--}%
%{--                    <a href="#" class="btn btn-primary" style="padding-top: 0px; padding-bottom: 0px; font-size: 11px;">Buy now</a>--}%
%{--                    <a href="#" class="btn btn-outline-warning" style="margin-left: 20px; padding-top: 0px; padding-bottom: 0px; font-size: 11px;"><i class="fa-solid fa-cart-plus"></i> Add to cart</a>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--        </div>--}%
    </div>
</div>
</body>
</html>
