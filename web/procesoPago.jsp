<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <title>Proceso de pago - Fukusuke</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="myHOME - real estate template project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/listings.css">
        <link rel="stylesheet" type="text/css" href="styles/listings_responsive.css">
    </head>

    <body>

        <div class="super_container">
            <div class="super_overlay"></div>

            <!-- Headerasdasdsa -->

            <!-- Header -->
            <header class="header">
                <!-- Header Bar -->
                <jsp:include page="navbar/Header.jsp" />


                <!-- Header Content -->
                <div class="header_content d-flex flex-row align-items-center justify-content-start">
                    <div class="logo"><a href="#">FUKU<span>SUKE</span></a></div>
                    <nav class="main_nav">
                        <ul class="d-flex flex-row align-items-start justify-content-start">
                            <jsp:include page="navbar/MenuPrincipal.jsp" />
                        </ul>
                    </nav>
                    <div class="submit ml-auto"><a href="/Fukusuke/Carrito"><span class="fa fa-shopping-basket"> </span> Mi carrito <label id="Carrito">(<c:out value="${Carrito.size()}"/>)</label></a></div>

                    <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
                </div>

            </header>

            <!-- Menu -->

            <div class="menu text-right">
                <div class="menu_close"><i class="fa fa-times" aria-hidden="true"></i></div>
                <div class="menu_log_reg">
                    <div class="log_reg d-flex flex-row align-items-center justify-content-end">
                        <ul class="d-flex flex-row align-items-start justify-content-start">
                            <c:choose>
                                <c:when test="${SessionUsuario != null}">
                                    <li><a  href="/Fukusuke/LoginController">Mi Cuenta </a></li>                                                                                  
                                    </c:when> 

                                <c:otherwise>
                                    <li><a data-toggle="modal" href="#modalLogin">Ingresar</a></li>
                                    <li><a data-toggle="modal" href="#modalRegisto">Registro</a></li>
                                    </c:otherwise>
                                </c:choose>
                        </ul>
                    </div>
                    <nav class="menu_nav">
                        <ul>
                            <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Home" name="nav_home" class="btn btn-success"></form></a></li>
                            <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Nosotros" name="nav_nosotros" class="btn btn-success"></form></a></li>
                            <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Productos" name="nav_productos" class="btn btn-success"></form></a></li>
                            <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Contacto" name="nav_contacto" class="btn btn-success"></form></a></li>

                        </ul>
                    </nav>
                </div>
            </div>

            <!-- Home -->

            <div class="home">
                <div class="parallax_background parallax-window" data-parallax="scroll"
                     data-speed="0.8"></div>
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="home_content text-center">
                                <hr>
                                <div class="home_title" style="color: #55407d;">Proceso de pago.</div>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Search -->



            <!-- Listings -->

            <div class="listings">
                <div class="container">
                    <div class="row">					
                        <div class="col-xl-12">
                            <br>




                            <div class="col">
                                <center><img src="https://cdn.dribbble.com/users/695467/screenshots/3316238/chop.gif" height="80px"> </center>
                            </div>

                            <div class="text-center" style="color: #55407d;" id="pay" >

                                <form action="https://des.payku.cl/gateway/pago" method="post">
                                    <input type="hidden" id="order_id" name="order_id" value="<c:out value="${NUM_PEDIDO}"/>">
                                    <input type="hidden" id="amount" name="amount" value="<c:out value="${Total}"/>">
                                    <input type="hidden" id="amount_order" name="amount_order" value="<c:out value="${Total}"/>">
                                    <input type="hidden" name="directpay" value="99"/>
                                    <input type="hidden" name="percent" value="0"/>
                                    <input type="hidden" name="currency" value="CLP"/>
                                    <input type="hidden" name="email_from" value="<c:out value="${SessionUsuario.email}"/>"/>
                                    <input type="hidden" name="token" value="8d018068a30315b0df231c998d17e9f9"></input>
                                    <input type="hidden" name="notify_url" value="http://localhost:8080/Fukusuke/1.jsp"/>
                                    <input type="hidden" name="return_url" value="http://localhost:8080/Fukusuke/2.php"/>
                                    <input type="hidden" name="detail" value="Fukusuke Pedido N°: <c:out value="${NUM_PEDIDO}"/> | Cliente <c:out value="${SessionUsuario.nombre_completo}"/> "/>
                                    <input type="hidden" name="adittional" value="0"/>
                                    <button type="submit" class="btn btn-light btn-block" id="btn_pay" name="btn_pay" >continuar...</button>                                
                                </form>
                                <script>
                                    setInterval(function () {
                                        document.pay.submit();

                                    }, 5000);
                                </script>
                            </div>

                            <hr>



                        </div>

                    </div>
                </div>
            </div>

            <!-- Footer -->


            <footer class="footer">
                <div class="footer_content">
                    <div class="container">
                        <div class="row">

                            <!-- Footer Column -->
                            <div class="col-xl-3 col-lg-6 footer_col">
                                <div class="footer_about">
                                    <div class="footer_logo"><a href="#">FUKU<span>SUKE</span></a></div>
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
                                    <div class="footer_title">InformaciÃ³n</div>
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
                                    <div class="copyright order-md-1 order-2"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados | Fukusuke 2019
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                                    <nav class="footer_nav order-md-2 order-1 ml-md-auto">
                                        <ul class="d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="nosotros.html">Nosotros</a></li>
                                            <li><a href="Productos.html">Productos</a></li>									
                                            <li><a href="contacto.html">Contacto</a></li>
                                        </ul>
                                    </nav>
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
        <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
        <script src="js/listings.js"></script>
    </body>

</html>