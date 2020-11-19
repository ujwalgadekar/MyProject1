<%@ page import ="java.sql.*" %>

<%
String courseid="";
String unewcoursename =request.getParameter("unewcoursename");
//out.print(unewcoursename);

try{

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql = "select max(id) from tbl_course_entry";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	int id=0;
	while(rs.next())
	{
		id = rs.getInt(1);
	}
	id = id+1;
 courseid="CS_"+id+"_"+unewcoursename;
 con.close();
 pst.close();
}catch(Exception ex)
{
	out.println(""+ex.getMessage());
}

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql ="insert into tbl_course_entry (coursenameid,coursename) values ('"+courseid+"','"+unewcoursename+"')";
	PreparedStatement pst =con.prepareStatement(sql);
	int i = pst.executeUpdate();
    if(i>0)
    {
    	session.setAttribute("sessioncourseaddpass","Course Add!!!");
		response.sendRedirect("dashboard.jsp");
    }
    else
    {
    	session.setAttribute("sessioncourseaddfail","Course not add" );
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