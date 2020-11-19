<%@ page import ="java.sql.*"%>

<%String sessioneditcourse =(String)session.getAttribute("sessioneditcourse");
//out.print(sessioneditcourse);

String ucoursename=request.getParameter("ucoursename");
//out.print(ucoursename);

try
{
	Class.forName ("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql = "UPDATE  tbl_course_entry set coursename='"+ucoursename+"' where coursename='"+sessioneditcourse+"'  ";
    PreparedStatement pst = con.prepareStatement(sql);
    int i = pst.executeUpdate();
	if(i>0)
	       {
	  
	      session.setAttribute("sessionupdatepass","course updated!!!!");
	      response.sendRedirect("dashboard.jsp");
		  session.setAttribute("sessioneditcourse", null);
	      }
    	con.close();
    	pst.close();
    	
    
}
catch(Exception e)
{
	
out.print(e.getMessage());
}

%>