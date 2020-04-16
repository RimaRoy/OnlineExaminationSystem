<html>
<head>
<body>
<%@ page import="java.sql.*" %>
<%
	String name=request.getParameter("nm");
	String pass=request.getParameter("ps");
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from register where name='"+name+"' and pass='"+pass+"'");
		
		
		
		if(rs.next())
		{
			response.sendRedirect("admin.jsp");
		}
		else
		{
			%>
			<script>
				alert("wrong input");
			</script>
			<%
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
			rd.include(request,response);
		}
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
			%>
			

</body>

</html>