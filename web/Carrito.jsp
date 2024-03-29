<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <title>Mi Carrito de compras</title>
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


        <jsp:include page="navbar/ModalIngreso.jsp" />

        <jsp:include page="navbar/ModalRegistro.jsp" />

        <div class="super_container">
            <div class="super_overlay"></div>

            <!-- Header -->

            <!-- Header -->
            <header class="header">
                <!-- Header Bar -->
                <jsp:include page="navbar/Header.jsp" />


                <!-- Header Content -->
                <div class="header_content d-flex flex-row align-items-center justify-content-start">
                    <div class="logo"><a href="#">FUKU<span>SUKE</span></a></div>
                    <nav class="main_nav">
                        <jsp:include page="navbar/MenuPrincipal.jsp" />
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
                <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg"
                     data-speed="0.8"></div>
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="home_content text-center">
                                <div class="home_title">Carrito de compras <span class="fa fa-shopping-basket"></span></div>
                                <div style="color: white;">Cliente : <label id="SessionUsuario"><c:out value="${SessionUsuario.nombre_completo}"/></label></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- msg -->
            <div class="container">                   
                <div class="row">
                    <div class="col-md-12 text-center">
                        <label class="alert alert-info" id="msg"><c:out value="${msg}"/></label>
                    </div>                        
                </div>                    
            </div>


            <!-- Listings -->

            <div class="listings">
                <div class="container">                   
                    <div class="row">
                        <div class="col-md-12">


                            <table class="table">
                                <label id="mensaje"></label>
                                <thead class="thead-success">
                                    <tr>
                                        <th scope="col">Producto</th>
                                        <th scope="col">Cod</th>
                                        <th scope="col">Valor</th>
                                        <th scope="col">Cantidad</th>
                                        <th scope="col">Subtotal</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="DetallePedido" items="${Carrito}">

                                        <tr>

                                            <th><label><c:out value="${DetallePedido}"/></label></th>
                                            <th><label><c:out value="${DetallePedido.codigo_producto}"/></label></th>
                                            <th><label><c:out value="${DetallePedido.precio_producto}"/></label></th>

                                    <form method="post" action="<c:url value="/Carrito" />">  
                                        <th><input id="cantidad" name="cantidad" type="number" max="10" min="1" value="<c:out value="${DetallePedido.cantidad}"/>" class="form-control"/></th>
                                        <th><label><c:out value="${DetallePedido.sub_total}"/></label></th>
                                        <th> 

                                            <input type="hidden" value="${DetallePedido.codigo_producto}" id="id_producto" name="id_producto">

                                            <button type="submit" class="btn btn-warning" name="btn_edit"><span class="fa fa-edit"></span></button>                                                
                                    </form>
                                    </th>



                                    <th>
                                        <form method="post" action="<c:url value="/Carrito" />">
                                            <input type="hidden" name="cod_producto" value="${DetallePedido.codigo_producto}" id="cod_producto">
                                            <button type="submit" id="btn_remove" name="btn_remove" class="btn btn-danger"><span class="fa fa-remove"></span></button>
                                        </form>
                                    </th>


                                    </tr>

                                </c:forEach>
                                </tbody>
                            </table>

                            <hr>
                        </div>

                    </div>


                    <form method="POST" action="<c:url value="/Carrito"/>"
                          <div class="row">                     
                            <div class="col-md-4">
                                <hr>
                                <div class="footer_title" style="color: black;">Total: $ <c:out value="${Total}"/></div>         
                                <hr>
                            </div>
                            <div class="col-md-8">
                                <hr>
                                <div>
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
                                    <button type="submit" class="btn btn-success btn-block" id="btn_pay" name="btn_pay" ><span class="fa fa-money"></span> Pagar</button>                                
                                </div>
                                <div class="form-check-inline" style="margin-top:10px;">                                                               
                                    <input type="checkbox" required="" id="chkPagar" style="margin-right:10px;"> Acepto los términos y condiciones
                                </div>   
                                <hr>
                            </div>

                        </div>
                    </form>

                </div>
            </div>

            <!-- Footer -->


            <jsp:include page="navbar/Footer.jsp" />

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