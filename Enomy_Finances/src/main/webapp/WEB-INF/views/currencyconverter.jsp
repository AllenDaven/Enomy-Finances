<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enomy-Finances | Currency Converter</title>
    <link rel="shortcut icon" type="image/png" href="<%= request.getContextPath() %>/images/logoBrowser.png">
    <link rel="stylesheet" href="<%= request.getContextPath() %>css/currencyconverter.css">
</head>

<body>
    <header>
        <div class="header">
            <a href="<%= request.getContextPath() %>/html/homepage.jsp" class="logo">
                <img src="<%= request.getContextPath() %>/images/logo.png" alt="Logo">
            </a>
            <div class="header-right">
                <a href="<%= request.getContextPath() %>/html/homepage.jsp">HOME</a>
                <a href="<%= request.getContextPath() %>/html/investment.jsp">SAVINGS AND INVESTMENTS</a>
                <a class="active" href="<%= request.getContextPath() %>/html/currencyconverter.jsp">CURRENCY CONVERTER</a>
                <a id="logoutButton" href="<%= request.getContextPath() %>/html/loginRegistration.jsp">LOGOUT</a>
            </div>
        </div>
    </header>

    <div class="content-container">
        <div class="converter">
            <h2>Currency Converter</h2>
            <label for="fromCurrency">From Currency:</label>
        <select id="fromCurrency">
            <option value="GBP">GBP - British Pound</option>
            <option value="USD">USD - US Dollar</option>
            <option value="EUR">EUR - Euro</option>
            <option value="BRL">BRL - Brazilian Real</option>
            <option value="JPY">JPY - Japanese Yen</option>
            <option value="TRY">TRY - Turkish Lira</option>
        </select>

        <label for="amount">Amount:</label>
        <input type="number" id="amount" placeholder="Enter amount">

        <label for="toCurrency">To Currency:</label>
        <select id="toCurrency">
            <option value="GBP">GBP - British Pound</option>
            <option value="USD">USD - US Dollar</option>
            <option value="EUR">EUR - Euro</option>
            <option value="BRL">BRL - Brazilian Real</option>
            <option value="JPY">JPY - Japanese Yen</option>
            <option value="TRY">TRY - Turkish Lira</option>
        </select>

        <button class="convert-button" onclick="convertCurrency()">Convert</button>

        <div id="result"></div>
        </div>    
            <div class="chart-container">
                <h2>Currency Distribution</h2>
                <div id="piechart"></div>
            </div>
        </div>

	    <div class="currency-list">
	    <div class="currency-item">
	      <img src="<%= request.getContextPath() %>/images/uk.png" alt="UK Flag" class="flag">
	      <div class="details">
	        <h3>United Kingdom</h3>
	        <p>Pounds Sterling (GBP)</p>
	      </div>
	    </div>
	
	    <div class="currency-item">
	      <img src="<%= request.getContextPath() %>/images/usa.png" alt="USA Flag" class="flag">
	      <div class="details">
	        <h3>United States</h3>
	        <p>American Dollars (USD)</p>
	      </div>
	    </div>
	
	    <div class="currency-item">
	      <img src="<%= request.getContextPath() %>/images/euro.png" alt="EU Flag" class="flag">
	      <div class="details">
	        <h3>European Union</h3>
	        <p>Euro (EUR)</p>
	      </div>
	    </div>
	
	    <div class="currency-item">
	      <img src="<%= request.getContextPath() %>/images/brazil.png" alt="Brazil Flag" class="flag">
	      <div class="details">
	        <h3>Brazil</h3>
	        <p>Brazilian Real (BRL)</p>
	      </div>
	    </div>
	
	    <div class="currency-item">
	      <img src="<%= request.getContextPath() %>/images/japan.png" alt="Japan Flag" class="flag">
	      <div class="details">
	        <h3>Japan</h3>
	        <p>Japanese Yen (JPY)</p>
	      </div>
	    </div>
	
	    <div class="currency-item">
	      <img src="<%= request.getContextPath() %>/images/turkey.png" alt="Turkey Flag" class="flag">
	      <div class="details">
	        <h3>Turkey</h3>
	        <p>Turkish Lira (TRY)</p>
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
	    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

		<script type="text/javascript">
			google.charts.load('current', {'packages':['corechart']});
			google.charts.setOnLoadCallback(drawChart);
			
			function drawChart() {
			    var data = google.visualization.arrayToDataTable([
			        ['Currency', 'Value'],
			        ['Pounds Sterling (GBP)', 150],
			        ['American Dollars (USD)', 200],
			        ['Euro (EUR)', 180],
			        ['Brazilian Real (BRL)', 100],
			        ['Japanese Yen (JPY)', 120],
			        ['Turkish Lira (TRY)', 90]
			    ]);
			
			    var options = {
			        title: 'Currency conversion module',
			        width: 650,
			        height: 400,
			        colors: ['#2196F3', '#FFC107', '#4CAF50', '#FF5722', '#9C27B0', '#E91E63']
			    };
			
			    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
			    chart.draw(data, options);
			}
		</script>	    
</body>
</html>
