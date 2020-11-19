<%@ page import="java.sql.*" %>
<% 
String id=request.getParameter("id");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql="DELETE FROM tbl_course_entry WHERE id='"+id+"'";
	PreparedStatement pst = con.prepareStatement(sql);
	int i = pst.executeUpdate();
	if(i>0)
	{
		session.setAttribute("sessioncoursedelete","course deleted!!!!");
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