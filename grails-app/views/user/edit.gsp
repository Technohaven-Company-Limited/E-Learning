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
                    <div class="card-header bg-info"><h3 id="header">Edit User Info</h3></div>
                    <div class="card-body">
                        <g:form controller="user" action="update" method="PUT">
                            <div class="row">
                                <div class="col-4"></div>
                                <div class="col-8">
                                    <g:hiddenField class="form-control" name="id" bean="${user}" value="${id}"/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-3"><label>Your Role</label></div>
                                <div class="col-8">
                                    <g:select class="form-control" from="['USER', 'TRAINER', 'ADMINISTRATOR']" noSelection="['':'Choose your role']" name="roleName" bean="${user}" value="${user.roleName}"/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-3"><label>Full Name</label></div>
                                <div class="col-8">
                                    <g:textField class="form-control" name="fullName" bean="${user}" value="${fullName}"/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-3"><label>Email</label></div>
                                <div class="col-8">
                                    <g:textField class="form-control" name="email" bean="${user}" value="${email}"/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-3"><label>Username</label></div>
                                <div class="col-8">
                                    <g:textField class="form-control" name="userName" bean="${user}" value="${userName}"/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-3"><label>Password</label></div>
                                <div class="col-8">
                                    <g:passwordField class="form-control" name="passWord" bean="${user}" value="${passWord}"/>
                                </div>
                            </div>
                            <br>
                            <div id="btn_div">
                                <g:submitButton class="btn btn-outline-primary" name="update" value="Update"/>
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