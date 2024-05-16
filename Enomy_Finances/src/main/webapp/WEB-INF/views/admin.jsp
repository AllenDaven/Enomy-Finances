<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enomy-Finances | Admin</title>
    <link rel="shortcut icon" type="image/png" href="<%= request.getContextPath() %>/images/logoBrowser.png">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/indexhome.css">
    <style>
        .center {
            text-align: center;
            margin: 0 auto;
            margin-bottom: 100px;
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <header>
        <div class="header">
            <a href="<%= request.getContextPath() %>/html/admin.jsp" class="logo">
                <img src="<%= request.getContextPath() %>/images/logo.png" alt="Logo">
            </a>
            <div class="header-right">
                <a class="active" href="<%= request.getContextPath() %>/html/admin.jsp">USER MANAGEMENT</a>
                <a href="<%= request.getContextPath() %>/html/investment.jsp">SAVINGS AND INVESTMENTS</a>
                <a href="<%= request.getContextPath() %>/html/currencyconverter.jsp">CURRENCY CONVERTER</a>
                <a id="logoutButton" href="<%= request.getContextPath() %>/html/loginRegistration.jsp">LOGOUT</a>
            </div>
        </div>
    </header>
    
    <h2 class="center">User Management</h2>
    <table class="center" border="1">
        <tr>
            <th>User ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
        <!-- Iterate over user data retrieved from the servlet -->
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.userID}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.email}</td>
                <td>${user.password}</td>
                <td>
                    <a href="editUser?id=${user.userID}">Edit</a>
                    <a href="deleteUser?id=${user.userID}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    
    <script src="<%= request.getContextPath() %>/js/script.js"></script>
</body>
</html>