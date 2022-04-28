package Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RedirectServlet extends HttpServlet{
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws IOException,ServletException{
          if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("admin")){
            response.sendRedirect("welcome.html");
          }else{
            response.sendRedirect("error.html");
          }
    }
}
