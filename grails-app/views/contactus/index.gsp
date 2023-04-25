<%@ page import="elearning.ContactUs" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    %{--    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%
</head>
<body>
<div class="container-fluid">
    <h1>Message List</h1>
    <table class="table table-info table-bordered">
        <thead>
        <tr>
            <th>Full Name</th>
            <th>Email</th>
            <th>Subject</th>
            <th>Message Body</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${contactus}" var="contact">
            <tr>
                <td>${contact.fullname}</td>
                <td>${contact.email}</td>
                <td>${contact.subject}</td>
                <td>${contact.message}</td>
                <td>
                    <g:link class="btn btn-sm btn-primary" style="text-decoration: none">Reply</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>