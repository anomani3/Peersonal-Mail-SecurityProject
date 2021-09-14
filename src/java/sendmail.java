

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class sendmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String SMTP_HOST_NAME = "smtp.gmail.com";
	 String SMTP_PORT = "465";
	 
	 String emailSubjectTxt = "hi";
	 String emailFromAddress = "shiva.1000projects@gmail.com";
	 String pwd="9989765191";
	 String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 emailFromAddress=request.getParameter("from");
		 pwd=request.getParameter("pwd");
		 System.out.println(emailFromAddress);
		 System.out.println(pwd);
		 String emailMsgTxt=request.getParameter("msg");
			 String gmail=request.getParameter("mail");
                         String key=request.getParameter("key1");
			 emailSubjectTxt=request.getParameter("sub");
			String[] sendTo = new String[1];
			sendTo[0]=gmail;
			
			try {
				sendSSLMessage(sendTo, emailSubjectTxt, emailMsgTxt, emailFromAddress);
				response.sendRedirect("home.html");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			}
			public void sendSSLMessage(String recipients[], String subject,
					String message, String from) throws MessagingException {
				boolean debug = true;
				Properties props = new Properties();
				props.put("mail.smtp.host", SMTP_HOST_NAME);
				props.put("mail.smtp.auth", "true");
				props.put("mail.debug", "true");
				props.put("mail.smtp.port", SMTP_PORT);
				props.put("mail.smtp.socketFactory.port", SMTP_PORT);
				props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
				props.put("mail.smtp.socketFactory.fallback", "false");
				
				System.out.println("from"+emailFromAddress);
				System.out.println("from"+pwd);
				Session session = Session.getDefaultInstance(props,
						new javax.mail.Authenticator() {
					
					
					
					protected PasswordAuthentication getPasswordAuthentication() {
								return new PasswordAuthentication(
										emailFromAddress, pwd);
							}
						});

				session.setDebug(debug);

				Message msg = new MimeMessage(session);
				InternetAddress addressFrom = new InternetAddress(from);
				msg.setFrom(addressFrom);

				InternetAddress[] addressTo = new InternetAddress[recipients.length];
				for (int i = 0; i < recipients.length; i++) {
					addressTo[i] = new InternetAddress(recipients[i]);
				}
				msg.setRecipients(Message.RecipientType.TO, addressTo);

				// Setting the Subject and Content Type
				msg.setSubject(subject);
				msg.setContent(message, "text/plain");
				Transport.send(msg);
			
	 }
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
