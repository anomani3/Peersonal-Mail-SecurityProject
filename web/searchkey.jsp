    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.security.Key"%> 

<%@ page import="javax.crypto.Cipher"%>
<%@ page import="javax.crypto.spec.SecretKeySpec"%>

<%@ page import="sun.misc.BASE64Decoder"%>
<%@ page import="sun.misc.BASE64Encoder"%>
<%@ page import="java.sql.*" %>
<form name="form1" method="post" action="searchact.jsp">
  <table width="408" border="0" align="center">
    <tr>
      <td width="233"><span class="style3">Enter Your Password to Get Secret Key:-</span></td>
      <td width="165"><label>
        <input type="password" name="pwd">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label></label></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
<%


	try 
{
	
		
		
		
		String name=(String)application.getAttribute("name");
	
		String key1= request.getParameter("key1");	
		
		if(key1.equalsIgnoreCase(""))
		{
			
		}
		else
		{
		Class.forName("com.mysql.jdbc.Driver");
               
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root","root");
		    PreparedStatement pst=con.prepareStatement("select key1 from register where name='"+name+"' and key1='"+key1+"' ");
		      pst.setString(1, name);
                      pst.setString(2, key1);
                      ResultSet rs=pst.executeQuery();
		    if(rs.next()==true){
		    	
		    	String sk =rs.getString(1);
		    	 out.println("Your Secret Key is->"+sk);
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