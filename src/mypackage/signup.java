package mypackage;

//Import Servlet Libraries
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

//Import Java Libraries
import java.io.*;

//@WebServlet("/examples.name")
@WebServlet("/signup")
public class signup extends HttpServlet 
{
 protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
 {
    res.setContentType ("text/html");
    PrintWriter out = res.getWriter ();  
    
    String Nm = req.getParameter("yourname");
    String Em = req.getParameter("youremail");
    String Ps = req.getParameter("yourpassword");
                
    // <!doctype html> is not needed
    req.getRequestDispatcher("signup.html").include(req, res);
    if(Nm.isEmpty() || Em.isEmpty() || Ps.isEmpty()){
    	out.print("<center>");
    	out.print("<font color=red>");
    	out.println("Make sure all fields are filled");
    	out.print("</font>");
    	out.print("</center>");
    }
    else{
    	out.print("<center>");
    	out.print("Welcome to Quantbase! Sign into your account!");
    	out.print("</center>");
    }
    out.close();
 }
}