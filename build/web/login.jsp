<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Room Management - Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="login-container">
        <div class="login-box">
            <div class="login-content">
                <div class="login-form">
                    <h2>SIGN <span class="highlight">IN</span></h2>
                    <form action="login" method="post">
                        <div class="form-group">
                            <input type="text" id="username" name="username" placeholder="Username or Email" required>
                        </div>
                        <div class="form-group">
                            <input type="password" id="password" name="password" placeholder="Password" required>
                        </div>
                        <div class="form-options">
                            <label class="remember-me">
                                <input type="checkbox" name="remember">
                                <span>Stay signed in</span>
                            </label>
                            <a href="#" class="forgot-password">Forgot Password?</a>
                        </div>
                        <button type="submit" class="sign-in-btn">SIGN IN</button>
                    </form>
                    
                    <div class="divider">
                        <span>Or Sign in with</span>
                    </div>
                    
                    <div class="social-login">
                        <a href="#" class="social-btn google">
                            <i class="fab fa-google"></i>
                        </a>
                        <a href="#" class="social-btn facebook">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-btn twitter">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-btn linkedin">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                    </div>
                    
                    <div class="signup-link">
                        Not a member? <a href="#">Sign up</a>
                    </div>
                    
                    <c:if test="${not empty error}">
                        <div class="error-message">${error}</div>
                    </c:if>
                </div>
                <div class="login-image">
                    <div class="rocket-scene">
                        <div class="stars"></div>
                        <div class="stars stars-2"></div>
                        <div class="stars stars-3"></div>
                        <div class="rocket">
                            <div class="rocket-body">
                                <div class="body"></div>
                                <div class="fin fin-left"></div>
                                <div class="fin fin-right"></div>
                                <div class="window"></div>
                            </div>
                            <div class="exhaust-flame"></div>
                            <ul class="exhaust-fumes">
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                            <ul class="star">
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                        </div>
                        <div class="smoke">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
