<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Contacto</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="myHOME - real estate template project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="styles/contact.css">
        <link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
    </head>
    <body>

        <div class="super_container">
            <div class="super_overlay"></div>

            <!-- Header -->
            <header class="header">
                <!-- Header Bar -->
                <div class="header_bar d-flex flex-row align-items-center justify-content-start">
                    <div class="header_list">
                        <ul class="d-flex flex-row align-items-center justify-content-start">
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
                                <span>contacto@fukusuke.cl</span>
                            </li>
                        </ul>
                    </div>
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
                <div class="header_content d-flex flex-row align-items-center justify-content-start">
                    <div class="logo"><a href="#">FUKU<span>SUKE</span></a></div>
                    <nav class="main_nav">
                        <jsp:include page="navbar/MenuPrincipal.jsp" />
                    </nav>
                    <div class="submit ml-auto"><a href="index.html">Mi carrito (0)</a></div>
                    <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
                </div>

            </header>

            <!-- Menu -->

            <div class="menu text-right">
                <div class="menu_close"><i class="fa fa-times" aria-hidden="true"></i></div>
                <div class="menu_log_reg">
                    <div class="log_reg d-flex flex-row align-items-center justify-content-end">
                        <ul class="d-flex flex-row align-items-start justify-content-start">
                            <li><a data-toggle="modal" href="#modalLogin">Ingresar</a></li>
                            <li><a data-toggle="modal" href="#modalRegisto">Registro</a></li>
                        </ul>
                    </div>
                    <nav class="menu_nav">
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about.html">About us</a></li>
                            <li><a href="listings.html">Listings</a></li>
                            <li><a href="blog.html">News</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>

            <!-- Home -->

            <div class="home">
                <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg" data-speed="0.8"></div>
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="home_content text-center">
                                <div class="home_title">Contacto</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Contact -->

            <div class="contact">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="section_title_container text-center">
                                <div class="section_subtitle">Estamos atentos a tus consultas</div>
                                <div class="section_title"><h1>Contactenos ahora</h1></div>
                            </div>
                        </div>
                    </div>
                    <div class="row contact_row">

                        <!-- Contact - About -->
                        <div class="col-lg-4 contact_col">
                            <div class="logo"><a href="#">Fuku<span>Suke</span></a></div>
                            <div class="contact_text">
                                <p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in.</p>
                            </div>
                        </div>

                        <!-- Contact - Info -->
                        <div class="col-lg-4 contact_col">
                            <div class="contact_info">
                                <ul>
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="d-flex flex-column align-items-center justify-content-center">
                                            <div><img src="images/placeholder_2.svg" alt=""></div>
                                        </div>
                                        <span>Direccion, Local , Concepción</span>
                                    </li>
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="d-flex flex-column align-items-center justify-content-center">
                                            <div><img src="images/phone-call-2.svg" alt=""></div>
                                        </div>
                                        <span>+569 555 555 55</span>
                                    </li>
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="d-flex flex-column align-items-center justify-content-center">
                                            <div><img src="images/envelope-2.svg" alt=""></div>
                                        </div>
                                        <span>contacto@fukusuke.cl</span>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!-- Contact - Image -->
                        <div class="col-lg-4 contact_col">
                            <div class="contact_image d-flex flex-column align-items-center justify-content-center">
                                <img src="images/fondo_02.jpg" alt="">
                            </div>
                        </div>

                    </div>
                    <div class="row contact_form_row">
                        <div class="col">
                            <div class="contact_form_container">
                                <form action="#" class="contact_form text-center" id="contact_form">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <input type="text" class="contact_input" placeholder="Su nombre" required="required">
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="email" class="contact_input" placeholder="Su e-mail" required="required">
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="text" class="contact_input" placeholder="Asunto" required="required">
                                        </div>
                                    </div>
                                    <textarea class="contact_textarea contact_input" placeholder="Mensaje" required="required"></textarea>
                                    <button class="contact_button">Enviar</button>
                                </form>
                            </div>
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
        <script src="plugins/easing/easing.js"></script>
        <script src="plugins/progressbar/progressbar.min.js"></script>
        <script src="plugins/parallax-js-master/parallax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
        <script src="js/contact.js"></script>
    </body>
</html>