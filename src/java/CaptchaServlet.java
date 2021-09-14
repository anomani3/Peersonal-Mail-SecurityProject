import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;


public class CaptchaServlet extends HttpServlet {


  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;


protected void processRequest(HttpServletRequest request, 
                                HttpServletResponse response) 
                 throws ServletException, IOException {

    int width = 150;
    int height = 50;

    
    		char data[][] = {
    				{'g','y','7','0','N','n','1'},
    				{'G','v','V','t','Y','O','J'},
    				{'p','z','t','c','f','1','H'},
    				{'r','u','6','K','f','d','C'},
    				{'L','1','E','i','x','0','7'},
    				{'j','c','r','n','u','f','N'},
    				{'w','v','P','O','K','Y','I'},
    				{'f','D','J','p','i','x','h'},
    				{'p','1','3','T','Q','g','k'},
    				{'t','c','B','C','n','e','x'},
    				{'1','p','x','T','W','k','v'},
    				{'E','i','N','I','S','e','r'},
    				{'0','I','Q','W','c','n','h'},
    				{'c','C','d','W','K','F','V'},
    				{'e','8','M','A','J','7','1'},
    				{'9','A','t','h','o','f','7'},
    				{'r','j','v','P','S','d','R'},
    				{'p','J','X','F','v','M','w'},
    				{'p','W','m','4','1','7','y'},
    				{'N','a','s','H','U','w','7'},
    				{'X','f','V','C','J','P','e'},
    				{'d','K','4','V','l','F','9'},
    				{'K','Z','G','i','q','O','N'},
    				{'l','G','V','F','R','o','1'},
    				{'R','9','T','O','D','i','M'},
    				{'4','5','2','7','q','O','0'},
    				{'Y','9','W','J','F','H','T'},
    				{'a','t','f','M','L','Z','p'},
    				{'5','j','1','J','9','k','r'},
    				{'5','K','z','N','6','F','B'},
    				{'R','d','G','1','q','9','0'},
    				{'d','1','4','q','Z','f','m'},
    				{'v','g','S','u','q','C','s'},
    				{'o','Q','A','l','r','P','B'},
    				{'h','u','0','M','4','w','o'},
    				{'3','5','d','R','P','W','N'},
    				{'w','C','p','v','Q','7','q'},
    				{'h','3','z','Z','p','5','y'},
    				{'K','F','h','O','6','5','T'},
    				{'D','6','V','b','H','w','j'},
    				{'r','I','9','A','j','s','Q'},
    				{'J','0','b','p','U','l','M'},
    				{'q','C','z','B','6','9','W'},
    				{'4','j','y','c','M','f','u'},
    				{'5','z','v','F','D','h','S'},
    				{'G','J','P','q','m','a','i'},
    				{'H','J','d','Z','q','m','e'},
    				{'H','o','6','w','7','F','d'},
    				{'M','6','e','Z','m','C','V'},
    				{'v','n','O','r','X','q','t'},
    				{'d','g','R','B','j','K','E'},
    				{'9','W','m','O','f','j','U'},
    				{'3','4','u','N','h','X','S'},
    				{'a','w','l','u','Q','y','V'},
    				{'5','M','j','u','P','g','H'},
    				{'8','r','g','A','Q','W','U'},
    				{'P','n','b','8','d','x','M'},
    				{'5','P','O','j','v','Q','K'},
    				{'m','C','s','B','O','r','1'},
    				{'P','a','V','A','N','3','1'}
    };


    BufferedImage bufferedImage = new BufferedImage(width, height, 
                  BufferedImage.TYPE_INT_RGB);

    Graphics2D g2d = bufferedImage.createGraphics();

    Font font = new Font("Georgia", Font.BOLD, 18);
    g2d.setFont(font);

    RenderingHints rh = new RenderingHints(
           RenderingHints.KEY_ANTIALIASING,
           RenderingHints.VALUE_ANTIALIAS_ON);

    rh.put(RenderingHints.KEY_RENDERING, 
           RenderingHints.VALUE_RENDER_QUALITY);

    g2d.setRenderingHints(rh);

    GradientPaint gp = new GradientPaint(0, 0, 
    Color.red, 0, height/2, Color.black, true);

    g2d.setPaint(gp);
    g2d.fillRect(0, 0, width, height);

    g2d.setColor(new Color(255, 153, 0));

    Random r = new Random();
    int index = r.nextInt(35);
    

    String captcha = String.copyValueOf(data[index]);
    request.getSession().setAttribute("captcha", captcha );

    int x = 0; 
    int y = 0;

    for (int i=0; i<data[index].length; i++) {
        x += 10 + (Math.abs(r.nextInt()) % 15);
        y = 20 + Math.abs(r.nextInt()) % 20;
        g2d.drawChars(data[index], i, 1, x, y);
    }

    g2d.dispose();

    response.setContentType("image/png");
    OutputStream os = response.getOutputStream();
    ImageIO.write(bufferedImage, "png", os);
    os.close();
  } 


  protected void doGet(HttpServletRequest request, 
                       HttpServletResponse response)
                           throws ServletException, IOException {
      processRequest(request, response);
  } 


  protected void doPost(HttpServletRequest request, 
                        HttpServletResponse response)
                            throws ServletException, IOException {
      processRequest(request, response);
  }
}