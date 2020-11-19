<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<% 
String SELECT_COURSE = request.getParameter("SELECT_COURSE");
//String SELECT_COURSE ="ADVANCE JAVA";
//out.print(SELECT_COURSE);
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql="select distinct fees from tbl_batch_entry where selectcoursename='"+SELECT_COURSE+"'";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	
	while(rs.next())
	{
		
		out.print(rs.getString(1));
		
	
	}
	
	con.close();
	pst.close();
}

catch(Exception e)
{
	out.print(" "+e.getMessage());
}
  
  %>

