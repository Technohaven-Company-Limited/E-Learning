<%@ page import="elearning.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>REGISTRATION</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <div class="card mt-5">
                <div class="card-header bg-info"><h3 id="header">Registration</h3></div>
                <div class="card-body">
                    <g:form controller="user" action="save" method="POST">
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Your Role</label></div>
                            <div class="col-8">
%{--                                <g:select name="user.company.id"--}%
%{--                                          from="${Company.list()}"--}%
%{--                                          value="${user?.company.id}"--}%
%{--                                          optionKey="id" />--}%
                                <g:select class="form-control" from="['Learner', 'Trainer']" noSelection="['':'Choose your role']" name="roleName" value="${roleName}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Full Name</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="fullName" value="${fullName}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Email</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="email" value="${email}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Username</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="userName" value="${userName}"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Password</label></div>
                            <div class="col-8">
                                <g:passwordField class="form-control" name="passWord" value="${passWord}"/>
                            </div>
                        </div>
                        <br>
                        <div id="btn_div">
                            <g:submitButton class="btn btn-outline-primary" name="save" value="Submit"/>
                            <button class="btn btn-outline-danger ml-3">Reset</button>
                        </div>
                    </g:form>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-8">
                            <a id="account" href="/login">Already have an account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-3"></div>
    </div>
</div>

</body>
</html>