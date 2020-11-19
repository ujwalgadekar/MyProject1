<%@ page import ="java.sql.*" %>

<%

String ucoursenameid =request.getParameter("ucoursenameid");
String unewcoursename =request.getParameter("unewcoursename");

//out.print(unewcoursename);


try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql ="insert into  tbl_course_entry (coursenameid,coursename) values ('"+ucoursenameid+"','"+unewcoursename+"')";
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