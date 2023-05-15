<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 4/12/2023
  Time: 12:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title> PROFILE </title>

    <style>
        .value{
            font-style: italic;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <div class="card mt-5" style="box-shadow: 10px 10px 8px LightGray;">
                <div class="card-header bg-info"><h3 class="text-light">Profile</h3></div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-5">
                            <g:img dir="images" file="profile.png" width="80%" height="100%"/>
                        </div>
                        <div class="col-7">
                            <g:link class="btn btn-sm btn-primary" style="text-decoration: none; float: right" controller="user" action="edit"><i class="fa-solid fa-pen-to-square" title="Edit"></i> Edit</g:link>
                            <br>
                            <g:if test="${profile}">
                                <table class="table table-bordered">
                                    <tr>
                                        <td>Full Name</td>
                                        <td class="value">${profile.fullName}</td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td class="value">${profile.email}</td>
                                    </tr>
                                    <tr>
                                        <td>Username</td>
                                        <td class="value">${profile.userName}</td>
                                    </tr>
                                    <tr>
                                        <td>Role</td>
                                        <td class="value">${profile.roleName}</td>
                                    </tr>
                                </table>
                            </g:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>

</body>
</html>