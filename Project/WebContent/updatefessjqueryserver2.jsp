<%@page import="java.sql.*"%>
<%
String ADDFEES=request.getParameter("ADDFEES");
//System.out.println(ADDFEES);
String remaningfees=(String)session.getAttribute("sessioncurrentremaningfees");

int a=Integer.parseInt(request.getParameter("ADDFEES"));

//out.print(""+abc);

int b=Integer.parseInt(remaningfees);

//System.out.println(b);
int c=b-a;
String newremaningfees=Integer.toString(c);
out.print(newremaningfees);


%>
