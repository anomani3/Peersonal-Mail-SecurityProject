<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.DriverManager"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String mail=request.getParameter("mail");
String pwd=request.getParameter("password");
request.getSession().setAttribute("gmail",mail);
request.getSession().setAttribute("pwd",pwd);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root","root");
PreparedStatement pst=con.prepareStatement("select * from register where gmail=? && pwd=? ");
pst.setString(1,mail);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
int i=0;
if(rs.next())
{
	i++;
}
if(i>0)
{%>
	<jsp:forward page="loginsuccess.jsp"></jsp:forward>
<%}else
{
   
	out.println("WRONG CREDINTALS??");
}


%>
</body>
</html>