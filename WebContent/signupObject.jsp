<html> 
<head>
<title>Signup</title>
</head>
<body> 
<%@ include file="signup.jsp" %>
<br/>
<br/>
<br/>
<% 
String uName=request.getParameter("yourname"); 
String uPassword = request.getParameter("youremail");
String uEmail = request.getParameter("yourpassword");
%>

<% 
if(uName.isEmpty() || uPassword.isEmpty() || uEmail.isEmpty()){
	%>
	<center>
	<font color=red>
	<%
	out.print("Make sure all fields are filled");
	%>
	</font>
	</center>  
    <% } else { %>
    	<center>
    	<font color=green>
        <% out.print("Welcome to Quantbase! Sign into your account!");  %> 
        </font>
        </center>
	<% } %>
    
</body> 
</html>