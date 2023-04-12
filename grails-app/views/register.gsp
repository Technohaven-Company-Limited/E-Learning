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
                    <form action="/user/save" class="form" method="post">
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Your Role</label></div>
                            <div class="col-8">
                                <select class="form-control">
                                    <option hidden>Choose your role</option>
                                    <option>Learner</option>
                                    <option>Trainer</option>
                                </select>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Full Name</label></div>
                            <div class="col-8">
                                <input class="form-control" type="text" name="fullName">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Email</label></div>
                            <div class="col-8">
                                <input class="form-control" type="email">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Username</label></div>
                            <div class="col-8">
                                <input class="form-control" type="text">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-3"><label>Password</label></div>
                            <div class="col-8">
                                <input class="form-control" type="password">
                            </div>
                        </div>
                        <br>
                        <div id="btn_div">
                            <a class="btn btn-outline-primary" href="#" type="submit">Submit</a>
                            <a class="btn btn-outline-danger ml-3" href="#">Reset</a>
                        </div>
                    </form>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-8">
                            <a id="account" href="#">Already have an account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-3"></div>
    </div>
</div>

<p> ${_fname} </p>

</body>
</html>