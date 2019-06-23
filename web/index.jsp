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


	<!-- Modal Login-->
	<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Ingresar</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form method="post" action="<c:url value="/FukusukeController"/>">
			  <div class="form-group">
			    <label for="email">Email</label>
			    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Ingrese email">			    
			  </div>
			  <div class="form-group">
			    <label for="password">Contraseña</label>
			    <input type="password" class="form-control" id="password" placeholder="Ingrese contraseña">
			  </div>			  			  
			

	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <input class="btn btn-success" value="Ingresar" type="submit" name="btn_login" id="btn_login">                 
	      </div>

	      </form>

	    </div>
	  </div>
	</div>

	<!-- Modal Registro -->
	<div class="modal fade" id="modalRegisto" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalCenterTitle">Registrate para comprar</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        	<form method="post" action="#">
			  
			  <div class="form-group">
			    <label for="nombre">Rut</label>
			    <input type="text" class="form-control" id="nombre" placeholder="Ingrese rut sin puntos ni guión." required="true" maxlength="10">			    
			  </div>

			  <div class="form-group">
			    <label for="nombre">Nombre Completo</label>
			    <input type="text" class="form-control" id="nombre" placeholder="Wacoldo Soto Soto" required="true" maxlength="40">			    
			  </div>

			  <div class="form-group">
			    <label for="sexo">Sexo</label>
			    <select class="form-control" id="sexo">
			      <option>Hombre</option>
			      <option>Mujer</option>			      
			    </select>
			  </div>			  

			  <div class="form-group">
			    <label for="fn">Fecha Nacimiento</label>
			    <input type="date" class="form-control" id="fn" required="true">			    
			  </div>

			  <div class="form-group">
			    <label for="telefono">Celular</label>
			    <input type="number" class="form-control" id="telefono" placeholder="999999999" required="true" maxlength="9">			    
			  </div>

			  <div class="form-group">
			    <label for="email">Email</label>
			    <input type="email" class="form-control" id="email" placeholder="demo@email.cl" required="true">			    
			    <small id="emailHelp" class="form-text text-muted">Nunca compartiremos su correo electrónico con nadie más.</small>
			  </div>

			  <div class="form-group">
			    <label for="Dir">Direccion</label>
			    <input type="text" class="form-control" id="Dir" placeholder="ingrese Dirección" required="true">			    
			  </div>

			  <div class="form-group">
			    <label for="sexo">Region</label>
			    <select class="form-control" id="sexo">
			      <option>A</option>
			      <option>B</option>			      
			    </select>
			  </div>

			  <div class="form-group">
			    <label for="sexo">Provincia</label>
			    <select class="form-control" id="sexo">
			      <option>A</option>
			      <option>B</option>			      
			    </select>
			  </div>

			  <div class="form-group">
			    <label for="sexo">Comuna</label>
			    <select class="form-control" id="sexo">
			      <option>A</option>
			      <option>B</option>			      
			    </select>
			  </div>

			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
	        <button type="button" class="btn btn-primary">Registrarse</button>
	      </div>
	    </div>
	  </div>
	</div>




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
						<span>Direccion, Local , ConcepciÃ³n</span>
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
				<ul class="d-flex flex-row align-items-start justify-content-start">
					<li class="active"><a href="index.html">Inicio</a></li>
					<li><a href="nosotros.html">Nosotros</a></li>
					<li><a href="Productos.html">Productos</a></li>				
					<li><a href="contacto.html">Contacto</a></li>
				</ul>
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
					<li><a href="#">Login</a></li>
					<li><a href="#">Register</a></li>
				</ul>
			</div>
			<nav class="menu_nav">
				<ul>
					<li><a href="index.html">Inicio</a></li>
					<li><a href="nosotros.html">Nosotros</a></li>
					<li><a href="Productos.html">Productos</a></li>				
					<li><a href="contacto.html">Contacto</a></li>
				</ul>
			</nav>
		</div>
	</div>

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
			 							<div class="home_title"><h1>Â¡Handroll a Luca!</h1></div>
										 <div class="home_price_tag">$1.000</div>
										 <hr>
										 <div class="container"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique error temporibus nam laudantium hic ad excepturi fugit cupiditate nihil tempora. Quaerat culpa pariatur libero porro, magnam in non fugit architecto.</p></div>
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
			 							<div class="home_title"><h1>Promo 2</h1></div>
										 <div class="home_price_tag">$5.990</div>
										 <hr>
										 <div class="container"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique error temporibus nam laudantium hic ad excepturi fugit cupiditate nihil tempora. Quaerat culpa pariatur libero porro, magnam in non fugit architecto.</p></div>
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
			 							<div class="home_title"><h1>Promo 3</h1></div>
										 <div class="home_price_tag">$ 9.990</div>
										 <hr>
										 <div class="container"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique error temporibus nam laudantium hic ad excepturi fugit cupiditate nihil tempora. Quaerat culpa pariatur libero porro, magnam in non fugit architecto.</p></div>
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
								<div class="section_title"><h1>Conoce las zonas donde realizamos envÃ­os</h1></div>
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
							<div class="footer_logo"><a href="#">FUKU<span>SUKE</span></a></div>
							<div class="footer_text">
								<p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in.</p>
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
										<span>Direccion, Local , ConcepciÃ³n</span>
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
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/custom.js"></script>
</body>
</html>