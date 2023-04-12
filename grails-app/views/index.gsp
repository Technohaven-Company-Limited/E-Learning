<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}" type="text/css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
                <div id="background_box">
                    <form>

                        <h1 style="text-align: center; margin: 10% ">SIGN UP</h1>

                        <div style="text-align: center; margin: 5% " >
                            <label name="username">USERNAME:</label>
                            <input type="text"  name="username" placeholder="Enter Here"/>
                        </div>

                        <div style="text-align: center; margin: 5% " >
                            <label name="email">EMAIL:</label>
                            <input type="text"  name="email" placeholder="Enter Here"/>
                        </div>

                        <div style="text-align: center; margin: 5% ">
                            <label name="password">NEW PASSWORD:</label>
                            <input type="password"  name="password" placeholder="Enter Here"/>
                        </div>
                        <div style="text-align: center; margin: 5% ">
                            <label name="password"> PASSWORD:</label>
                            <input type="password"  name="password" placeholder="Enter Here"/>
                        </div>

                        <div style="text-align: center; margin: 5% " >
                            <button style="background-color: green ; color: white">Submit</button>
                            <button style="background-color: brown ; color: white">Reset</button>
                        </div>


                    </form>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>

</body>
</html>
