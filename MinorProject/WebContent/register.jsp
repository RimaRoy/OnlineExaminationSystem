<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register page</title>
<style>
    .h{background:blue;color:white;font-size:50px;position:absolute;left:360px;border:5px solid gray;padding:20px;}
    h2{left:600px;position:absolute;top:150px;color:red;}
    div{position:absolute;left:460px;top:200px;border-radius:25px;border:4px solid blue;width:300px;height:300px;padding:30px;}
    
    
</style>
<script>
                function go(page)
                {
                	document.getElementById("f").action=page;
                	document.getElementById("f").submit();
                }
        </script>
</head>
<body>
    <br><br>
            <label class="h">Online Examination System</label>
            <h2>Register</h2>
            <div>
            <form id="f" action="registeraction.jsp" method="post">
            <table>
            <tr><th>Reg. no<input type="text" name="id"><br></th></tr>
            <tr><th>Name<input type="text" name="nm"><br></th></tr>
            <tr><th>Role<select name="r">
            <option>Admin</option>
            <option>Faculty</option>
            <option>Student</option>
            </select><br></th></tr>
            <tr><th>Email<input type="email" name="em"><br></th></tr>
            <tr><th>Branch<select name="b">
            <option>CSE</option>
            <option>IT</option>
            <option>ETC</option>
            <option>EEE</option>
            <option>EE</option>
            <option>CIVIL</option>
            <option>MECH</option></select><br></th></tr>
            <tr><th>Password<input type="password" name="ps"><br></th></tr>
            <tr><th colspan="2"><input type="submit" value="Register" ></th></tr>
            </table>
            </form>
            </div>    
                
            
</body>
</html>