<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" id="table1">
<thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Full Name</th>
                                                
                                                
                                                <th>Date of Registartion</th>
                                                <th>Batch</th>
                                                <th>Total Fees</th>
                                                <th>Paid Fess</th>
                                                <th>Remaining Fees</th>
                                                <th>Update Fees</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
	<%
		String batchname = request.getParameter("batchname");
		//String batchname = "BATCH1";
	
	
	 try
     {
     	   Class.forName("com.mysql.jdbc.Driver");
        	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project","root","");
     	   String sql ="SELECT * FROM tbl_fees_management where batch='"+batchname+"'";
     		PreparedStatement pst =con.prepareStatement(sql);
     	     ResultSet rs = pst.executeQuery();
     	   while(rs.next())
     	   {
     		   
     	   %>
     		   <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("dor")%></td>
                <td><%=rs.getString("batch")%></td>
                <td><%=rs.getString("totalfees")%></td>
                <td><%=rs.getString("paidfees")%></td>
                <td><%=rs.getString("remaningfees")%></td>
                
               
               
                <td><a href="fees_management.jsp?id=<%=rs.getInt(1)%>"><span class="fa fa-pending fa-spin"></span></a></td> 
               
               
            </tr>
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
	 </tbody>
	</table>
</body>
</html>