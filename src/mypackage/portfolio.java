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
    //generate portfolio.html if user is signed in
    if(session!=null){
    	req.getRequestDispatcher("portfolio.jsp").include(req, res);
    }
    //warn user that he/she must be signed in to access portfolio
    else{  
        req.getRequestDispatcher("empty.jsp").include(req, res);
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