<html>
    <head>
        <style>
        
            h1{color:yellow;text-align:center;background:blue;}
            h2{color:white;background:blue;}
            td{color:blue;}
            .container{
                         background:black;
                         border:5px solid black;
                         margin:0px 545px;
                         top:143px;
                         position:relative;
                      }
                      .btn{
                              background:Blue;
                      }       
            
        </style>
        <script>
                function go(page)
                {
                	document.getElementById("f").action=page;
                	document.getElementById("f").submit();
                }
        </script>
        </head>
    <body style="background:url(https://it.cornell.edu/sites/default/files/Two-Step%20Login/two_step%20login%20laptop%20smartphone.jpg)">
    
        <h1>Online Examination System</h1>
        <div class="container">
        <form id="f" action="faclogact.jsp" method="post">
            <table align="center">
                <tr>
                    <th colspan="2"><h2>Login Form</h2></th>
                </tr>
                <tr>
                    <td>Faculty id</td>
                    <td><input type="text" name="nm"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="ps"></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right"><input type="submit" value="Sign in" class="btn"><input type="submit" value="Sign up" class="btn" onclick="go('register.jsp')"></td>
                </tr>
                                
            </table>
            </form>
        </div>
    </body>
</html>