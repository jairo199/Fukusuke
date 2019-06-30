<%-- 
    Document   : loginsistema
    Created on : 29-06-2019, 20:20:12
    Author     : kokex
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <title>Ingresar</title>
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
        <!-- Header -->
         <jsp:include page="navbar/Headerusuarios.jsp" />

            

            <!-- Home -->

            <div class="home">
                <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg"
                     data-speed="0.8"></div>
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="home_content text-center">
                                <div class="home_title">Inicie Sesión</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




            <!-- Listings -->

            <div class="listings">
                <div class="container">
                    <div class="row">					
                        <div class="col-xl-12">
                            <hr>
                            <div class="footer_title" style="color: black;">Ingrese sus datos de usuario</div>                            
                            <br>

                            <div class="">
                                <form method="post" action="<c:url value="/sistema"/>">
                                    <div class="form-group">
                                        <label for="rut">Codigo Usuario</label>
                                        <input type="number" class="form-control" id="codigo" name="codigo"  placeholder="Ingrese su Codigo de usuario">			    
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Contraseña</label>
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese contraseña">
                                    </div>
                                    <div class="form-group">

                                        <input type="submit" id="loginusuario" name="loginusuario" class="btn btn-success btn-block" value="Ingresar" >
                                    </div>
                                </form>

                                <c:forEach var="Error" items="${listaErrores}">
                                    <h3 class="alert alert-warning text-center"><c:out  value="${Error}"></c:out></h3>
                                </c:forEach> 

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