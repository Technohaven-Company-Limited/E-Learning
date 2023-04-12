<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 4/12/2023
  Time: 12:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title> LOGIN PAGE </title>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <div id="background_box">
                <form action=" ">

                    <h1 style="text-align: center; margin: 10% ">LOGIN HERE</h1>

                    <div style="text-align: center; margin: 5% " >
                        <label name="username">USERNAME:</label>
                        <input type="text"  name="username" placeholder="Enter Here"/>
                    </div>

                    <div style="text-align: center; margin: 5% ">
                        <label name="password"> PASSWORD:</label>
                        <input type="password"  name="password" placeholder="Enter Here"/>
                    </div>

                    <div style="text-align: center; margin: 5% " >
                        <button style="background-color: green ; color: white">Login</button>

                    </div>


                </form>

                <p style="text-align: center">Do not have any account? <a href="/register">Register here</a></p>
            </div>
        </div>
        <div class="col-3"></div>
    </div>
</div>

</body>
</html>