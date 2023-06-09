<%@ page import="elearning.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
%{--    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%
</head>
<body>
    <div class="container-fluid">
        <h1>User List</h1>
        <table class="table table-info table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Role</th>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Username</th>
                    <th style="width: 130px">Action</th>
                </tr>
            </thead>
            <tbody>
            <g:each in="${users}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.roleName}</td>
                    <td>${user.fullName}</td>
                    <td>${user.email}</td>
                    <td>${user.userName}</td>
                    <td>
                        <div class="btn-group">
                            <g:link class="btn btn-sm btn-primary" style="text-decoration: none" action="edit" params="[id: user.id]"><i class="fa-solid fa-pen-to-square" title="Edit"></i></g:link>
                            <g:link class="btn btn-sm btn-danger ml-3" style="text-decoration: none" action="delete" params="[id: user.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><i class="fa-solid fa-trash-can" title="Delete"></i></g:link>
                            <g:link class="btn btn-sm btn-success ml-3" style="text-decoration: none" controller="course" action="queryCourseWithName" params="[trainer: user.fullName]">List</g:link>
                        </div>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</body>
</html>