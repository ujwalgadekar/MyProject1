<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<select>
<option value="sid">Select Course ID</option>

<% 
String COURSENAMEID = request.getParameter("COURSENAMEID");
//String COURSENAMEID = "CS_9ANGULAR";

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql="select  distinct coursename from tbl_course_entry where coursenameid='"+COURSENAMEID+"'";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	while(rs.next())
	{
		%>
		   <option><%=rs.getString(1)%></option>
	    <%
	
	}
	con.close();
	pst.close();
}

catch(Exception e)
{
	out.print(" "+e.getMessage());
}
  
  %>
  </select>
</body>
</html>