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
	String sql="select  distinct batch,timing,fees from tbl_batch_entry where selectcoursename='"+SELECT_COURSE+"'";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	List list = new ArrayList();
	while(rs.next())
	{
		
		list.add(rs.getString(1));
		list.add(rs.getString(2));
		list.add(rs.getString(3));
	
	}
	session.setAttribute("list", list);
	con.close();
	pst.close();
}

catch(Exception e)
{
	out.print(" "+e.getMessage());
}
  
  %>

