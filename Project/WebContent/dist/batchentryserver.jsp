<%@ page import="java.sql.*"%>
<%
String uselectcourseid =request.getParameter("uselectcourseid");
String uselectcourse =request.getParameter("uselectcourse");
String ubatch =request.getParameter("ubatch");
String utiming =request.getParameter("utiming");
String ufees =request.getParameter("ufees");
String ucapacity =request.getParameter("ucapacity");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql ="insert into  tbl_batch_entry (selectcourseid, selectcoursename, batch, timing, fees, capacity) values ('"+uselectcourseid+"','"+uselectcourse+"','"+ubatch+"','"+utiming+"','"+ufees+"','"+ucapacity+"')";
	PreparedStatement pst =con.prepareStatement(sql);
	int i = pst.executeUpdate();
    if(i>0)
    {
    	session.setAttribute("sessionbatchaddpass","Batch Add!!!");
		response.sendRedirect("dashboard.jsp");
    }
    else
    {
    	session.setAttribute("sessionbatchaddfail","Batch not add" );
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