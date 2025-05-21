<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Rooms - Room Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="header">
        <div class="header-content">
            <div class="logo">Room Management</div>
            <div class="header-right">
                <button class="list-property">List your property</button>
                <button class="register-btn">Register</button>
                <button class="sign-in-btn">Sign in</button>
            </div>
        </div>
    </div>

    <div class="main-container">
        <div class="search-filters">
            <div class="filter-group">
                <h3>Filter by:</h3>
                <div class="filter-options">
                    <label class="checkbox-label">
                        <input type="checkbox" name="amenities" value="wifi">
                        <span>Free WiFi</span>
                    </label>
                    <label class="checkbox-label">
                        <input type="checkbox" name="amenities" value="ac">
                        <span>Air conditioning</span>
                    </label>
                    <label class="checkbox-label">
                        <input type="checkbox" name="amenities" value="parking">
                        <span>Free parking</span>
                    </label>
                </div>
            </div>
            
            <div class="filter-group">
                <h3>Price per night:</h3>
                <div class="price-slider">
                    <input type="range" min="0" max="1000" value="500">
                    <div class="price-range">
                        <span>$0</span>
                        <span>$1000</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="rooms-container">
            <div class="rooms-header">
                <h2>Available Rooms</h2>
                <div class="sort-options">
                    <select>
                        <option>Recommended</option>
                        <option>Price (low to high)</option>
                        <option>Price (high to low)</option>
                        <option>Rating</option>
                    </select>
                </div>
            </div>

            <div class="room-list">
                <c:forEach var="room" items="${rooms}">
                    <div class="room-card">
                        <div class="room-image">
                            <img src="${room.imageUrl}" alt="${room.name}">
                            <button class="favorite-btn">
                                <i class="far fa-heart"></i>
                            </button>
                        </div>
                        <div class="room-details">
                            <div class="room-info">
                                <h3>${room.name}</h3>
                                <div class="room-location">
                                    <i class="fas fa-map-marker-alt"></i>
                                    <span>${room.location}</span>
                                </div>
                                <div class="room-amenities">
                                    <span><i class="fas fa-wifi"></i> Free WiFi</span>
                                    <span><i class="fas fa-snowflake"></i> Air conditioning</span>
                                    <span><i class="fas fa-parking"></i> Free parking</span>
                                </div>
                                <div class="room-description">
                                    ${room.description}
                                </div>
                            </div>
                            <div class="room-booking">
                                <div class="room-rating">
                                    <div class="rating-score">8.9</div>
                                    <div class="rating-text">
                                        <div class="rating-label">Excellent</div>
                                        <div class="review-count">420 reviews</div>
                                    </div>
                                </div>
                                <div class="room-price">
                                    <div class="price-label">Price per night</div>
                                    <div class="price-amount">$${room.price}</div>
                                    <div class="price-taxes">Includes taxes and fees</div>
                                </div>
                                <button class="book-now-btn">Book now</button>
                                <button class="view-details-btn">View details</button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <div class="pagination">
                <button class="page-btn prev"><i class="fas fa-chevron-left"></i></button>
                <button class="page-btn active">1</button>
                <button class="page-btn">2</button>
                <button class="page-btn">3</button>
                <span class="page-dots">...</span>
                <button class="page-btn">10</button>
                <button class="page-btn next"><i class="fas fa-chevron-right"></i></button>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h4>About Room Management</h4>
                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">How we work</a></li>
                    <li><a href="#">Careers</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Support</h4>
                <ul>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">Privacy policy</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>For Property Owners</h4>
                <ul>
                    <li><a href="#">List your property</a></li>
                    <li><a href="#">Partner help</a></li>
                    <li><a href="#">Affiliate program</a></li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
