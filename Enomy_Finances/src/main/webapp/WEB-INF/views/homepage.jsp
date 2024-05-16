<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Enomy-Finances | Home</title>
	<link rel="shortcut icon" type="image/png" href="<%= request.getContextPath() %>/images/logoBrowser.png">
	<link rel="stylesheet" href="<%= request.getContextPath() %>css/indexhome.css">
</head>
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
    
		<div class="full-screen-image">
			<img src="<%= request.getContextPath() %>/images/coverPhoto.jpg" alt="coverphoto">
			
			<div class="content">
                <p class="par">WELCOME TO ENOMY FINANCES</p>
                <h1>"YOUR PROSPERITY, OUR PRIORITY"</h1>                     
                <a class="register-button" href="<%= request.getContextPath() %>/html/investment.jsp">INVEST NOW!</a>
         	</div>
		</div>
		
		<div class="about-container">
       		 <div class="about-text">
	            <h1>About Us</h1>
	            <p>Welcome to Enomy Finances, your trusted partner in the world of finance. At Enomy, we believe in the power of financial empowerment and innovation.</p>
	            <p>Our dedicated team is committed to providing you with cutting-edge financial services, meticulously tailored to meet your unique needs and aspirations. We understand that every financial journey is distinct, and we are here to help you navigate yours with confidence and expertise.</p>
	            <p>Our mission extends beyond conventional financial services. We aim to guide you on a transformative journey towards lasting financial prosperity. Our expert advisors are ready to offer personalized advice and innovative solutions, ensuring that your financial future is in capable hands.</p>
	            <p>Explore the boundless possibilities that Enomy Finances has to offer. Your success story begins right here, with a partner dedicated to your financial well-being.</p>
	        </div>
	        <div class="about-image">
	            <img src="<%= request.getContextPath() %>/images/aboutPhoto.jpg" alt="About Image">
	        </div>
	    </div>

         <div class="services">
    		<h1>Discover Our Financial Services</h1>                     
    		<p class="description">Explore the comprehensive financial services offered by Enomy Finances to empower your financial journey.</p> 
		</div>
         
		<div class="row">
		  <div class="column">
		    <div class="card">
		      <img src="<%= request.getContextPath() %>/images/service1.jpg" alt="Service 1" style="width:100%">
		      <div class="container">
		        <h2>Financial Planning</h2>
		        <p class="title">Enomy Finances</p>
		        <p>Our expert financial planners help you create a personalized plan for your financial future.</p>
		        <p><button class="button">Learn More</button></p>
		      </div>
		    </div>
		  </div>
		
		  <div class="column">
		    <div class="card">
		      <img src="<%= request.getContextPath() %>/images/service2.png" alt="Service 2" style="width:100%">
		      <div class="container">
		        <h2>Investment Advisory</h2>
		        <p class="title">Enomy Finances</p>
		        <p>Explore investment opportunities with our experienced investment advisors.</p>
		        <p><button class="button">Learn More</button></p>
		      </div>
		    </div>
		  </div>
		
		  <div class="column">
		    <div class="card">
		      <img src="<%= request.getContextPath() %>/images/service3.jpg" alt="Service 3" style="width:100%">
		      <div class="container">
		        <h2>Currency Exchange</h2>
		        <p class="title">Enomy Finances</p>
		        <p>Effortlessly convert currencies with our secure and reliable currency exchange services.</p>
		        <p><button class="button">Learn More</button></p>
		      </div>
		    </div>
		  </div>
		</div>
		
		<div class="contact-section">
        <h1>Contact Us</h1>
        <p>Feel free to reach out to us for any inquiries or assistance.</p>

        <div class="contact-info">
	            <div class="contact-item">
	                <h2>Headquarters</h2>
	                <p>123 Financial Street, Cityville, Country</p>
	            </div>
	
	            <div class="contact-item">
	                <h2>Email</h2>
	                <p>info@enomyfinances.com</p>
	            </div>
	
	            <div class="contact-item">
	                <h2>Phone</h2>
	                <p>+1 (123) 456-7890</p>
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