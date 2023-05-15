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
                <div class="card-header bg-info"><h3 class="text-light">Messages</h3></div>
                <div class="card-body">
                    <g:if test="${reply}">
                        <table class="table table-bordered">
                            <tr>
                                <td>Full Name</td>
                                <td class="value">${reply.fullname}</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td class="value">${reply.email}</td>
                            </tr>
                            <tr>
                                <td>Subject</td>
                                <td class="value">${reply.subject}</td>
                            </tr>
                            <tr>
                                <td>Message</td>
                                <td class="value">${reply.message}</td>
                            </tr>
                        </table>
                        <br>
                        <p style="font-weight: bold; color: #5a6268">Reply:</p>
                        <g:form controller="contactUs" action="update" method="PUT">
                            <g:hiddenField name="id" bean="${contactUs}" value="${reply.id}"/>
                            <g:hiddenField name="fullname" bean="${contactUs}" value="${reply.fullname}"/>
                            <g:hiddenField name="email" bean="${contactUs}" value="${reply.email}"/>
                            <g:hiddenField name="subject" bean="${contactUs}" value="${reply.subject}"/>
                            <g:hiddenField name="message" bean="${contactUs}" value="${reply.message}"/>
                            <g:textArea class="form-control" name="replyMessage" bean="${contactUs}" value="${reply.replyMessage}"/>
                            <br>
                            <g:submitButton class="btn btn-block btn-success" name="update" value="Send"/>
                        </g:form>
                    </g:if>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>

</body>
</html>