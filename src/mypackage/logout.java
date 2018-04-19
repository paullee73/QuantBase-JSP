package mypackage;

//Import Servlet Libraries
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

//Import Java Libraries
import java.io.*;

@WebServlet("/logout")
public class logout extends HttpServlet 
{
 protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
 {
	 //quits HttpSession object
     res.setContentType("text/html");  
     PrintWriter out=res.getWriter();    
     req.getRequestDispatcher("empty.jsp").include(req, res);    
     HttpSession session=req.getSession();  
     session.invalidate();
     out.print("</br>");
     out.print("</br>");
     out.print("</br>");
     out.println("</br>");
     out.print("<center>");
     out.print("You are successfully logged out!");  
     out.print("</center>");
     out.close();
 }
}