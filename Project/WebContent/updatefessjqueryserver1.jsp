<%@page import="java.sql.*"%>
<%
String ADDFEES=request.getParameter("ADDFEES");
//System.out.println(ADDFEES);
String paidfess=(String)session.getAttribute("sessioncurrentfees");

int a=Integer.parseInt(request.getParameter("ADDFEES"));

//out.print(""+abc);

int b=Integer.parseInt(paidfess);

//System.out.println(b);
int c=a+b;
String newpaidfees=Integer.toString(c);
out.print(newpaidfees);


%>
