<%@ page import ="java.sql.*" %>

<%
String ufullname =request.getParameter("ufullname");
//out.print(ufullname);
String uemail =request.getParameter("uemail");
String uphone =request.getParameter("uphone");
String ugender =request.getParameter("ugender");
String uqualification =request.getParameter("uqualification");
String ucollege =request.getParameter("ucollege");
String udoe =request.getParameter("udoe");
String uselectcourse123 =request.getParameter("uselectcourse123");
//out.print(uselectcourse123);
String ubatch =request.getParameter("ubatch");
String utiming =request.getParameter("utiming");
String ufees =request.getParameter("ufees");
String ucapacity =request.getParameter("ucapacity");


String checkuseremail=(String)session.getAttribute("checkuseremail");
if(checkuseremail!=null)
{
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","" );
	String sql="insert into tbl_student_enquiry (fullname , email, phone , gender , qualification , collegename , denquiry, selectcourse, batch, timing, fees, capacity) values ('"+ufullname+"','"+uemail+"','"+uphone+"','"+ugender+"','"+uqualification+"','"+ucollege+"','"+udoe+"','"+uselectcourse123+"','"+ubatch+"','"+utiming+"','"+ufees+"','"+ucapacity+"')"; 
	PreparedStatement pst=con.prepareStatement(sql);
	int i =pst.executeUpdate();
	if(i>0)
	{
		session.setAttribute("sessionenquirypass","Thank You we get in touch with you" );
		response.sendRedirect("index.jsp");
	}
	
	con.close();
	pst.close();
}

catch(Exception e )
{
	   out.print(" "+e.getMessage());
}
}

else
{   
	session.setAttribute("sessionsubmitfail", "username or emailid is invalid ");
	out.print("not submit");
}

%>