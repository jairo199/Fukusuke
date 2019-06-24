<!DOCTYPE html>
<html lang="es">
<head>
<title>Nosotros</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="myHOME - real estate template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
<link rel="stylesheet" type="text/css" href="styles/about.css">
<link rel="stylesheet" type="text/css" href="styles/about_responsive.css">
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
			  <form method="post" action="#">
				<div class="form-group">
				  <label for="email">RUT</label>
				  <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Ingrese RUT sin puntos y con guion">			    
				</div>
				<div class="form-group">
				  <label for="password">Contraseña</label>
				  <input type="password" class="form-control" id="password" placeholder="Ingrese contraseÃ±a">
				</div>			  			  
			  
  
			</div>
			<div class="modal-footer">
			  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
			  <button type="submit" href="ventas.html" class="btn btn-success">Ingresar</button>
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
				  <label for="nombre">RUT</label>
				  <input type="text" class="form-control" id="nombre" placeholder="Ingrese rut sin puntos y con guion." required="true" maxlength="10">			    
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
				  <input type="text" class="form-control" id="Dir" placeholder="ingrese DirecciÃ³n" required="true">			    
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
			<div class="logo"><a href="index.html">FUKU<span>SUKE</span></a></div>
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
					
					<li><a href="index.html">Inicio</a></li>
					<li><a href="nosotros.html">Nosotros</a></li>
					<li><a href="Productos.html">Productos</a></li>				
					<li><a href="contacto.html">Contacto</a></li>
					<!--
					<li><a href="blog.html">News</a></li>
					-->
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
						<div class="home_title">Acerca de Nosotros</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Intro -->
	<section id="introo">
	<div class="intro">
		<div class="container">
			<div class="row row-eq-height">
				
				<!-- Intro Content -->
				<div class="col-lg-6">
					<div class="intro_content">
						<div class="section_title_container">
							<div class="section_subtitle">Fukusuke Sushi-Delivery</div>
							<div class="section_title"><h1>Quienes Somos?</h1></div>
						</div>
						<div class="intro_text">
							<!--
								
							-->
							<p>
									El restaurant de sushi Fukusuke, es una empresa dedicada a la preparación y venta de sushi en la modalidad online y en su propio local.
									A mediados de enero del 2014 comienza el funcionamiento de Fukusuke Sushi-Delivery, ubicado en la comuna de Concepcion, el cual es atendido por sus propios dueños.<span id="dots">..</span>
									<span id="more"> La iniciativa de abrir un Sushi Delivery es debido al auge que ha tenido gastronÃ³micamente en los últimos años la comida japonesa y lo práctico que es recibir en la comodidad del hogar un producto exótico, refinado y vanguardista.
									Motivándonos a entregar un excelente servicio al cliente, siendo este el más importante, además de ir variando y ampliando continuamente nuestra carta según los requerimientos y sugerencias de estos mismos.
									</span>
								</p>
								<span id="more2">
								<br>
								<h4>Visión</h4>
								<p>		
									
									La Visión de Fukusuke Sushi-Delivery es posicionarse como el mejor Sushi y Delivery de la comuna en relación a Precio, Calidad y Servicio.
								</p>
								<h4>Misión</h4>
								<p>
									
									Misión de Fukusuke Sushi-Delivery es entregar al cliente el mejor servicio en todo momento que lo requiera en cuanto a calidad del producto, higiene, elaboración y entrega de este.
									Además de preocuparse de estar atentos a las tendencias de mercado y gastronómicas para hacer que Fukusuke entregue el mejor producto tanto en calidad así como precios accesibles.
								 
								</p>
							</span>
							</div>
							<div onclick="readMore()" id="myBtn" class="button intro_button"><a href="#introo" id="btntext">Leer Más</a></div>
						</div>
				</div>

				<!-- Intro Image -->
				<div class="col-lg-6 intro_col">
					<div class="intro_image">
						<div class="background_image" style="background-image:url(images/fondo_04.jpg)"></div>
						<img src="images/intro.jpg" alt="">
					</div>
				</div>

			</div>
		</div>
	</div>
	</section>
	<!-- Services -->

	<div class="services">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_subtitle">"Cumpliendo nuestra misión"</div>
						<div class="section_title"><h1>Nuestros Servicios</h1></div>
					</div>
				</div>
			</div>
			<div class="row services_row">
				
				<!-- Service 1 -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_1.png" alt="">
							</div>
							<div class="service_title"><h3>Delivery</h3></div>
						</div>
						<div class="service_text">
							<p>El Mejor Servicio Delivery, donde llevamos tus pedidos via online a la puerta de tu casa, por supuesto si te encuentras dentro del area disponible de reparto.</p>
							<br>
							<br>
							<br>
							<br>
						</div>
					</div>
				</div>

				<!-- Service 2 -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_2.png" alt="">
							</div>
							<div class="service_title"><h3>Calidad de servicio</h3></div>
						</div>
						<div class="service_text">
							<p>Gracias a las criticcas, comentarios y recomendaciones hemos logrado mantener una calidad inegualable en nuestros productos. Calidad que se hace notar cuansdo nuestros clientes vuelven al local y felicitandonos por un buen servicio al despedirse de este.</p>
						</div>
					</div>
				</div>

				<!-- Service 3 -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_3.png" alt="">
							</div>
							<div class="service_title"><h3>Atencion en local</h3></div>
						</div>
						<div class="service_text">
							<p>Ademas de nuestro Servicio de Venta online, contamos con nuestro servicio de atencion en local</p>
						</div>
					</div>
				</div>

				<!-- Service 4 -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_4.png" alt="">
							</div>
							<div class="service_title"><h3>Meditation</h3></div>
						</div>
						<div class="service_text">
							<p>Aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula.</p>
						</div>
					</div>
				</div>

				<!-- Service 5 -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_5.png" alt="">
							</div>
							<div class="service_title"><h3>Excelentes promociones</h3></div>
						</div>
						<div class="service_text">
							<p>Bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula.</p>
						</div>
					</div>
				</div>

				<!-- Service 6 -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_6.png" alt="">
							</div>
							<div class="service_title"><h3>Precios accesibles</h3></div>
						</div>
						<div class="service_text">
							<p>Aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula.</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Milestones -->

	<div class="milestones">
		<div class="container">
			<div class="row">
				
				<!-- Milestone -->
				<div class="col-xl-3 col-md-6 milestone_col">
					<div class="milestone d-flex flex-row align-items-start justify-content-md-center justify-content-start">
						<div class="milestone_content">
							<div class="milestone_icon d-flex flex-column align-items-start justify-content-center"><img src="images/duplex.svg" alt=""></div>
							<div class="milestone_counter" data-end-value="69">0</div>
							<div class="milestone_text">Repartos Exitosos</div>
						</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-xl-3 col-md-6 milestone_col">
					<div class="milestone d-flex flex-row align-items-start justify-content-md-center justify-content-start">
						<div class="milestone_content">
							<div class="milestone_icon d-flex flex-column align-items-start justify-content-center"><img src="images/prize.svg" alt=""></div>
							<div class="milestone_counter" data-end-value="666">0</div>
							<div class="milestone_text">Clientes Satisfechos</div>
						</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-xl-3 col-md-6 milestone_col">
					<div class="milestone d-flex flex-row align-items-start justify-content-md-center justify-content-start">
						<div class="milestone_content">
							<div class="milestone_icon d-flex flex-column align-items-start justify-content-center"><img src="images/home.svg" alt=""></div>
							<div class="milestone_counter" data-end-value="25" data-sign-after="k">0</div>
							<div class="milestone_text">Seguidores en RRSS</div>
						</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-xl-3 col-md-6 milestone_col">
					<div class="milestone d-flex flex-row align-items-start justify-content-md-center justify-content-start">
						<div class="milestone_content">
							<div class="milestone_icon d-flex flex-column align-items-start justify-content-center"><img src="images/rent.svg" alt=""></div>
							<div class="milestone_counter" data-end-value="1265">0</div>
							<div class="milestone_text">Piezas de sushi preparadas</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Agents -->

	<div class="agents">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_subtitle">"El Mejor Delivery"</div>
						<div class="section_title"><h1>Nuestros Repartidores</h1></div>
					</div>
				</div>
			</div>
			<div class="row agents_row">
				
				<!-- Agent -->
				<div class="col-lg-4 agent_col">
					<div class="agent">
						<div class="agent_image"><img src="images/realtor_1.jpg" alt=""></div>
						<div class="agent_content">
							<div class="agent_name"><a href="#">Michael Smith</a></div>
							<div class="agent_title">Repartidor</div>
							<!--
							<div class="agent_list">
								<ul>
									<li>michael@myhometemp.com</li>
									<li>+45 27774 5653 267</li>
								</ul>
							</div>
							
							<div class="social">
								<ul class="d-flex flex-row align-items-center justify-content-start">
									<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						-->
						</div>
					</div>
				</div>

				<!-- Agent -->
				<div class="col-lg-4 agent_col">
					<div class="agent">
						<div class="agent_image"><img src="images/realtor_2.jpg" alt=""></div>
						<div class="agent_content">
							<div class="agent_name"><a href="#">Jane Williams</a></div>
							<div class="agent_title">Repartidor</div>
							<!--
							<div class="agent_list">
								<ul>
									<li>michael@myhometemp.com</li>
									<li>+45 27774 5653 267</li>
								</ul>
							</div>
							
							<div class="social">
								<ul class="d-flex flex-row align-items-center justify-content-start">
									<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								</ul>
							</div>
							-->
						</div>
					</div>
				</div>

				<!-- Agent -->
				<div class="col-lg-4 agent_col">
					<div class="agent">
						<div class="agent_image"><img src="images/realtor_3.jpg" alt=""></div>
						<div class="agent_content">
							<div class="agent_name"><a href="#">Carla Brown</a></div>
							<div class="agent_title">Repartidor</div>
							<!--
							<div class="agent_list">
								<ul>
									<li>michael@myhometemp.com</li>
									<li>+45 27774 5653 267</li>
								</ul>
							</div>
							
							<div class="social">
								<ul class="d-flex flex-row align-items-center justify-content-start">
									<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						-->
						</div>
					</div>
				</div>

			</div>
			<div class="row contact_row">
				<div class="col">
					<div class="button ml-auto mr-auto"><a href="contacto.jsp">contactenos</a></div>
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
<script src="js/about.js"></script>
<script>
		function readMore() {
			var dots = document.getElementById("dots");
			var moreText = document.getElementById("more");
			
			var moreText2 = document.getElementById("more2");
			var btnText = document.getElementById("btntext");
		  
			if (dots.style.display === "none") {
			  dots.style.display = "inline";
			  btnText.innerHTML = "Leer MÃ¡s"; 
			  moreText.style.display = "none";
			  moreText2.style.display = "none";
			} else {
			  dots.style.display = "none";
			  btnText.innerHTML = "Leer Menos"; 
			  moreText.style.display = "inline";
			  moreText2.style.display = "inline";
			}
		  }
	</script>
</body>
</html>