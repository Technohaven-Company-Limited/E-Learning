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
    <title> LOGIN PAGE </title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">
                <div class="card mt-5">
                    <div class="card-header bg-info"><h3 class="text-light">Sign In</h3></div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <g:img dir="images" file="logo.jpg" width="100%" height="100%"/>
                            </div>
                            <div class="col-6">
                                <h1>User Login</h1>
                                <br>
                                <form>
                                    <div class="row">
                                        <div class="col-12">
                                            <g:textField class="form-control" name="username" placeholder="Username"/>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-12">
                                            <g:passwordField class="form-control" name="password" placeholder="Password"/>
                                        </div>
                                    </div>
                                    <br>
                                    <div style="display: flex; justify-content: center;">
                                        <button class="btn btn-success">Login</button>
                                    </div>
                                </form>
                                <br>
                                <br>
                                <div>
                                    <p>Do not have any account? <a href="/register">Register here</a></p>
                                </div>
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