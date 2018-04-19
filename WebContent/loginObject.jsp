<html> 
<head>
<title>Quantbase</title>
</head>
<body> 
<%@ include file="login.jsp" %>
<br/>
<br/>
<br/>
<% 
String uName = request.getParameter("yourusername"); 
String uPassword = request.getParameter("yourpassword");
%>

<% 
if(uName.equals("admin123") && uPassword.equals("admin123")){
	%>
	<center>
	<font color=green>
	<%
	out.print("Welcome ");
	%>
	<jsp:getProperty property="name" name="user"/><br> 
	<%
	session.setAttribute("sessname",uName); 
	%>
	
	
	</font>
	</center>
<% } else if (uName.isEmpty() || uPassword.isEmpty()) { %>
	<center>
	<font color=red>
	<% out.print("Make sure all fields are filled"); %>
    </font>
    </center>    
    <% } else { %>
    	<center>
    	<font color=red>
        <% out.print("Username/password is not correct");  %> 
        </font>
        </center>
	<% } %>
    
</body> 
</html>