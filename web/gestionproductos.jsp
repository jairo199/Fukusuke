<%-- 
    Document   : gestionproductos
    Created on : 23-jun-2019, 12:47:16
    Author     : Cheqcoslov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <title>Gestion de Productos</title>
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
    <script>
        // Write on keyup event of keyword input element
        $(document).ready(function () {
            $("#search").keyup(function () {
                _this = this;
                // Show only matching TR, hide rest of them
                $.each($("#mytable tbody tr"), function () {
                    if ($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
                        $(this).hide();
                    else
                        $(this).show();
                });
            });
        });
    </script>
    <script>
        function myFunction() {
            alert("Producto eliminado con exito!");
        }
    </script>
</head>

<body>

    <div class="super_container">
        <div class="super_overlay"></div>

        <!-- Header -->

        <!-- Header -->
        <header class="header">



            <!-- Header Content -->
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

        <!-- Home -->

        <div class="home">
            <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg"
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

        <div class="listings">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3">
                        <hr>
                        <div class="col">
                            <div class="footer_links">
                                <div class="footer_title" style="color: black;">Gestión de productos</div>
                                <ul>
                                    <!-- <li><button class="btn btn-primary">Ver productos</button></li> -->
                                    <li><button class="btn btn-success" onclick="location.href='registrarproducto.html';">Registar</button></li>
                                </ul>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <div class="col-xl-9">
                        <hr>
                        <div class="footer_title" style="color: black;">Titulo Mantenedor</div>

                        <br>

                        <div class="container">
                            <table class="table table-hover" id="mytable">
                                    <div class="form-group">
                                            <input type="text" class="form-control pull-left" style="width:40%" id="search"
                                                placeholder="Buscador de productos...">
                                        </div>
                                        <br><br><br><br>
                                <thead>
                                 
                                    <th></th>
                                    <th></th>
                                    <th>Titulo A</th>
                                    <th>Titulo B</th>
                                    <th>Titulo C</th>
                                    <th>Titulo C</th>
                                </thead>
                                <tbody>
                                    <tr>
                                   
                                        <td><button class="btn btn-warning btn-block" onclick="location.href='modificarproducto.html';">M</button</td> 
                                        <td><button class="btn btn-danger btn-block" onclick="myFunction()" >E</button></td>
                                        <td>Descripción A </td>
                                        <td>Descripción B</td>
                                        <td>Descripción C</td>
                                        <td>Descripción D</td>
                                    </tr>

                                </tbody>
                            </table>
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
