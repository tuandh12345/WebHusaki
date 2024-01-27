<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>HASAGI</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Poppins:wght@200;300;400;500&display=swap"
          rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    
    <!-- script
    ================================================== -->
    <script src="js/modernizr.js"></script>
</head>

<body class="bg-body" data-bs-spy="scroll" data-bs-target="#navbar" data-bs-root-margin="0px 0px -40%"
      data-bs-smooth-scroll="true" tabindex="0">
<button id="scrollToTop"><i class="bi bi-house"></i>Home1</button>
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="search" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
        <title>Search</title>
        <path fill="currentColor"
              d="M19 3C13.488 3 9 7.488 9 13c0 2.395.84 4.59 2.25 6.313L3.281 27.28l1.439 1.44l7.968-7.969A9.922 9.922 0 0 0 19 23c5.512 0 10-4.488 10-10S24.512 3 19 3zm0 2c4.43 0 8 3.57 8 8s-3.57 8-8 8s-8-3.57-8-8s3.57-8 8-8z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 16 16">
        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="cart" viewBox="0 0 16 16">
        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-left" viewBox="0 0 32 32">
        <path fill="currentColor"
              d="m13.281 6.781l-8.5 8.5l-.687.719l.687.719l8.5 8.5l1.438-1.438L7.938 17H28v-2H7.937l6.782-6.781z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right" viewBox="0 0 32 32">
        <path fill="currentColor"
              d="M18.719 6.781L17.28 8.22L24.063 15H4v2h20.063l-6.782 6.781l1.438 1.438l8.5-8.5l.687-.719l-.687-.719z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="shipping-fast" viewBox="0 0 32 32">
        <path fill="currentColor"
              d="M0 6v2h19v15h-6.156c-.446-1.719-1.992-3-3.844-3c-1.852 0-3.398 1.281-3.844 3H4v-5H2v7h3.156c.446 1.719 1.992 3 3.844 3c1.852 0 3.398-1.281 3.844-3h8.312c.446 1.719 1.992 3 3.844 3c1.852 0 3.398-1.281 3.844-3H32v-8.156l-.063-.157l-2-6L29.72 10H21V6zm1 4v2h9v-2zm20 2h7.281L30 17.125V23h-1.156c-.446-1.719-1.992-3-3.844-3c-1.852 0-3.398 1.281-3.844 3H21zM2 14v2h6v-2zm7 8c1.117 0 2 .883 2 2s-.883 2-2 2s-2-.883-2-2s.883-2 2-2zm16 0c1.117 0 2 .883 2 2s-.883 2-2 2s-2-.883-2-2s.883-2 2-2z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="shopping-cart" viewBox="0 0 32 32">
        <path fill="currentColor"
              d="M5 7c-.55 0-1 .45-1 1s.45 1 1 1h2.219l2.625 10.5c.222.89 1.02 1.5 1.937 1.5H23.25c.902 0 1.668-.598 1.906-1.469L27.75 10H11l.5 2h13.656l-1.906 7H11.781L9.156 8.5A1.983 1.983 0 0 0 7.22 7zm17 14c-1.645 0-3 1.355-3 3s1.355 3 3 3s3-1.355 3-3s-1.355-3-3-3zm-9 0c-1.645 0-3 1.355-3 3s1.355 3 3 3s3-1.355 3-3s-1.355-3-3-3zm0 2c.563 0 1 .438 1 1c0 .563-.438 1-1 1c-.563 0-1-.438-1-1c0-.563.438-1 1-1zm9 0c.563 0 1 .438 1 1c0 .563-.438 1-1 1c-.563 0-1-.438-1-1c0-.563.438-1 1-1z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="gift" viewBox="0 0 32 32">
        <path fill="currentColor"
              d="M12 5c-1.645 0-3 1.355-3 3c0 .352.074.684.188 1H4v6h1v13h22V15h1V9h-5.188A2.95 2.95 0 0 0 23 8c0-1.645-1.355-3-3-3c-1.75 0-2.938 1.328-3.719 2.438c-.105.148-.187.292-.281.437c-.094-.145-.176-.29-.281-.438C14.938 6.329 13.75 5 12 5zm0 2c.625 0 1.438.672 2.063 1.563c.152.218.128.23.25.437H12c-.566 0-1-.434-1-1c0-.566.434-1 1-1zm8 0c.566 0 1 .434 1 1c0 .566-.434 1-1 1h-2.313c.122-.207.098-.219.25-.438C18.563 7.673 19.375 7 20 7zM6 11h20v2h-9v-1h-2v1H6zm1 4h18v11h-8V16h-2v10H7z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="return" viewBox="0 0 32 32">
        <path fill="currentColor"
              d="M16 3C8.832 3 3 8.832 3 16s5.832 13 13 13s13-5.832 13-13h-2c0 6.086-4.914 11-11 11S5 22.086 5 16S9.914 5 16 5c3.875 0 7.262 1.984 9.219 5H20v2h8V4h-2v3.719C23.617 4.844 20.02 3 16 3z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="quote" viewBox="0 0 24 24">
        <path fill="currentColor" d="m15 17l2-4h-4V6h7v7l-2 4h-3Zm-9 0l2-4H4V6h7v7l-2 4H6Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="nav-icon" viewBox="0 0 16 16">
        <path d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 16 16">
        <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
    </symbol>
    <symbol xmlns="http://www.w3.org/2000/svg" id="navbar-icon" viewBox="0 0 16 16">
        <path d="M14 10.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0 0 1h3a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-7a.5.5 0 0 0 0 1h7a.5.5 0 0 0 .5-.5zm0-3a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0 0 1h11a.5.5 0 0 0 .5-.5z"/>
    </symbol>
</svg>

<div id="preloader">
      <span class="loader">
        <span class="loader-inner"></span>
      </span>
</div>

<div class="search-box position-relative overflow-hidden w-100">
    <div class="search-wrap">
        <div class="close-button position-absolute">
            <svg class="close" width="22" height="22">
                <use xlink:href="#close"></use>
            </svg>
        </div>
        <form id="search-form" class="text-center pt-3" action="" method="post">
            <input type="text" id="search-input" class="search-input fs-5 p-4 bg-transparent" placeholder="Tìm kiếm">
            <svg id="search-icon" class="search" width="22" height="22">
                <use xlink:href="#search"></use>
            </svg>
        </form>
    </div>
</div>

<header id="header" class="site-header text-black">
    <svg class="search" width="22" height="22">
        <use xlink:href="#search"></use>
    </svg>
    <nav id="header-nav" class="navbar navbar-expand-lg px-3 mb-3">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">
                <img src="images/main-logo.png" class="logo">
            </a>
            <button class="navbar-toggler d-flex d-lg-none order-3 p-2" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false"
                    aria-label="Toggle navigation">
                <svg class="navbar-icon" width="50" height="50">
                    <use xlink:href="#navbar-icon"></use>
                </svg>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar" aria-labelledby="bdNavbarOffcanvasLabel">
                <div class="offcanvas-header px-4 pb-0">
                    <a class="navbar-brand" href="index.html">
                        <img src="images/main-logo.png" class="logo">
                    </a>
                    <button type="button" class="btn-close btn-close-black" data-bs-dismiss="offcanvas"
                            aria-label="Close" data-bs-target="#bdNavbar"></button>
                </div>
                <div class="offcanvas-body">
                    <ul id="navbar"
                        class="navbar-nav text-uppercase justify-content-end align-items-center flex-grow-1 pe-3">
                        <li class="nav-item dropdown">
                            <a class="nav-link me-4" href="/home">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link me-4" href="#about-us">Sản phẩm</a>
                        </li>
                        <li class="nav-item dropdown me-4">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdownPages" data-bs-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">Khuyến mại</a>
                            <ul class="dropdown-menu list-unstyled" aria-labelledby="dropdownPages">
                                <li>
                                    <a href="shop-sidebar.html" class="dropdown-item item-anchor">Shop Sidebar <span
                                            class="badge bg-secondary text-dark ms-2">PRO</span></a>
                                </li>
                                <li>
                                    <a href="shop-four-column.html" class="dropdown-item item-anchor">Shop Grid <span
                                            class="badge bg-secondary text-dark ms-2">PRO</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown me-4">
                            <a class="nav-link " href="#">Liên hệ</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="#">Góp ý</a>
                        </li>
                        <li class="nav-item">
                            <div class="user-items ps-5">
                                <ul class="d-flex justify-content-end list-unstyled">
                                    <li class="search-item pe-3" data-bs-toggle="collapse" data-bs-target="#search-box"
                                        aria-controls="search-box" aria-expanded="false" aria-label="Toggle navigation">
                                        <svg class="search" width="18" height="18">
                                            <use xlink:href="#search"></use>
                                        </svg>
                                    </li>
                                    <li class="pe-3">
                                        <a href="#">
                                            <svg class="user" width="18" height="18">
                                                <use xlink:href="#user"></use>
                                            </svg>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="cart.html">
                                            <svg class="cart" width="18" height="18">
                                                <use xlink:href="#cart"></use>
                                            </svg>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<section id="billboard" class="overflow-hidden">
    <div class="swiper main-swiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="banner-item">

                                <div id="carouselExample" class="carousel slide">
                                    <div class="carousel-inner">
                                      <div class="carousel-item active">
                                        <img src="./images/banner5.jpg" class="d-block w-100" alt="...">
                                      </div>
                                      <div class="carousel-item">
                                        <img src="./images/banner4.jpg" class="d-block w-100" alt="...">
                                      </div>
                                      <div class="carousel-item">
                                        <img src="./images/banner3.jpg" class="d-block w-100" alt="...">
                                      </div>
                                      <div class="carousel-item">
                                        <img src="./images/banner1.jpg" class="d-block w-100" alt="...">
                                      </div>
                                    </div>
                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                      <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                      <span class="visually-hidden">Next</span>
                                    </button>
                                  </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>          
        </div>
    </div>  
</section>


<section id="company-services" class="padding-large">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-6 pb-3">
                <div class="icon-box d-flex align-items-center">
                    <div class="icon-box-icon pt-3 pe-3 pb-3 ps-3">
                        <svg class="shipping-fast">
                            <use xlink:href="#shipping-fast"/>
                        </svg>
                    </div>
                    <div class="icon-box-content ps-3">
                        <h3 class="card-title text-uppercase text-dark">GIAO HÀNG NHANH CHÓNG</h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 pb-3">
                <div class="icon-box d-flex align-items-center">
                    <div class="icon-box-icon pt-3 pe-3 pb-3 ps-3">
                        <svg class="shopping-cart">
                            <use xlink:href="#shopping-cart"/>
                        </svg>
                    </div>
                    <div class="icon-box-content ps-3">
                        <h3 class="card-title text-uppercase text-dark">MUA SẮM TRỰC TUYẾN</h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 pb-3">
                <div class="icon-box d-flex align-items-center">
                    <div class="icon-box-icon pt-3 pe-3 pb-3 ps-3">
                        <svg class="gift">
                            <use xlink:href="#gift"/>
                        </svg>
                    </div>
                    <div class="icon-box-content ps-3">
                        <h3 class="card-title text-uppercase text-dark">ĐÓNG GÓI ĐẶC BIỆT</h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 pb-3">
                <div class="icon-box d-flex align-items-center">
                    <div class="icon-box-icon pt-3 pe-3 pb-3 ps-3">
                        <svg class="return">
                            <use xlink:href="#return"/>
                        </svg>
                    </div>
                    <div class="icon-box-content ps-3">
                        <h3 class="card-title text-uppercase text-dark">CHÍNH SÁCH ĐỔI TRẢ & HOÀN TIỀN</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="about-us">
    <div class="container-fluid">
        <div class="row align-items-center justify-content-between g-5">
            <div class="col-lg-6">
                <div class="image-holder mb-4 jarallax">
                    <img src="./images/img_about.jfif" alt="single" class="img-fluid jarallax-img">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="detail p-5">
                    <div class="display-header">
                        <h2 class="display-2 text-uppercase text-dark pb-2">GIỚI THIỆU VỀ CỬA HÀNG HASAGI</h2>
                        <h4 class="pb-3">
                            Chào mừng bạn đến với cửa hàng bán mỹ phẩm HASAGI. 
                            Chúng tôi cung cấp các sản phẩm chăm sóc da chất lượng cao từ các thương hiệu uy tín nhất trên thị trường. 
                            Chúng tôi cam kết mang đến cho khách hàng những sản phẩm chất lượng tốt nhất để giúp bạn có được làn da khỏe đẹp và tự tin hơn. 
                            Ngoài ra, chúng tôi cũng cung cấp các dịch vụ tư vấn chuyên nghiệp để giúp bạn chọn lựa sản phẩm phù hợp nhất với nhu cầu của mình. 
                            Hãy đến với cửa hàng của chúng tôi để trải nghiệm những sản phẩm chăm sóc da tốt nhất và được tư vấn bởi những chuyên gia hàng đầu trong ngành mỹ phẩm.
                        </h4>                                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="featured-products" class="product-store position-relative padding-large">
    <div class="container-fluid">
        <div class="row">
            <div class="display-header pb-3 d-flex justify-content-between flex-wrap col-md-12">
                <h2 class="display-2 text-dark text-uppercase">SẢN PHẨM NỔI BẬT</h2>
                <a href="shop.html" class="btn btn-medium btn-arrow btn-normal position-relative">
                    <span class="text-uppercase">TẤT CẢ SẢN PHẨM</span>
                    <svg class="arrow-right position-absolute" width="18" height="20">
                        <use xlink:href="#arrow-right"></use>
                    </svg>
                </a>
            </div>
        </div>
        <div class="row">
            <div id="featured-swiper" class="product-swiper col-md-12">
                <div class="swiper">
                    <div class="swiper-wrapper">


                        <div class="swiper-slide">
                            <div class="product-card image-zoom-effect link-effect d-flex flex-wrap">
                                <div class="image-holder">
                                    <img src="./images/product1.png" alt="product-item"
                                         class="product-image img-fluid">
                                </div>
                                <div class="cart-concern">
                                    <h3 class="card-title text-uppercase pt-3 text-primary">
                                        <a href="single-product.html" class="text-primary">HADA LABO</a>
                                    </h3>
                                    <div class="cart-info">
                                        <a class="pseudo-text-effect" href="#"
                                           data-after="ADD TO CART"><span>67.000 <u>đ</u></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                        <div class="swiper-slide">
                            <div class="product-card image-zoom-effect link-effect d-flex flex-wrap">
                                <div class="image-holder">
                                    <img src="./images/product2.png" alt="product-item"
                                         class="product-image img-fluid">
                                </div>
                                <div class="cart-concern">
                                    <h3 class="card-title text-uppercase pt-3 text-primary">
                                        <a href="single-product.html" class="text-primary">CETAPHIL</a>
                                    </h3>
                                    <div class="cart-info">
                                        <a class="pseudo-text-effect" href="#" data-after="ADD TO CART">
                                            <span>126.000 <u>đ</u></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card image-zoom-effect link-effect d-flex flex-wrap">
                                <div class="image-holder">
                                    <img src="images/product3.png" alt="product-item"
                                         class="product-image img-fluid">
                                </div>
                                <div class="cart-concern">
                                    <h3 class="card-title text-uppercase pt-3 text-primary">
                                        <a href="single-product.html" class="text-primary">SIMPLE</a>
                                    </h3>
                                    <div class="cart-info">
                                        <a class="pseudo-text-effect" href="#" data-after="ADD TO CART">
                                            <span>95.000 <u>đ</u></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card image-zoom-effect link-effect d-flex flex-wrap">
                                <div class="image-holder">
                                    <img src="images/product4.jpg" alt="product-item"
                                         class="product-image img-fluid">
                                </div>
                                <div class="cart-concern">
                                    <h3 class="card-title text-uppercase pt-3 text-primary">
                                        <a href="single-product.html" class="text-primary">3CE</a>
                                    </h3>
                                    <div class="cart-info">
                                        <a class="pseudo-text-effect" href="#" data-after="ADD TO CART">
                                            <span>373.000 <u>đ</u></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card image-zoom-effect link-effect d-flex flex-wrap">
                                <div class="image-holder">
                                    <img src="images/product5.png" alt="product-item"
                                         class="product-image img-fluid">
                                </div>
                                <div class="cart-concern">
                                    <h3 class="card-title text-uppercase pt-3 text-primary">
                                        <a href="single-product.html" class="text-primary">Cocoon</a>
                                    </h3>
                                    <div class="cart-info">
                                        <a class="pseudo-text-effect" href="#" data-after="ADD TO CART">
                                            <span>207.000 <u>đ</u></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="product-card image-zoom-effect link-effect d-flex flex-wrap">
                                <div class="image-holder">
                                    <img src="images/product6.jpg" alt="product-item"
                                         class="product-image img-fluid">
                                </div>
                                <div class="cart-concern">
                                    <h3 class="card-title text-uppercase pt-3 text-primary">
                                        <a href="single-product.html" class="text-primary">Vaseline</a>
                                    </h3>
                                    <div class="cart-info">
                                        <a class="pseudo-text-effect" href="#" data-after="ADD TO CART">
                                            <span>70.000 <u>đ</u></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="product-card image-zoom-effect link-effect d-flex flex-wrap">
                                <div class="image-holder">
                                    <img src="images/product7.jpg" alt="product-item"
                                         class="product-image img-fluid">
                                </div>
                                <div class="cart-concern">
                                    <h3 class="card-title text-uppercase pt-3 text-primary">
                                        <a href="single-product.html" class="text-primary">Klairs</a>
                                    </h3>
                                    <div class="cart-info">
                                        <a class="pseudo-text-effect" href="#" data-after="ADD TO CART">
                                            <span>374.000 <u>đ</u></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="swiper-pagination text-center mt-5"></div>
            </div>
        </div>
    </div>
</section>

<section id="testimonials" class="position-relative">
    <div class="container">
        <div class="row">
            <div class="review-content position-relative">
                <div class="swiper-icon swiper-arrow swiper-arrow-prev position-absolute d-flex align-items-center justify-content-center">
                    <svg class="icon-arrow" width="25" height="25">
                        <use xlink:href="#arrow-left"/>
                    </svg>
                </div>
                <div class="swiper testimonial-swiper">
                    <div class="quotation text-center">
                        <svg class="quote">
                            <use xlink:href="#quote"/>
                        </svg>
                    </div>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide text-center d-flex justify-content-center">
                            <div class="review-item col-md-10">
                                <i class="icon icon-review"></i>
                                <blockquote class="fs-4"><h2>Khám phá vẻ đẹp tự nhiên của bạn:</h2>
                                    Chúng tôi cung cấp các sản phẩm chăm sóc da và trang điểm tự nhiên 
                                    để giúp bạn giữ cho làn da của mình luôn khỏe mạnh và rạng rỡ.
                                </blockquote>                               
                            </div>
                        </div>
                        <div class="swiper-slide text-center d-flex justify-content-center">
                            <div class="review-item col-md-10">
                                <i class="icon icon-review"></i>
                                <blockquote class="fs-4"><h2>Chăm sóc da của bạn, chăm sóc cuộc sống của bạn:</h2>
                                    Chúng tôi cung cấp các sản phẩm chăm sóc da và trang điểm chất lượng cao 
                                    để giúp bạn giữ cho làn da của mình luôn khỏe mạnh và rạng rỡ.
                                </blockquote>                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-icon swiper-arrow swiper-arrow-next position-absolute d-flex align-items-center justify-content-center">
                    <svg class="icon-arrow" width="25" height="25">
                        <use xlink:href="#arrow-right"/>
                    </svg>
                </div>
            </div>
        </div>
    </div>
    <div class="swiper-pagination text-center position-absolute"></div>
</section>

<hr>

<section class="subscribe">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-lg-8">
                <div class="subscribe-content padding-large">
                    <div class="subscribe-header">
                        <h2 class="display-4">Đăng ký để nhận ưu đãi & giảm giá</h2>
                    </div>
                    <form id="form">
                        <input type="text" name="email" placeholder="hoten@gmail.com"
                               class="w-100 bg-light border-0 ps-5 fst-italic">
                        <button class="btn btn-full btn-black text-uppercase">ĐĂNG</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


<footer id="footer" class="overflow-hidden padding-large" style="background-color: #DCDCDC;">
    <div class="container-fluid">
        <div class="row">
            <div class="row d-flex flex-wrap justify-content-between">
                <div class="col-lg-3 col-sm-6 pb-3 pe-4">
                    <div class="footer-menu">
                        <img src="images/main-logo.png" alt="logo" class="pb-3">
                        <p>Mi facilisis facilisis orci vitae. Cum nisi morbi integer tincidunt ornare ac praesent in.
                           Dolor tempus arcu sit quis nunc arcu facilisis quis eget nisi morbi integer.</p>
                    </div>
                    <div class="copyright">
                        <p>Â© Copyright 2023. Design by <a href="https://templatesjungle.com/">TemplatesJungle</a>
                           Distributed by <a href="https://themewagon.com">ThemeWagon</a>
                        </p>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6 pb-3">
                    <div class="footer-menu text-uppercase">
                        <h5 class="widget-title pb-2">Quick Links</h5>
                        <ul class="menu-list list-unstyled text-uppercase">
                            <li class="menu-item pb-2">
                                <a href="#billboard">Home</a>
                            </li>
                            <li class="menu-item pb-2">
                                <a href="#about-us">About</a>
                            </li>
                            <li class="menu-item pb-2">
                                <a href="#company-services">Services</a>
                            </li>
                            <li class="menu-item pb-2">
                                <a href="#latest-blog">Blogs</a>
                            </li>
                            <li class="menu-item pb-2">
                                <a href="#contact">Contact</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6 pb-3">
                    <div class="footer-menu text-uppercase">
                        <h5 class="widget-title pb-2">Social</h5>
                        <div class="social-links">
                            <ul class="list-unstyled">
                                <li class="pb-2">
                                    <a href="#">Facebook</a>
                                </li>
                                <li class="pb-2">
                                    <a href="#">Twitter</a>
                                </li>
                                <li class="pb-2">
                                    <a href="#">Pinterest</a>
                                </li>
                                <li class="pb-2">
                                    <a href="#">Instagram</a>
                                </li>
                                <li>
                                    <a href="#">Youtube</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-menu contact-item">
                        <h5 class="widget-title text-uppercase pb-2">Contact Us</h5>
                        <p><a href="">+ 12(0) 34 56 78 910</a></p>
                        <p><a href="mailto:">hello@templatesjungle.com</a></p>
                        <p>tea berry, marinette, USA</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var scrollToTopButton = document.getElementById('scrollToTop');
        window.addEventListener('scroll', function () {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                scrollToTopButton.style.display = 'block';
            } else {
                scrollToTopButton.style.display = 'none';
            }
        });

        scrollToTopButton.addEventListener('click', function () {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
    });
    document.addEventListener('DOMContentLoaded', function () {
        var searchForm = document.getElementById('search-form');
        var searchIcon = document.getElementById('search-icon');
        searchIcon.addEventListener('click', function (event) {
            event.preventDefault();
            searchForm.submit();
        });
    });
</script>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="js/plugins.js"></script>
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>