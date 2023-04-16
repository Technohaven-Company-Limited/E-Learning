<%@ page import="elearning.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
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
                    <g:form action="save" method="POST">
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Your Role</label></div>
                            <div class="col-8">
                                <g:select class="form-control" from="['Choose your role', 'Learner', 'Trainer']" name="roleName"/>
%{--                                    <option hidden>Choose your role</option>--}%
%{--                                    <option>Learner</option>--}%
%{--                                    <option>Trainer</option>--}%
%{--                                </g:select>--}%
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Full Name</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" type="text" name="fullName"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Email</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" type="email" name="email"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Username</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" type="text" name="userName"/>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Password</label></div>
                            <div class="col-8">
                                <g:passwordField class="form-control" type="password" name="passWord"/>
                            </div>
                        </div>
                        <br>
                        <div id="btn_div">
                            <g:submitButton class="btn btn-outline-primary" name="save" value="Submit" />
                            <button class="btn btn-outline-danger ml-3">Reset</button>
%{--                            <g:actionSubmit class="btn btn-outline-primary" value="Submit"/>--}%
%{--                            <g:actionSubmit class="btn btn-outline-danger ml-3" action="reset" value="Reset"/>--}%
                        </div>
                    </g:form>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-8">
                            <a id="account" href="/">Already have an account</a>
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