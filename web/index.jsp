<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Fukusuke Sushi-Delivery</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="myHOME - real estate template project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
    </head>
    <body>

        <div class="super_container">
            <div class="super_overlay"></div>


            <jsp:include page="navbar/ModalIngreso.jsp" />

            <jsp:include page="navbar/ModalRegistro.jsp" />




            <!-- Header -->
            <header class="header">		
                <!-- Header Bar -->
                <div class="header_bar d-flex flex-row align-items-center justify-content-start">
                    
                    <jsp:include page="navbar/Header.jsp" /> 
                    
                    
                    <div class="ml-auto d-flex flex-row align-items-center justify-content-start">
                        <div class="social">
                            <ul class="d-flex flex-row align-items-center justify-content-start">
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                        <div class="log_reg d-flex flex-row align-items-center justify-content-start">
                            <ul class="d-flex flex-row align-items-start justify-content-start">						

                                <li><a data-toggle="modal" href="#modalLogin">Ingresar</a></li>
                                <li><a data-toggle="modal" href="#modalRegisto">Registro</a></li>



                            </ul>
                        </div>
                    </div>
                </div>


                <!-- Header Content -->
                
                        <jsp:include page="navbar/MenuPrincipal.jsp" />

                    

            <!-- Home -->

            <div class="home">

                <!-- Home Slider -->
                <div class="home_slider_container">
                    <div class="owl-carousel owl-theme home_slider">

                        <!-- Slide -->
                        <div class="slide">
                            <div class="background_image" style="background-image:url(images/handroll.jpg)"></div>
                            <div class="home_container">
                                <div class="container">
                                    <div class="row">
                                        <div class="col">
                                            <div class="home_content">
                                                                                                
                                                
                                                <div class="home_title"><h1>Promocion 1</h1></div>
                                                <div class="home_price_tag">$3990</div>
                                                <hr>
                                                <div class="container">
                                                    <p>
                                                        LLevate la Promocion 1 de 16 Piezas de 
                                                        sushi que incluye:<br>
                                                        4 piezas Queso Crema.<br>
                                                        4 Piezas Panko Kanikama.<br>
                                                        4 Piezas Tempura.<br>
                                                        4 Piezas Hosomaki.<br>
                                                        por solo ¡ $3990 ! Stock Limitado
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Slide -->
                        <div class="slide">
                            <div class="background_image" style="background-image:url(images/fondo_02.jpg)"></div>
                            <div class="home_container">
                                <div class="container">
                                    <div class="row">
                                        <div class="col">
                                            <div class="home_content">
                                                <div class="home_title"><h1>Promocion 5</h1></div>
                                                <div class="home_price_tag">$8990</div>
                                                <hr>
                                                <div class="container">
                                                    <p>
                                                        LLevate la Promo 5 incluye:<br>
                                                        8 piezas Queso Crema.<br>
                                                        8 Piezas Panko Kanikama.<br>
                                                        8 Piezas Tempura.<br>
                                                        8 Piezas Hosomaki.<br>
                                                        1 Pepsi 2.25Lt.<br> 
                                                        por solo ¡ $8990 ! Stock Limitado
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Slide -->
                        <div class="slide">
                            <div class="background_image" style="background-image:url(images/fondo_03.jpg)"></div>
                            <div class="home_container">
                                <div class="container">
                                    <div class="row">
                                        <div class="col">
                                            <div class="home_content">
                                                <div class="home_title"><h1>Promocion 6</h1></div>
                                                <div class="home_price_tag">$11490</div>
                                                <hr>
                                                <div class="container">
                                                    <p>
                                                        LLevate la Promo 6 incluye:<br>
                                                        15 piezas Panko Salmon.<br>
                                                        15 Piezas Panko Kanikama.<br>
                                                        10 Piezas Tempura.<br>
                                                        10 Piezas Panko Pollo.<br>
                                                        1 Fanta 2Lt.<br> 
                                                        por solo ¡ $11490 ! Stock Limitado
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Home Slider Navigation -->
                    <div class="home_slider_nav"><i class="fa fa-angle-right" aria-hidden="true"></i></div>

                </div>
            </div>	




            <!-- ZONAS MAPS -->

            <div class="map_section container_reset">
                <div class="container">
                    <div class="row row-xl-eq-height">

                        <!-- Map -->
                        <div class="col-xl-9 order-xl-1 order-2">
                            <div class="map">
                                <div id="google_map" class="google_map">
                                    <div class="map_container">
                                        <div id="map"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Content -->
                        <div class="col-xl-3 order-xl-2 order-1">
                            <div class="map_section_content">
                                <div class="map_overlay">
                                    <svg fill="#55407d" width="100%" height="100%" viewBox="0 0 100 100" preserveAspectRatio="none">
                                    <path d="M100,0 a-200,150 0 0 0 -100,100 h100 v-100 z" />
                                    </svg>
                                </div>
                                <div class="section_title_container">
                                    <div class="section_subtitle">Zona Delivery</div>
                                    <div class="section_title"><h1>Conoce las zonas donde realizamos envíos</h1></div>
                                    <div><img src="images/scooter.svg" alt="" height="100px" ></div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <footer class="footer">
                <div class="footer_content">
                    <div class="container">
                        <div class="row">

                            <!-- Footer Column -->
                            <div class="col-xl-3 col-lg-6 footer_col">
                                <div class="footer_about">
                                    <div class="footer_logo"><a href="">FUKU<span>SUKE</span></a></div>
                                    <div class="footer_text">

                                        <p>El restaurant de sushi Fukusuke, es una empresa dedicada a la preparación y venta de sushi en la modalidad online y años de trayectoria en su propio local.</p>

                                    </div>
                                    <div class="social">
                                        <ul class="d-flex flex-row align-items-center justify-content-start">

                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                                        </ul>
                                    </div>

                                </div>
                            </div>

                            <!-- Footer Column -->
                            <div class="col-xl-3 col-lg-6 footer_col">
                                <div class="footer_column">
                                    <div class="footer_title">Información</div>
                                    <div class="footer_info">
                                        <ul>
                                            <!-- Phone -->
                                            <li class="d-flex flex-row align-items-center justify-content-start">
                                                <div><img src="images/phone-call.svg" alt=""></div>
                                                <span>+569 555 555 55</span>
                                            </li>
                                            <!-- Address -->
                                            <li class="d-flex flex-row align-items-center justify-content-start">
                                                <div><img src="images/placeholder.svg" alt=""></div>
                                                <span>Direccion, Local , Concepción</span>
                                            </li>
                                            <!-- Email -->
                                            <li class="d-flex flex-row align-items-center justify-content-start">
                                                <div><img src="images/envelope.svg" alt=""></div>
                                                <span>contacto@fukusuke.cl
                                                </span>
                                            </li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer_bar">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="footer_bar_content d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
                                    <nav class="footer_nav order-md-1 order-2 ml-md-auto">
                                        
                                    </nav>
                                    <div class="copyright order-md-2 order-1"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados | Fukusuke 2019
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="styles/bootstrap-4.1.2/popper.js"></script>
        <script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
        <script src="plugins/greensock/TweenMax.min.js"></script>
        <script src="plugins/greensock/TimelineMax.min.js"></script>
        <script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
        <script src="plugins/greensock/animation.gsap.min.js"></script>
        <script src="plugins/greensock/ScrollToPlugin.min.js"></script>
        <script src="plugins/OwlCarousel2-2.3.4/owl.carousel.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="plugins/progressbar/progressbar.min.js"></script>
        <script src="plugins/parallax-js-master/parallax.min.js"></script>
        <script src="js/custom.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAnfXaLqntl6y9jYOux7z1HRHoVk8RQZM0"></script>
        <script src="js/custom.js"></script>
        
    </body>
</html>