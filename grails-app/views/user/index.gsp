<%@ page import="elearning.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
%{--    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%
</head>
<body>
    <div class="container">
        <h1>User List</h1>
        <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th>Role</th>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Username</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            <g:each in="${users}" var="user">
                <tr>
                    <td>${user.roleName}</td>
                    <td>${user.fullName}</td>
                    <td>${user.email}</td>
                    <td>${user.userName}</td>
                    <td>
                        <g:link action="edit" params="[id: user.id]">Edit</g:link>
                        <g:form action="delete" params="[id: user.id]">
                            <button>Delete</button>
                        </g:form>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

</body>
</html>