<%@ page import ="java.sql.*" %>
<%
String uusername=request.getParameter("uusername");
String upassword=request.getParameter("upassword");
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql="SELECT * FROM tbl_admin WHERE username='"+uusername+"' AND password='"+upassword+"'";
	PreparedStatement pst =con.prepareStatement(sql);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("sessionloginadminpass", uusername );
		
		RequestDispatcher rd =request.getRequestDispatcher("dashboard.jsp");
		rd.forward(request, response);
	}
	else
	{
		session.setAttribute("sessionloginadminfail", " * invalid username or password");
		response.sendRedirect("login.jsp");
	}
}
catch(Exception e)
{
out.print(" "+e.getMessage());
}

%>