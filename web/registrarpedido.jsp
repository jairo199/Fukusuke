<%-- 
    Document   : registrarpedido
    Created on : 23-jun-2019, 12:49:59
    Author     : Cheqcoslov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Registro de pedidos</title>
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
        <header class="header">
            <div class="header_content d-flex flex-row align-items-center justify-content-start">
                <div class="logo"><a href="#">FUKU<span>SUKE</span></a></div>
                <nav class="main_nav">
                    <ul class="d-flex flex-row align-items-start justify-content-start">
                        <li class=""><a href="cpanel.html">Inicio</a></li>

                        <li class="nav-item dropdown">
                            <a class=" dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                    Administración
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="gestionclientes.html">Gestion de Clientes</a>
                                <a class="dropdown-item" href="gestionusuarios.html">Gestion de Usuarios</a>
                                <a class="dropdown-item" href="gestionroles.html">Gestion de Roles</a>
                                <a class="dropdown-item" href="parametrosgenerales.html">Parametros Generales</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class=" dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                Ventas
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="gestionpedidos.html">Gestion de pedidos</a>
                                <a class="dropdown-item" href="caja.html">Caja</a>
                            </div>
                        </li>

                        <li><a href="gestionproductos.html">Gestión Productos</a></li>


                    </ul>
                </nav>
                <div class="submit ml-auto"><a href="index.html">Cerrar sesión</a></div>
                <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
            </div>
        </header>
        <!-- Header -->
        <!-- Menu -->

        <div class="menu text-right">
            <div class="menu_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            <div class="menu_log_reg">
                <nav class="menu_nav">
                    <ul>
                        <li class=""><a href="cpanel.html">Inicio</a></li>

                        <li class="nav-item dropdown">
                            <a class=" dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                    Administración
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="gestionclientes.html">Gestion de Clientes</a>
                                <a class="dropdown-item" href="gestionusuarios.html">Gestion de Usuarios</a>
                                <a class="dropdown-item" href="gestionroles.html">Gestion de Roles</a>
                                <a class="dropdown-item" href="parametrosgenerales.html">Parametros Generales</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class=" dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                Ventas
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="gestionpedidos.html">Gestion de pedidos</a>
                                <a class="dropdown-item" href="caja.html">Caja</a>
                            </div>
                        </li>

                        <li><a href="gestionproductos.html">Gestión Productos</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- Menu -->


        <div class="home">
            <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/listings.jpg"
                data-speed="0.8"></div>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content text-center">
                            <div class="home_title">Bienvenido @Usuario</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Search -->



        <!-- Listings -->

        <div class="listings" align="center">
            <div class="container">
                <div class="row">

                    <div class="col-xl-12">
                        <hr>
                        <div class="footer_title" style="color: black;">Registro de pedidos</div>
                        <br>
                        <div class="container">
                            <form class="form-horizontal" action="/action_page.php">
                                <div class="form-group">
                                        <label class="control-label col-sm-12" for="idpedido">Codigo pedido:</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="idpedido"
                                                placeholder="Numero pedido" name="idpedido" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-12" for="run">Run Cliente:</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="run"
                                                placeholder="Insertar run cliente..." name="run">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                            <label class="control-label col-sm-12" for="fecha">Fecha:</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" id="fecha"
                                                     name="fecha">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                                <label class="control-label col-sm-12" for="estado">Estado:</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" id="estado"
                                                        placeholder="Estado..." name="estado">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="control-label col-sm-12" for="observacion">Observación:</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="observacion"
                                                            placeholder="Inserte observacion..." name="observacion">
                                                    </div>
                                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-success btn-block">Confirmar</button>
                                    </div>
                                </div>
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
                                    <p>Fukusuke Sushi Delivery es una empresa dedicada a crear los mejores 
                                        sabores con los ingredientes que nos regala el oceano, los mejores Sushis
                                        los encontraras en Fukusuke Sushi.</p>
                                </div>
                                <div class="social">
                                    <ul class="d-flex flex-row align-items-center justify-content-start">
                                        <!-- <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li> -->
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <!-- <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li> -->
                                    </ul>
                                </div>
                                <!-- <div class="footer_submit"><a href="#">submit listing</a></div> -->
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
                                            <span>+56 9 99022112</span>
                                        </li>
                                        <!-- Address -->
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <div><img src="images/placeholder.svg" alt=""></div>
                                            <span>Tucapel, no 235, Concepción</span>
                                        </li>
                                        <!-- Email -->
                                        <li class="d-flex flex-row align-items-center justify-content-start">
                                            <div><img src="images/envelope.svg" alt=""></div>
                                            <span>contacto@fukusuke.cl</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="footer_links usefull_links">
                                    <div class="footer_title">Enlaces útiles</div>
                                    <ul>
                                        <li><a href="#">Testimonios</a></li>
                                        <li><a href="#">Forma de comer Sushi</a></li>
                                        <li><a href="#">Tipos de salsas</a></li>
                                        <li><a href="#">Contacto</a></li>
                                        <li><a href="#">Sobre nosotros</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- Footer Column -->
                        <div class="col-xl-3 col-lg-6 footer_col">
                            <div class="footer_links">
                                <div class="footer_title">Tipos de Sushis</div>
                                <ul>
                                    <li><a href="https://gosushing.com/rep/8074/1720040/203/salmon-uramakijpg.jpg">Uramaki</a></li>
                                    <li><a href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDg74-9xOm2HtO00ixBrvp7sxEzB3lIco0LTjRQK89WS3fKsaa">Maki</a></li>
                                    <li><a href="https://images.japancentre.com/recipes/pics/217/main/photo_Nigiri-Sushi.jpg?1469572964">Nigiri</a></li>
                                    <li><a href="https://truffle-assets.imgix.net/1t1bxm43v4e3_22P8HKQ2vaCey0SaeMUoOK_temaki_landscapeThumbnail_es.jpeg">Temaki</a></li>
                                    <li><a href="https://www.hamaalwok.cl/wp-content/uploads/2018/11/Sushi-Hama_Gohan-clasico-Hama-_105_2880x2304-2.jpg">Gohan</a></li>
                                    <li><a href="https://cdn.pymesenlared.es/img/27/327/15455/gunkan-de-salmon.jpg">Gunkan</a></li>
                                    <li><a href="https://okdiario.com/img/2018/12/26/receta-de-sashimi-de-atun-1-655x368.jpg">Sashimi</a></li>
                                    <li><a href="http://imag.bonviveur.es/articulos/plato-de-hosomaki-variado.jpg">Hosomaki</a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- Footer Column -->
                        <div class="col-xl-3 col-lg-6 footer_col">
                            <div class="footer_title">Featured Property</div>
                            <div class="listing_small">
                                <div class="listing_small_image">
                                    <div>
                                        <img src="images/box.png" alt="">
                                    </div>
                                    <div
                                        class="listing_small_tags d-flex flex-row align-items-start justify-content-start flex-wrap">
                                        <div class="listing_small_tag tag_house"><a href="listings.html">house</a></div>
                                        <div class="listing_small_tag tag_sale"><a href="listings.html">for sale</a>
                                        </div>
                                    </div>
                                    <div class="listing_small_price">$ 562 346</div>
                                </div>
                                <div class="listing_small_content">
                                    <div
                                        class="listing_small_location d-flex flex-row align-items-start justify-content-start">
                                        <img src="images/icon_1.png" alt="">
                                        <a href="single.html">280 Doe Meadow Drive Landover, MD 20785</a>
                                    </div>
                                    <div class="listing_small_info">
                                        <ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
                                            <li class="d-flex flex-row align-items-center justify-content-start">
                                                <img src="images/icon_3.png" alt="">
                                                <span>2</span>
                                            </li>
                                            <li class="d-flex flex-row align-items-center justify-content-start">
                                                <img src="images/icon_4.png" alt="">
                                                <span>5</span>
                                            </li>
                                            <li class="d-flex flex-row align-items-center justify-content-start">
                                                <img src="images/icon_5.png" alt="">
                                                <span>2</span>
                                            </li>
                                        </ul>
                                    </div>
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
                            <div
                                class="footer_bar_content d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
                                <div class="copyright order-md-1 order-2">
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;
                                    <script>document.write(new Date().getFullYear());</script> All rights reserved |
                                    This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
                                        href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </div>
                                <nav class="footer_nav order-md-2 order-1 ml-md-auto">
                                    <!-- <ul
                                        class="d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="about.html">About us</a></li>
                                        <li><a href="listings.html">Listings</a></li>
                                        <li><a href="blog.html">News</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                    </ul> -->
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