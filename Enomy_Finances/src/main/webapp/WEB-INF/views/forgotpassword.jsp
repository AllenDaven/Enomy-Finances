<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Enomy-Finances | Reset Password</title>
	<link rel="shortcut icon" type="image/png" href="<%= request.getContextPath() %>/images/logoBrowser.png">
    <link rel="stylesheet" href="<%= request.getContextPath() %>css/indexhome.css">
</head>
<body>
	 <header>
    	<div class="header">
            <a href="<%= request.getContextPath() %>/html/loginRegistration.jsp" class="logo">
                <img src="<%= request.getContextPath() %>/images/logo.png" alt="Logo">
            </a>
            <div class="header-right">      
                <a class="active" href="<%= request.getContextPath() %>/html/loginRegistration.jsp">LOGIN</a>
                <a class="active" href="<%= request.getContextPath() %>/html/loginRegistration.jsp">SIGN UP</a>              
            </div>
        </div>
    </header>
    
    <div class="reset-container">
        <h2>Password Reset</h2>
        <form id="resetForm">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="newPassword">New Password:</label>
            <input type="password" id="newPassword" name="newPassword" required>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>

            <button type="button" onclick="resetPassword()">Reset Password</button>
        </form>
        <div id="resetMessage"></div>
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