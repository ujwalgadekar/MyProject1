<%@ page import ="java.sql.*"%>

<% String id=request.getParameter("id");
String ufees=request.getParameter("ufees");

String upaidfees=request.getParameter("upaidfees");
int a=Integer.parseInt(request.getParameter("ufees"));
int b=Integer.parseInt(request.getParameter("upaidfees"));

int c=a-b;
String remainingfees=Integer.toString(c);



try
{
	Class.forName ("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
	String sql = "UPDATE  tbl_all_student_registration set paidfees='"+upaidfees+"',remainingfees='"+remainingfees+"' where id='"+id+"'  ";
    PreparedStatement pst = con.prepareStatement(sql);
    int i = pst.executeUpdate();
	if(i>0)
	       {
	  
	      session.setAttribute("sessionupdatepass","fees updated!!!!");
	      response.sendRedirect("dashboard.jsp");
		  
	      }
    	con.close();
    	pst.close();
    	
    
}
catch(Exception e)
{
	
out.print(e.getMessage());
}

%>