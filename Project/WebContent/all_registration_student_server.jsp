<%@ page import ="java.sql.*"%>

<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>

<%
	String id=request.getParameter("id");
//out.print(id);
String ufullname =request.getParameter("ufullname");
String uemail =request.getParameter("uemail");
String upassword =request.getParameter("upassword");
String uphone =request.getParameter("uphone");
String ugender =request.getParameter("ugender");
String ucity =request.getParameter("ucity");
String ubatch =request.getParameter("ubatch");
String udor =request.getParameter("udor");
String utiming =request.getParameter("utiming");
String ucollege =request.getParameter("ucollege");
String totalfees =request.getParameter("ufees");
String uaddress =request.getParameter("uaddress");
String uselectcourse =request.getParameter("uselectcourse");
String uamount =request.getParameter("uamount");
String usubject="   Welcome to HSGROUP  ";
String umessage="  Your Admission has been confirmed!!!   ";

int a=Integer.parseInt(request.getParameter("ufees"));
int b=Integer.parseInt(request.getParameter("uamount"));

int c=a-b;
String remainingfees=Integer.toString(c);

String checkuseremail=(String)session.getAttribute("checkuseremail");
if(checkuseremail!=null)
{
//all student registration insert opertaion---
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project", "root", "");
	String sql ="insert into tbl_all_student_registration (fullname	,email, password,phone, gender, city, batch,	dor, timing, college, totalfees,	address, selectcourse,paidfees,remainingfees) values('"+ufullname+"','"+uemail+"','"+upassword+"','"+uphone+"','"+ugender+"','"+ucity+"','"+ubatch+"','"+udor+"','"+utiming+"','"+ucollege+"','"+totalfees+"','"+uaddress+"','"+uselectcourse+"','"+uamount+"','"+remainingfees+"')";
	PreparedStatement pst =con.prepareStatement(sql);
	int i =pst.executeUpdate();
	if(i>0)
	{  
		//delete enquiry opertaion---
		String sql2 = "insert into tbl_fees_management(name,totalfees,remaningfees,paidfees,course,batch,dor) values('"+ufullname+"','"+totalfees+"','"+remainingfees+"','"+uamount+"','"+uselectcourse+"','"+ubatch+"','"+udor+"')";
		PreparedStatement pst2 = con.prepareStatement(sql2);
		 pst2.executeUpdate(sql2);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project", "root", "");
			String sql1 ="DELETE FROM tbl_student_enquiry WHERE id='"+id+"'";
			PreparedStatement pst1 =con1.prepareStatement(sql1);
			int i1 =pst1.executeUpdate();
			if(i1>0)
			{
				//session.setAttribute("sessionregistrationpass", "registration succesfull now u can login");
				//response.sendRedirect("dashboard.jsp");
			}
			con1.close();
			pst1.close();
		}
      catch(Exception e)
		{
			out.print(" "+e.getMessage());
		}
		//End delete enquiry opertaion---
		
		// send email to register user 
		
		String host = "smtp.gmail.com";
		final String from = "gajbhiyekrunal06@gmail.com";//change accordingly  
		final String password = "9325235409";

		//Get properties object 
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		//get Session   
		Session session1 = Session.getInstance(props, new javax.mail.Authenticator() {
	    protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(from, password);
	}
		});
		//compose message    
		try {
	MimeMessage message = new MimeMessage(session1);
	message.addRecipient(Message.RecipientType.TO, new InternetAddress(uemail));
	message.setSubject(usubject);
	message.setText(umessage);
	//send message  
	Transport.send(message);

	
		} catch (MessagingException e) {throw new RuntimeException(e); }

		session.setAttribute("sessionregistrationpass", "registration succesfull now u can login");
		response.sendRedirect("dashboard.jsp");

	}
	con.close();
	pst.close();
} catch (Exception e) {
	out.print(" " + e.getMessage());
}

//delete enquiry registration---

}

else {
session.setAttribute("sessionsubmitfail", "check your email-Id");
//response.sendRedirect("pending_enquiry_registartion.jsp");
response.sendRedirect("dashboard.jsp");

}
%>