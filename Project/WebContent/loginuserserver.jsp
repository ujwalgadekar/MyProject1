<%@ page import ="java.sql.*" %>
<%
String useremail=request.getParameter("useremail");
String userpassword=request.getParameter("userpassword");
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql="SELECT * FROM tbl_student_registration WHERE email='"+useremail+"' AND password='"+userpassword+"'";
	PreparedStatement pst =con.prepareStatement(sql);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{   
		
		session.setAttribute("sessionloginuserpass", useremail );
		
		RequestDispatcher rd =request.getRequestDispatcher("userprofile.jsp");
		rd.forward(request, response);
	}
	else
	{
		session.setAttribute("sessionloginuserfail", " * invalid emailid or password");
		response.sendRedirect("login.jsp");
	}
}
catch(Exception e)
{
out.print(" "+e.getMessage());
}

%>