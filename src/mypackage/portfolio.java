package mypackage;

//Import Servlet Libraries
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

//Import Java Libraries
import java.io.*;

@WebServlet("/portfolio")
public class portfolio extends HttpServlet 
{
 protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
 {
    res.setContentType ("text/html");
    PrintWriter out = res.getWriter ();    
    HttpSession session=req.getSession(false); 
    if(session!=null){
    	req.getRequestDispatcher("portfolio.html").include(req, res);
    }  
    else{  
        req.getRequestDispatcher("empty.html").include(req, res);
        out.print("</br>");
        out.print("</br>");
        out.print("</br>");
        out.print("</br>");
    	out.print("<center>");
    	out.print("<font color=red>");
    	out.println("Sign in to access Portfolio");
    	out.print("</font>");
    	out.print("</center>");
    }  
 }
}