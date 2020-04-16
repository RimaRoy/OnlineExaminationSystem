<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<style>
		.h{background:blue;color:white;font-size:50px;position:absolute;left:360px;border:5px solid gray;padding:20px;}
		h2{left:550px;position:absolute;top:150px;color:green;}
		th{width:150px;height:50px;border:2px solid gray;background:blue}
            table{position:absolute;top:200px;}
            th:hover{background:gray;border:2px solid blue;color:white;}
            #p{border:2px solid blue;width:600px;height:200px;position:absolute;left:350px;top:200px;visibility:hidden;font-size:20px;color:red;}
         #rp{border:2px solid blue;width:600px;height:200px;position:absolute;left:350px;top:200px;visibility:hidden;}
         
		</style>
		<script>
                function go(page)
                {
                	document.getElementById("f").action=page;
                	document.getElementById("f").submit();
                }
        </script>
        <script>
              function showp()
              {
                   document.getElementById("p").style.visibility="visible";
              	  document.getElementById("rp").style.visibility="hidden";
                  
              }
              function resetp()
              {
            	  document.getElementById("p").style.visibility="hidden";
             	  document.getElementById("rp").style.visibility="visible";
                         	  
              }
        </script>
        
</head>
<body>
	<br><br>
           <label class="h">Online Examination System</label>
           <h2>Welcome Student</h2>
           <form id="f">
            <table>
                <tr><th onclick="showp();">Profile</th></tr>
                <tr><th onclick="go('test.jsp')">Test</th></tr>
                <tr><th onclick="resetp();">Reset Password</th></tr>
                <tr><th onclick="go('logout.jsp')">Logout</th></tr>
            </table>
        </form>
        <div id="p">
            <%
            String name=request.getParameter("n");
            
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps1=con.prepareStatement("select name,email,branch from register where name=?");
	ps1.setString(1,name);
	ResultSet rs=ps1.executeQuery();
	if(rs.next())
	{
		out.println(rs.getString(1) + "<br> " + rs.getString(2) + "<br> " + rs.getString(3));
	}
}
            catch(Exception e){}
		%>
            
        </div>
        <div id="rp">
        <form action="resetpass.jsp">
              <table>
                  <tr><td>Enter New Password</td><td><input type="password" name="np"></td></tr>
                  <tr><td>Enter Old Password</td><td><input type="password" name="op"></td></tr>
                  <tr><td colspan="2"><input type="submit" value="reset"></td></tr>
              </table>
              </form>
        </div>
           </body>
</html>