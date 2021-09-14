



import java.io.IOException;
import java.security.Key;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.misc.BASE64Decoder;

/**
 * Servlet implementation class decrypt
 */
public class decryptedmsg extends HttpServlet {
	
	
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i=0;
		String msg=null,mail=null;
		String dan="hai",enc=null;
		String check=null;
		ResultSet rs=null;
		Connection con=null;
		PreparedStatement pst=null;
		
		enc=request.getParameter("enc");
		System.out.println("Encrypted Message::::"+enc);
		check=request.getParameter("encdeckey");
		System.out.println("key is "+check);
		 rs=null;
		 System.out.println("1");
		 HttpSession session=request.getSession();
		mail=session.getAttribute("gmail").toString();
		System.out.println(mail);
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root","root");
			
			pst=con.prepareStatement("select key1 from register where key1=? AND gmail=?");
			pst.setString(1, check); 
			pst.setString(2, mail);
			System.out.println("Query iss:::"+pst);
			System.out.println("2");
			rs=pst.executeQuery();
			
			if(rs.next())
			{
				dan=rs.getString(1);
				System.out.println("key is correct:::"+dan);
				i=i+1;
			}
			System.out.println("I Value is::"+i);
			con.close();
			pst.close();
			rs.close();
		} catch (Exception e1) {
			
			e1.printStackTrace();
		}
		
		if(i>0)
		{
			try
			{
			msg=decrypt(enc, check);
			System.out.println("key is correct");
			response.sendRedirect("./decrypt2.jsp?enc="+enc+"&key="+check+"&msg="+msg);
			
			} 
			catch (Exception e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			System.out.println("key not correct");
			response.sendRedirect("./decrypt2.jsp?enc="+enc+"&key="+check+"&msg="+enc);
		}
		
		
		
	}
	public String decrypt(String value, String salt) throws Exception {
		String ALGORITHM = "AES";
		
	    int ITERATIONS = 1;
	     byte[] keyValue = 
	    new byte[] { 'T', 'h', 'i', 's', 'I', 's', 'A', 'S', 'e', 'c', 'r', 'e', 't', 'K', 'e', 'y'};
	    
		long serialVersionUID = 1L;
        Key key = new SecretKeySpec(keyValue, ALGORITHM);
        Cipher c = Cipher.getInstance(ALGORITHM);
        c.init(Cipher.DECRYPT_MODE, key);
  
        String dValue = null;
        String valueToDecrypt = value;
        for (int i = 0; i < ITERATIONS; i++) {
            byte[] decordedValue = new BASE64Decoder().decodeBuffer(valueToDecrypt);
            byte[] decValue = c.doFinal(decordedValue);
            dValue = new String(decValue);
            valueToDecrypt = dValue;
        }
        return dValue;
    }

   
}
