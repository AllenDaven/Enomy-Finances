<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enomy-Finances | Sign in and Sign up</title>
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" type="image/png" href="<%= request.getContextPath() %>/images/logoBrowser.png">
    <link rel="stylesheet" href="<%= request.getContextPath() %>css/loginRegistration.css">
</head>
<body>
    <div class="container">
        <div class="forms-container">
            <div class="signin-signup">
                <!-- Login Form -->
                <form action="<%= request.getContextPath() %>/LoginServlet" class="sign-in-form" method="post" onsubmit="return validateLoginForm()">
				    <h2 class="title">Sign in</h2>
				    <div class="input-field">
				        <i class="fas fa-user"></i>
				        <input type="email" name="email" id="email" placeholder="Email" required />
				    </div>
				    <div class="input-field">
				        <i class="fas fa-lock"></i>
				        <input type="password" name="password" id="password" placeholder="Password" required />
				    </div>
				    <div class="remember-forgot">
				        <label for="rememberMe">
				            <input type="checkbox" id="rememberMe" name="rememberMe" />
				            Remember Me
				        </label>
				        <a href="<%= request.getContextPath() %>/views/forgotpassword.jsp">Forgot Password?</a>
				    </div>
				    <input type="submit" value="Login" class="btn solid" />
				    <p class="social-text">Or Sign in with social platforms</p>
				    <div class="social-media">
				        <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
				        <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
				        <a href="#" class="social-icon"><i class="fab fa-google"></i></a>
				        <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
				    </div>
				</form>

                <!-- Registration Form -->
                <form action="<%= request.getContextPath() %>/register" class="sign-up-form" method="post" onsubmit="return validateRegistrationForm()">
                    <h2 class="title">Sign up</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" name="firstName" placeholder="First name" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" name="lastName" placeholder="Last name" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="email" name="email" placeholder="Email" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="password" placeholder="Create password" required />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="confirmPassword" placeholder="Confirm password" required />
                    </div>
                    <input type="submit" class="btn" value="Sign up" />
                    <p class="social-text">Or Sign up with social platforms</p>
                    <div class="social-media">
                        <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-google"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </form>
            </div>
        </div>

        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here ?</h3>
                    <p>Welcome to Enomy Finance, where financial empowerment meets innovation. Join us on a journey to secure and elevate your financial future.</p>
                    <button class="btn transparent" id="sign-up-btn">Sign up</button>
                </div>
                <img src="<%= request.getContextPath() %>/images/register.png" class="image" alt="" />
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>One of us ?</h3>
                    <p>Explore the possibilities with Enomy Finance. Your financial success story continues here. Sign in to discover exclusive features and services.</p>
                    <button class="btn transparent" id="sign-in-btn">Sign in</button>
                </div>
                <img src="<%= request.getContextPath() %>/images/login.png" class="image" alt="" />
            </div>
        </div>
    </div>
   <script src="<%= request.getContextPath() %>/js/script1.js"></script>
</body>
</html>