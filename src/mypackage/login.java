package mypackage;

//Import Servlet Libraries
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

//Import Java Libraries
import java.io.*;

@WebServlet("/login")
public class login extends HttpServlet 
{
 protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
 {
    res.setContentType ("text/html");
    PrintWriter out = res.getWriter ();  
    
    String Un = req.getParameter("yourusername");
    String Ps = req.getParameter("yourpassword");
                
    // <!doctype html> is not needed          
    out.print("<br/>");
    out.print("<br/>");
    out.print("<br/>");
    req.getRequestDispatcher("login.html").include(req, res); 
    if(Un.equals("admin123") && Ps.equals("admin123")){
    	out.print("<center>");
    	out.print("Welcome!");
    	out.println("</center>");
        HttpSession session=req.getSession();  
        session.setAttribute("name", Un); 
    }  
    else if(Un.isEmpty() || Ps.isEmpty()){
    	out.print("<center>");
    	out.print("<font color=red>");
        out.print("Make sure all fields are filled");  
        out.print("</font>");
        out.print("</center>");       
    }
    else{
    	out.print("<center>");
    	out.print("<font color=red>");
        out.print("Email/password is not correct");  
        out.print("</font>");
        out.print("</center>");
    }
    out.close ();	
 }
}