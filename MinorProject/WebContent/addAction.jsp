<%@ page import="java.sql.* " %>
<%
	String qt=request.getParameter("ta");
	String opt1=request.getParameter("opt1");
	String opt2=request.getParameter("opt2");
	String opt3=request.getParameter("opt3");
	String opt4=request.getParameter("opt4");
	String ans=request.getParameter("ans");
	
	int qno;
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		PreparedStatement ps1=con.prepareStatement("select qid from ques order by qid desc");
		ResultSet rs=ps1.executeQuery();
		if(rs.next())
		{
			qno=rs.getInt(1)+1;
		}
		else{
			qno=1;
		}
			PreparedStatement ps2=con.prepareStatement("insert into ques values(?,?,?,?,?,?,?)");
			ps2.setInt(1,qno);
			ps2.setString(2,qt);
			ps2.setString(3,opt1);
			ps2.setString(4,opt2);
			ps2.setString(5,opt3);
			ps2.setString(6,opt4);
			ps2.setString(7,ans);
			ps2.executeUpdate();
			%>
			<script type="text/javascript">
			alert("Question added");
			</script>
			<%
			RequestDispatcher rd=request.getRequestDispatcher("addQuestion.jsp");
			rd.include(request,response);
			con.close();
	
	}
	catch(Exception e)
	{
		out.println("Error "+e);
	}
%>	