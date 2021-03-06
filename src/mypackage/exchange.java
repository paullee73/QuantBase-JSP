package mypackage;

//Import Servlet Libraries
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

//Import Java Libraries
import java.io.*;

@WebServlet("/exchange")
public class exchange extends HttpServlet 
{
 protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
 {
	 //generate exchange.html if signed in
    res.setContentType ("text/html");
    PrintWriter out = res.getWriter ();    
    HttpSession session=req.getSession(false); 
    if(session!=null){
    	req.getRequestDispatcher("exchange.jsp").include(req, res);
    }  
    else{  
    	//tell user he/she needs to sign in to access exchange.
        req.getRequestDispatcher("empty.jsp").include(req, res);
        out.print("</br>");
        out.print("</br>");
        out.print("</br>");
        out.print("</br>");
    	out.print("<center>");
    	out.print("<font color=red>");
    	out.println("Sign in to access Exchange");
    	out.print("</font>");
    	out.print("</center>");
    }  
 }
}