<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enomy-Finances | Savings and Investments</title>
    <link rel="shortcut icon" type="image/png" href="<%= request.getContextPath() %>/images/logoBrowser.png">
    <link rel="stylesheet" href="<%= request.getContextPath() %>css/investment.css">
</head>

<body>
    <header>

        <div class="header">
            <a href="<%= request.getContextPath() %>/html/homepage.jsp" class="logo">
                <img src="<%= request.getContextPath() %>/images/logo.png" alt="Logo">
            </a>
            <div class="header-right">
                <a href="<%= request.getContextPath() %>/html/homepage.jsp">HOME</a>
                <a class="active" href="<%= request.getContextPath() %>/html/investment.jsp">SAVINGS AND INVESTMENTS</a>
                <a href="<%= request.getContextPath() %>/html/currencyconverter.jsp">CURRENCY CONVERTER</a>
                <a id="logoutButton" href="<%= request.getContextPath() %>/html/loginRegistration.jsp">LOGOUT</a>
            </div>
        </div>

    </header>
    <div class="tittle">
        <h1 class="style">TYPES OF INVESTMENTS</h1>
    </div>

    <div class="container2">
        <!-- Option 1 - Basic Savings Plan -->
        <div class="investment-details">BASIC SAVINGS PLAN</div>
        <div class="investment-details"></div>
        <div class="description">Maximum investment per year:<div class="price">£20,000</div></div>
        <div class="description">Minimum monthly investment:<div class="price">£50</div></div>
        <div class="description">Minimum initial investment lump sum:<div class="price">N/A</div></div>
        <div class="description">Predicted returns per year:<div class="price">1.2% to 2.4%</div></div>
        <div class="description">Estimated tax:<div class="price">0%</div></div>
        <div class="description"><div class="price"></div></div>
        <div class="description">RBSX group fees per month:<div class="price">0.25%</div></div>

        <div class="button-container2">
            <a href="Account Management.html" class="invest-button">Invest Now</a>
        </div>
    </div>

    <div class="container2">
        <!-- Option 2 - Savings Plan Plus -->
        <div class="investment-details">SAVINGS PLAN PLUS</div>
        <div class="investment-details"></div>
        <div class="description">Maximum investment per year:<div class="price">£30,000</div></div>
        <div class="description">Minimum monthly investment:<div class="price">£50</div></div>
        <div class="description">Minimum initial investment lump sum:<div class="price">£300</div></div>
        <div class="description">Predicted returns per year:<div class="price">3% to 5.5%</div></div>
        <div class="description">Estimated tax:<div class="price">10% on profits above £12,000</div></div>
        <div class="description"><div class="price"></div></div>
        <div class="description">RBSX group fees per month:<div class="price">0.3%</div></div>

        <div class="button-container2">
            <a href="Account Management.html" class="invest-button">Invest Now</a>
        </div>
    </div>

    <div class="container2">
        <!-- Option 3 - Managed Stock Investments -->
        <div class="investment-details">MANAGED STOCK INVESTMENT</div>
        <div class="description">Maximum investment per year:<div class="price">Unlimited</div></div>
        <div class="description">Minimum monthly investment:<div class="price">£150</div></div>
        <div class="description">Minimum initial investment lump sum:<div class="price">£1000</div></div>
        <div class="description">Predicted returns per year:<div class="price">4% to 23%</div></div>
        <div class="description">Estimated tax:<div class="price">10% on profits above £12 000 20% on profits above £40000</div></div>
        <div class="description">RBSX group fees per month:<div class="price">1.3%</div></div>

        <div class="button-container2">
            <a href="Account Management.html" class="invest-button">Invest Now</a>
        </div>
    </div>
    
    <div class="container">
        <div class="left-section">
            <h2>Savings and Investments</h2>
            <form id="investmentForm">
                <label for="initialAmount">Initial Lump Sum (GBP):</label>
                <input type="number" id="initialAmount" name="initialAmount" required>
                
                <label for="monthlyInvestment">Monthly Investment (GBP):</label>
                <input type="number" id="monthlyInvestment" name="monthlyInvestment" required>
                
                <label for="investmentType">Investment Type:</label>
                <select id="investmentType" name="investmentType" required>
                    <option value="">Select Investment Type</option>
                    <option value="BasicSavingsPlan">Basic Savings Plan</option>
                    <option value="SavingsPlanPlus">Savings Plan Plus</option>
                    <option value="ManagedStockInvestments">Managed Stock Investments</option>
                </select>
                
                <button class="calculate-button" type="submit">Calculate</button>
            </form>
        </div>
        
        <div class="right-section">
            <div id="investmentResults" class="hidden">
                <h3>Investment Quote</h3>
                <div id="resultsContainer"></div>
            </div>
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