<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="index.css" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title>Quantbase</title>
</head>

<body>
    <!-- navigation bar -->
    <%@ include file="header.jsp" %>

    <!-- Form for logging in -->
    <center>
        <div id="welcome-msg">
        </div>
    </center>
    <div class="container" id="login-form">
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-8" id="form">
        		<%! String url = "http://localhost:8080/quantbase/loginObject.jsp"; %>
        		
        		<div class="form-group">
             	<form method="post" action = <%=url%>>
             		<div class="form-group">
            			<label for="username">Username:</label>
            			<input type="username" name="yourusername" class="form-control is-valid">
            		</div>
            		
            		<div class="form-group">
                    	<label for="password">Password:</label>
                    	<input type="password" name="yourpassword" class="form-control">
                	</div>
                	
                	<jsp:useBean id="user" class="mypackage.User" scope="session">
                	</jsp:useBean>
                	<jsp:setProperty name="user" property="name" value='<%= request.getParameter("yourusername") %>'/>
                	<jsp:setProperty name="user" property="password" value='<%= request.getParameter("yourpassword") %>'/>
                	
            		<button type="submit" value="Submit" name="submit" class="btn btn-default">Login</button>
        		</form> 
        		</div>
        		
            </div>
        	<div class="col-md-2">
        	</div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
<%@ include file="footer.jsp" %>

</html>