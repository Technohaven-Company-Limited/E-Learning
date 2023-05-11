<%@ page import="elearning.Course" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>COURSE DETAILS</title>
    %{--    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%

    <style>
        .social_icon {
            list-style: none;
        }

        .social_icon li {
            font-size: 25px;
            margin: 5px 10px 0;
        }
        .cpy {
            min-height: 185px;
            padding: 50px 0;
        }

        .cpy p {
            margin: 10px 0 0 0;
            color: white;
            font-weight: 500;
            font-size: 16px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <div class="card mt-5">
                <div class="card-header bg-info"><h3 class="text-light">About Course</h3></div>
                <g:if test="${show}">
                    <div class="row card-body">
                        <div class="col-8" style="margin: 10px 0 50px 0;">
                            <div class="card" style="background: white; border-radius: 15px;">
                            <g:img class="card-img-top" dir="images" file="${show.courseLogo}" alt="Card image cap" style="height: 400px; width: auto; margin: 20px; border-radius: 20px;"/>
                                <div class="card-body">
                                    <h5 style="font-weight: 600;">${show.courseName}</h5>
                                    <br>
                                    <h4 class="text-center">Description</h4>
                                    <p style="align-items: center;">${show.courseDescription}</p>
                                <br>
                                <g:link controller="course" action="lessonList" params="[code: show.courseCode]">Show all lessons</g:link>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4" style=" border-radius: 15px; margin: 10px 0 10px 0; ">
                            <div style="background: white; border: 1px solid #33ccc5; border-radius: 15px; padding: 10px;">
                                <div class="text-center">
                                    <p class="d-inline text-light" style="background: #FF6347; padding:0 5px 0 5px; border-radius: 15px; font-size: 18px; font-weight: 600;">${show.coursePrice}</p>
                                </div>
                                <table class="table">
                                    <tr>
                                        <td><i class="fa-solid fa-book"></i> Release</td>
                                        <td>${show.courseUploadDate}</td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fa-user-tie"></i> Instructor</td>
                                        <td>${show.courseTrainer}</td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fa-clock"></i> Duration</td>
                                        <td>${show.courseDuration}</td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fa-file"></i> Discount</td>
                                        <td>${show.courseDiscount}</td>
                                    </tr>
                                </table>
                                <div class="text-center">
                                    <g:link class="btn btn-sm btn-info text-light" style="padding: 5px; text-decoration: none;">Enroll Now</g:link>
                                </div>
                            </div>
                            <div class="cpy" style="border: none;">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="text-center">
                                                <p class="text-info">Share Course</p>
                                            </div>
                                            <div>
                                                <ul class="social_icon" style="display: flex; justify-content: center;">
                                                    <li><g:link href="#"><i class="fa-brands fa-facebook"></i></g:link></li>
                                                    <li><g:link href="#"><i class="fa-brands fa-twitter"></i></g:link></li>
                                                    <li><g:link href="#"><i class="fa-brands fa-linkedin"></i></g:link></li>
                                                    <li><g:link href="#"><i class="fa-brands fa-instagram"></i></g:link></li>
                                                    <li><g:link href="#"><i class="fa-brands fa-youtube"></i></g:link></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>
        </div>
        <div class="col-1"></div>
    </div>
</div>

</body>
</html>