<%@ page import="java.sql.*"%>
<%
String useremailID= request.getParameter("useremailID");

try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
    String sql ="SELECT * FROM tbl_all_student_registration where email='"+useremailID+"' ";
    PreparedStatement pst = con.prepareStatement(sql);
    ResultSet rs=pst.executeQuery();
    if(rs.next())
    {     // if useremail is already exist!!!!!
	      out.print("Already Register Email");
	      session.setAttribute("checkuseremail", null);
	      
	} 
     else
       {   //if email-id is new.....
	       session.setAttribute("checkuseremail", "insertdata");
     }
   con.close();
   pst.close();
}
catch(Exception e)
{
	out.print(" "+e.getMessage());
}

%>