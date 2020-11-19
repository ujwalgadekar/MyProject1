<%@ page import ="java.sql.*"%>

<% String id=request.getParameter("id");

String ufees=request.getParameter("ufees");

String upaidfees=request.getParameter("upaidfees");
String uremainingfees=request.getParameter("uremainingfees");

int a=Integer.parseInt(request.getParameter("ufees"));
int b=Integer.parseInt(request.getParameter("upaidfees"));

if(a >= b)
{
	try
	{
		Class.forName ("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
		String sql = "UPDATE  tbl_fees_management set paidfees='"+upaidfees+"',remaningfees='"+uremainingfees+"' where id='"+id+"'  ";
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
	catch(Exception f)
	{
		
	out.print(f.getMessage());
	}
}
else 
{
    session.setAttribute("sessionupadtefail", "your amount is more than total fees ");
    response.sendRedirect("dashboard.jsp");
    
}


%>