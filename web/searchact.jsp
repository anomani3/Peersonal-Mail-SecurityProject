
<!DOCTYPE html>
<html lang="en">
  <head>


<%@ page import="javax.crypto.Cipher"%>
<%@ page import="javax.crypto.spec.SecretKeySpec"%>

<%@ page import="sun.misc.BASE64Decoder"%>
<%@ page import="sun.misc.BASE64Encoder"%>
<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>

<%


	try 
{
	
		
		
		
	HttpSession ses = request.getSession(true);
                String gmail = ses.getAttribute("gmail").toString();
		String pwd= request.getParameter("pwd");	
		
		if(pwd.equalsIgnoreCase(""))
		{
			
		}
		else
		{
		
		Statement stmt=connection.createStatement();
		    String strQuery = "select key1 from register where gmail='"+gmail+"' and pwd='"+pwd+"' ";
		    ResultSet rs = stmt.executeQuery(strQuery);
		    if(rs.next()==true){
		    	String key1 =rs.getString(1);
		    	 out.println("Your Secret Key is->"+key1);
		    }
		    else
		    {
		    
		    
		    out.println("Secret Key Mismatch....");
			  %><p><a href="Search.jsp">Back</a></p>

			  </body>
			  </html>
			  <%
	          }
		}
		
		 }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        
        <center><table style="width:30%" border="2">
            <br><br><br><br>     
  <tr>
    <th>Results</th>
     
</tr>

        </table></center>
        <br><br>
        