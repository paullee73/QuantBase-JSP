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
 	<%@ include file="header.jsp" %>
    <!-- Jumbotron with stock market background for visuals -->
    <header class="jumbotron">
        <center>
            <div id="bigtalk">
                <br>
                <h2>Never Lose Touch with the Market</h2>
            </div>
        </center>
    </header>

    <!-- General summary of QuantBase -->
    <div class="container">
        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-4">
                <h3>Exchange</h3>
                <p>Find about more assets on the market and add them to your portfolio to stay updated.
                </p>
            </div>
            <div class="col-md-1">
            </div>
            <div class="col-md-4">
                <h3>Portfolio</h3>
                <p>Be notified via phone or e-mail when a stock of interest reaches an threshold value in exponential moving
                    average.
                </p>
            </div>
            <div class="col-md-1">
            </div>
        </div>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
<%@ include file="footer.jsp" %>

</html>