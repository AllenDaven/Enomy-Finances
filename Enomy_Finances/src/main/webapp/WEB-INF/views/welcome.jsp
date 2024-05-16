<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Enomy-Finances | Welcome</title>
    <link rel="shortcut icon" type="image/png" href="<%= request.getContextPath() %>/images/logoBrowser.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>css/thankwelcome.css" />
</head>
<body>
    <section class="active">
        <div class="modal-box">
            <i class="fa-regular fa-circle-check"></i>
            <center>
                <h1>Welcome to Enomy Finances!</h1>
            </center>
            <h3>Congratulations! You have successfully logged in. Explore our services to manage your finances efficiently.</h3>

            <div class="buttons">
                <a href="<%= request.getContextPath() %>/views/homepage.jsp" class="close-btn">Explore Your Dashboard</a>
            </div>
        </div>
    </section>
</body>
</html>