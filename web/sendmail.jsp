<%@page import="Efficient.mail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.security.Key"%> 

<%@ page import="javax.crypto.Cipher"%>
<%@ page import="javax.crypto.spec.SecretKeySpec"%>

<%@ page import="sun.misc.BASE64Decoder"%>
<%@ page import="sun.misc.BASE64Encoder"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.DriverManager"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String ALGORITHM = "AES";
int ITERATIONS = 1;
byte[] keyValue = 
    new byte[] { 'T', 'h', 'i', 's', 'I', 's', 'A', 'S', 'e', 'c', 'r', 'e', 't', 'K', 'e', 'y'};

String mail=request.getParameter("mail");
String salt="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root","root");
PreparedStatement pst=con.prepareStatement("select * from register where gmail=?");
pst.setString(1,mail);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	salt=rs.getString(7);
}
String sub=request.getParameter("sub");
String msg1=request.getParameter("msg");
String msg="";
Key key = new SecretKeySpec(keyValue, ALGORITHM);
Cipher c = Cipher.getInstance(ALGORITHM);  
c.init(Cipher.ENCRYPT_MODE, key);
String valueToEnc = null;
String eValue = msg1;
for (int i = 0; i < ITERATIONS; i++) {
    valueToEnc = eValue;
    byte[] encValue = c.doFinal(valueToEnc.getBytes());
    eValue = new BASE64Encoder().encode(encValue);
    msg=eValue;
}
//System.out.println("dskf"+eValue);
String from = (String) session.getAttribute("gmail");
String pwd = (String) session.getAttribute("pwd");
 mail m= new mail();
       m.secretMail(msg, mail, mail);
       response.sendRedirect("loginsuccess.jsp?m1=success");
%>

</body>
</html>