<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql="select * from tbl_course_entry where id='"+id+"'";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	while(rs.next())
	{   
		
		session.setAttribute("sessioneditcourse", rs.getString(3) );
		response.sendRedirect("dashboard.jsp");
	}
	con.close();
	pst.close();
}
catch(Exception e)
{
	out.print(" "+e.getMessage());
}


%>