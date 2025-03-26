<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Đơn Hàng</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        @media print {
            .no-print {
                display: none !important;
            }
            .print-only {
                display: block !important;
            }
            body {
                padding: 0;
                margin: 0;
            }
            .order-summary {
                border: none;
                padding: 15px;
            }
            .container {
                width: 100%;
                max-width: none;
            }
        }
        .order-summary {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .order-header {
            text-align: center;
            margin-bottom: 30px;
            padding-bottom: 20px;
            border-bottom: 2px solid #eee;
        }
        .customer-info {
            margin-bottom: 20px;
            padding: 15px;
            background-color: #f8f9fa;
            border-radius: 5px;
        }
        .order-items {
            margin-bottom: 20px;
        }
        .order-total {
            text-align: right;
            margin-top: 20px;
            padding-top: 20px;
            border-top: 2px solid #eee;
        }
        .print-btn {
            margin: 10px;
        }
        .table th {
            background-color: #f8f9fa;
        }
        .success-icon {
            color: #28a745;
            font-size: 48px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="no-print">
        <jsp:include page="Menu.jsp"></jsp:include>
    </div>
    
    <div class="container order-summary">
        <div class="order-header">
            <i class="fas fa-check-circle success-icon"></i>
            <h2>Xác Nhận Đơn Hàng</h2>
            <p>Ngày đặt: <fmt:formatDate value="${sessionScope.orderDate}" pattern="dd/MM/yyyy HH:mm:ss"/></p>
        </div>
        
        <div class="customer-info">
            <h4><i class="fas fa-user-circle"></i> Thông Tin Khách Hàng</h4>
            <p><strong><i class="fas fa-user"></i> Họ tên:</strong> ${sessionScope.orderName}</p>
            <p><strong><i class="fas fa-phone"></i> Số điện thoại:</strong> ${sessionScope.orderPhone}</p>
            <p><strong><i class="fas fa-envelope"></i> Email:</strong> ${sessionScope.orderEmail}</p>
            <p><strong><i class="fas fa-map-marker-alt"></i> Địa chỉ giao hàng:</strong> ${sessionScope.orderAddress}</p>
        </div>
        
        <div class="order-items">
            <h4><i class="fas fa-shopping-cart"></i> Chi Tiết Đơn Hàng</h4>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Sản phẩm</th>
                        <th class="text-right">Đơn giá</th>
                        <th class="text-center">Số lượng</th>
                        <th class="text-right">Thành tiền</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${sessionScope.orderItems}" var="item">
                        <c:forEach items="${sessionScope.orderProducts}" var="p">
                            <c:if test="${item.productID == p.id}">
                                <tr>
                                    <td>${p.name}</td>
                                    <td class="text-right"><fmt:formatNumber value="${p.price}" type="currency" currencySymbol="₫"/></td>
                                    <td class="text-center">${item.amount}</td>
                                    <td class="text-right"><fmt:formatNumber value="${p.price * item.amount}" type="currency" currencySymbol="₫"/></td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        
        <div class="order-total">
            <p><strong>Tạm tính:</strong> <fmt:formatNumber value="${sessionScope.orderTotal}" type="currency" currencySymbol="₫"/></p>
            <p><strong>VAT (10%):</strong> <fmt:formatNumber value="${sessionScope.orderTotalVAT - sessionScope.orderTotal}" type="currency" currencySymbol="₫"/></p>
            <h4><strong>Tổng cộng:</strong> <fmt:formatNumber value="${sessionScope.orderTotalVAT}" type="currency" currencySymbol="₫"/></h4>
        </div>
        
        <div class="text-center no-print">
            <button onclick="window.print()" class="btn btn-primary print-btn">
                <i class="fas fa-print"></i> In đơn hàng
            </button>
            <a href="home" class="btn btn-secondary print-btn">
                <i class="fas fa-home"></i> Về trang chủ
            </a>
        </div>

        <div class="text-center mt-4">
            <p class="text-muted">Cảm ơn quý khách đã mua hàng!</p>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>