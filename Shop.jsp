<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Roboto Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
    <!-- Material Design Bootstrap Ecommerce -->
    <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
    <!-- Your custom styles (optional) -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ------>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet" type="text/css"/> 
</head>

<body class="skin-light" onload="loadAmountCart()">

  <!--Main Navigation-->
  <header>
    <jsp:include page="Menu.jsp"></jsp:include>
  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main>
    <div class="container" style="margin-top:100px">

      <!--Grid row-->
      <div class="row mt-5">

        <!--Grid column (đã mở rộng thành col-md-12)-->
        <div class="col-md-12 mb-4">

          <!-- Section: Block Content -->
          <section class="mb-3">

            <div class="row d-flex justify-content-around align-items-center">
              <div class="col-12 col-md-5">
                <div class="d-flex flex-wrap">
                  <div class="select-outline position-relative w-100">
                    <select class="mdb-select md-outline md-form" searchable="Search here..">
                      <option value="" disabled selected>Choose category</option>
                      <option value="1">Category 1</option>
                      <option value="2">Category 2</option>
                      <option value="3">Category 3</option>
                      <option value="4">Category 4</option>
                      <option value="5">Category 5</option>
                    </select>
                    <label style="font-size: larger">Tất cả sản phẩm</label>
                    <button class="btn-save btn btn-primary btn-sm mt-2">Save</button>
                  </div>
                </div>
              </div>
              <div class="col-12 col-md-4 text-center">
                <nav aria-label="Page navigation example">
                  <ul class="pagination pagination-circle justify-content-center float-md-right mb-0">
                    <c:if test="${tag != 1}">
                      <li class="page-item"><a href="shop?index=${tag-1 }" class="page-link"><i class="fas fa-chevron-left"></i></a></li>
                    </c:if> 
                    <c:forEach begin="1" end="${endPage }" var="i">
                      <li class="${tag==i?'page-item active':'page-item' }"><a href="shop?index=${i }" class="page-link">${i }</a></li>
                    </c:forEach>
                    <c:if test="${tag != endPage}">
                      <li class="page-item"><a href="shop?index=${tag+1 }" class="page-link"><i class="fas fa-chevron-right"></i></a></li>
                    </c:if> 
                  </ul>
                </nav>
              </div>
            </div>

          </section>
          <!-- Section: Block Content -->

          <!--Section: Block Content-->
          <section>

            <!-- Grid row -->
            <div class="row" id="content">
              <c:forEach items="${listP}" var="o">
                <!-- Grid column -->
                <div class="col-md-4 mb-5">
                  <!-- Card -->
                  <div class="">
                    <div class="view zoom overlay rounded z-depth-2">
                      <img class="img-fluid w-100" src="${o.image }" alt="Sample">
                      <a href="detail?pid=${o.id}">
                        <div class="mask">
                          <img class="img-fluid w-100" src="${o.image }">
                          <div class="mask rgba-black-slight"></div>
                        </div>
                      </a>
                    </div>
                    <div class="text-center pt-4">
                      <h5>${o.name }</h5>
                      <p><span class="mr-1"><strong>${o.price }$</strong></span></p>
                    </div>
                  </div>
                  <!-- Card -->
                </div>
                <!-- Grid column -->
              </c:forEach>     
            </div>
            <!-- Grid row -->
          </section>
          <!--Section: Block Content-->

        </div>
        <!--Grid column-->

      </div>
    </div>
  </main>
  <!--Main layout-->

  <!-- Footer -->
  <jsp:include page="Footer.jsp"></jsp:include>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- Footer -->

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
  <!-- MDB -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Custom scripts -->
  <script type="text/javascript" src="js/script.js"></script>
</body>

</html>