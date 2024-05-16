<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<header>
        <div class="header">
            <a href="<%= request.getContextPath() %>/html/homepage.jsp" class="logo">
                <img src="<%= request.getContextPath() %>/images/logo.png" alt="Logo">
            </a>
            <div class="header-right">
                <a class="active" href="<%= request.getContextPath() %>/html/homepage.jsp">HOME</a>
                <a href="<%= request.getContextPath() %>/html/investment.jsp">SAVINGS AND INVESTMENTS</a>
                <a href="<%= request.getContextPath() %>/html/currencyconverter.jsp">CURRENCY CONVERTER</a>
                <a id="logoutButton" href="<%= request.getContextPath() %>/html/loginRegistration.jsp">LOGOUT</a>
            </div>
        </div>
    </header>
</body>
</html>