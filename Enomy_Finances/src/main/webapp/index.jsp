<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enomy-Finances | Website</title>
    <link rel="shortcut icon" type="image/png" href="<%= request.getContextPath() %>images/logoBrowser.png">
    <link href="/Enomy_Finances/css/indexhome.css" rel="stylesheet">
</head>
<body>
    <header>
    	<div class="header">
            <a href="<%= request.getContextPath() %>views/index.jsp" class="logo">
                <img src="<c:url value='images/logo.png' />" alt="..." class="img-thumbnail">
            </a>
            <div class="header-right">      
                <a class="active" href="<%= request.getContextPath() %>views/loginRegistration.jsp">LOGIN</a>
                <a class="active" href="<%= request.getContextPath() %>views/loginRegistration.jsp">SIGN UP</a>              
            </div>
        </div>
    </header>
		<div class="full-screen-image">
			<img src="<%= request.getContextPath() %>/images/coverPhoto.jpg" alt="coverphoto">
			
			<div class="content">
                <p class="par">EXPERIENCE FINANCIAL PROSPERITY</p>
    			<h1>"NAVIGATE YOUR WEALTH JOURNEY WITH ENOMY FINANCES"</h1>
   				<p class="description">Discover a world of financial opportunities tailored just for you. At Enomy Finances, we prioritize your prosperity, offering expert advice and personalized solutions to elevate your financial well-being.</p>           
                <a class="register-button" href="<%= request.getContextPath() %>/views/loginRegistration.jsp">REGISTER NOW!</a>
         	</div>
		</div>

    <footer>
        <div class="footer-links">
            <a href="#">Privacy Policy</a> | 
            <span>Copyright &copy; 2024 All Rights Reserved by Enomy Finances</span> | 
            <a href="#">Terms and Conditions</a>
        </div>
    </footer>
    <script src="<%= request.getContextPath() %>/js/script.js"></script>
</body>
</html>
