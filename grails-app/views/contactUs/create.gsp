<%@ page import="elearning.ContactUs" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>CONTACT HERE</title>
    <style>
        #btn_div{
            display: flex;
            justify-content: center;
        }
        .card{
            border-radius: 10px;
            box-shadow: 10px 10px 8px LightGray;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <div class="card mt-5">
                <div class="card-header bg-info"><h3 class="text-light" id="header">Contact Us</h3></div>
                <div class="card-body">
                    <g:form controller="contactUs" action="save" method="POST">
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-2"><label>Full Name</label></div>
                            <div class="col-3">
                                <g:textField class="form-control" name="fullname" value="${fullname}"/>
                            </div>

                            <div class="col-2"><label>Email</label></div>
                            <div class="col-3">
                                <g:textField class="form-control" name="email" value="${email}"/>
                            </div>
                            <div class="col-1"></div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-2"><label>Subject</label></div>
                            <div class="col-8">
                                <g:textField class="form-control" name="subject" value="${subject}"/>
                            </div>
                            <div class="col-1"></div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-2"><label>Message Body</label></div>
                            <div class="col-8">
                                <g:textArea class="form-control" name="message" value="${message}"/>
                            </div>
                            <div class="col-1"></div>
                        </div>
                        <br>
                        <div id="btn_div">
                            <g:submitButton class="btn btn-primary" name="save" value="Send"/>
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