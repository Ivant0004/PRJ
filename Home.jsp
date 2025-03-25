<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
    <title>Home Page</title>

    <!-- Bootstrap CSS (Phiên bản mới nhất) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">

    <!-- Font Awesome (Phiên bản mới nhất) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- Google Fonts Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">

    <!-- MDB CSS (Nếu cần thiết, hãy giữ lại) -->
    <link rel="stylesheet" href="css/mdb.min.css">

    <!-- Custom styles -->
    <link rel="stylesheet" href="css/style.css">

    <!-- jQuery (Nếu cần dùng JavaScript liên quan đến Bootstrap 4 hoặc các plugin cần jQuery) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Bootstrap JS (Nếu cần dùng các thành phần JS của Bootstrap) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script> 
     
           <style>
      /* Carousel styling */
      #introCarousel,
      .carousel-inner,
      .carousel-item,
      .carousel-item.active {
        height: 100vh;
      }

      .carousel-item:nth-child(1) {
        background-image: url('https://cdnb.artstation.com/p/assets/images/images/045/265/153/large/world-of-gaming-sports-banner.jpg?1642330191');
        background-repeat: no-repeat;
        background-size: 100% 100%;
        background-position: center center;
      }

      .carousel-item:nth-child(2) {
        background-image: url('https://th.bing.com/th/id/R.cab845dba76c581f5d45f54748720cb1?rik=l0Itc67wDt5Kfw&pid=ImgRaw&r=0');
        background-repeat: no-repeat;
        background-size: 100% 100%;
        background-position: center center;
      }

      .carousel-item:nth-child(3) {
        background-image: url('https://i.pinimg.com/originals/fa/45/96/fa4596ad9a9d39901eeb455ed4f74e44.jpg');
        background-repeat: no-repeat;
        background-size: 100% 100%;
        background-position: center center;
      }

      /* Height for devices larger than 576px */
      @media (min-width: 992px) {
        #introCarousel {
          margin-top: -58.59px;
        }
      }

      .navbar .nav-link {
        color: #fff !important;
      }
    </style>
    
    </head>
    <body class="skin-light" onload="loadAmountCart()">
        <jsp:include page="Menu.jsp"></jsp:include>        
    <!-- Banner -->
    <div id="introCarousel" class="carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel" style="margin-top:35px;">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-mdb-target="#introCarousel" data-mdb-slide-to="0" class="active"></li>
        <li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
        <li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
      </ol>

      <!-- Inner -->
      <div class="carousel-inner">
        <!-- Single item -->
        <div class="carousel-item active">
         
        </div>

        <!-- Single item -->
        <div class="carousel-item">
          
        </div>

        <!-- Single item -->
        <div class="carousel-item">
          
        </div>
      </div>
      <!-- Inner -->

      <!-- Controls -->
      <a class="carousel-control-prev" href="#introCarousel" role="button" data-mdb-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#introCarousel" role="button" data-mdb-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    
    <!-- Banner -->            
    <div class="card-group" style="margin-top:50px;">
  <div class="card" style="border-style: none;">
    <img style="height:50px; width:50px; margin: auto;" src="https://toanquoc.vn/img/bkg-active-3.png">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">GIAO HÀNG TOÀN QUỐC</h5>
      <p class="card-text" style="text-align:center">Vận chuyển khắp Việt Nam</p>
    </div>
  </div>
  <div class="card" style="border-style: none;">
    <img class="card-img-top" style="height:50px; width:50px; margin: auto;" src="https://toanquoc.vn/img/bkg-active-2.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">THANH TOÁN KHI NHẬN HÀNG</h5>
      <p class="card-text" style="text-align:center">Nhận hàng tại nhà rồi thanh toán</p>
    </div>
  </div>
  <div class="card" style="border-style: none;">
    <img class="card-img-top" style="height:50px; width:50px; margin: auto;" src="https://toanquoc.vn/img/bkg-active-5.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">BẢO HÀNH DÀI HẠN</h5>
      <p class="card-text" style="text-align:center">Bảo hàng lên đến 60 ngày</p>
    </div>
  </div>
  <div class="card" style="border-style: none;">
    <img class="card-img-top" style="height:50px; width:50px; margin: auto;" src="https://toanquoc.vn/img/bkg-active-1.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">ĐỔI HÀNG DỄ DÀNG</h5>
      <p class="card-text" style="text-align:center">Đổi hàng thoải mái trong 30 ngày</p>
    </div>
  </div>
</div>
    
    <!--Hienthisanpham-->       
    <div class="container">              
        <div class="row" style="margin-top:25px">                  
				<h1 style="text-align:center; width:100%" id="moiNhat">SẢN PHẨM MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentMoiNhat" class="row">
                        <c:forEach items="${list8Last}" var="o">
                            <div class=" col-12 col-md-6 col-lg-3">
                                <div class="card">
                                <div class="view zoom z-depth-2 rounded">
                                    <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                   
                                     </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} $</p>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                  
                </div>

        </div>
            
            
        <div class="row" style="margin-top:25px">            
				<h1 style="text-align:center; width:100%" id="nike">GIÀY NIKE MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentNike" class="row">
                        <c:forEach items="${list4NikeLast}" var="o">
                            <div class="productNike col-12 col-md-6 col-lg-3">
                                <div class="card">
                                 <div class="view zoom z-depth-2 rounded">
                                    <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} $</p>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
        </div>
            
            
        <div class="row" style="margin-top:25px">            
				<h1 style="text-align:center; width:100%" id="adidas">GIÀY ADIDAS MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentAdidas" class="row">
                        <c:forEach items="${list4AdidasLast}" var="o">
                            <div class="productAdidas col-12 col-md-6 col-lg-3">
                                <div class="card">
                                <div class="view zoom z-depth-2 rounded">
                                    <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} $</p>
                                            </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
        </div>
            
            
        <div class="row" style="margin-top:50px">            
                    <div class="col-sm-12">
                        <div id="content" class="row">
                            <div class=" col-12 col-md-12 col-lg-6">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt" style="text-align:center; font-size:18pt; color:#b57b00;">Về chúng tôi</h4>
                                        <h2 class="card-title show_txt" style="text-align:center; font-size:24pt;">Shoes Family</h2>
                                        <p style="text-align:center;">Uy tín lâu năm chuyên cung cấp giày thể thao sneaker nam, nữ hàng Replica 1:1 - 
                                        Like Auth với chất lượng đảm bảo và giá tốt nhất tại Hà Nội, tpHCM.</p>
										<p>Bạn đang cần tìm một đôi giày thể thao sneaker đẹp và hợp thời trang và đang hot Trends 
										đến từ các thương hiệu lớn nhưng lại không đủ hầu bao để sắm được hàng chính hãng? 
										Hãy đến với ShoesFamily – nơi bạn thỏa lòng mong ước mà chỉ phải chi ra 1 phần nhỏ so với dòng chính hãng ngoài store 
										mà vẫn sắm cho mình được một đôi chất lượng từ rep 1:1 đến siêu cấp like auth.</p>                  
                                    </div>  
                            </div>
                            <div class=" col-12 col-md-12 col-lg-6">
                                    <img class="card-img-top" src="https://minhshop.vn/_next/static/media/about-1.4c794d60.jpg" alt="Card image cap">        
                            </div>
                    </div>
                </div>
        </div>
    </div>      
    
    <jsp:include page="Footer.jsp"></jsp:include>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
    <!-- MDB -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript" src="js/script.js"></script>
    <!-- SCRIPTS -->
  <!-- JQuery -->
  <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
  <!-- MDB Ecommerce JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
    </body>
</html>

