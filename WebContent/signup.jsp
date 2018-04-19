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
    <center>
        <div id="invite-msg">
        </div>
    </center>
    <!-- Sign up form, stores user objects in array users -->
    <div class="container" id="signup-form">
        <div class="row">
            <div class="col-md-2">
            </div>
             <div class="col-md-8" id="form">
             <%! String url = "http://localhost:8080/quantbase/signupObject.jsp"; %>
             	<div class="form-group">
             	<form method="post" action = <%=url%>>
             		<div class="form-group">
            			<label for="name">Name:</label>
            			<input type="name" name="yourname" class="form-control">
            		</div>
            		
            		<div class="form-group">
                    	<label for="email">Email address:</label>
                    	<input type="email" name="youremail" class="form-control is-valid">
                	</div>
                	
                	<div class="form-group">
                    	<label for="email">Password:</label>
                    	<input type="password" name="yourpassword" class="form-control">
                	</div>
                	
            		<button type="submit" value="Submit" name="submit" class="btn btn-default">Sign Up</button>
        		</form> 
        		</div>
        </div> 
        <div class="col-md-2">
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
<footer class="footer">
    <div class="container" id="footer">
        <small>
            <center>
                Copyright © 2017 QuantBase Technologies
            </center>
        </small>
    </div>
</footer>
<%@ include file="footer.jsp" %>


</html>