<%-- 
    Document   : registrarcliente
    Created on : 24-06-2019, 15:30:18
    Author     : kokex
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Registro de usuarios</title>
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

                    <div class="submit ml-auto"><a href="index.jsp">Mi carrito (0)</a></div>
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
            <!-- Menu -->


            <div class="home">
                <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg"
                     data-speed="0.8"></div>
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="home_content text-center">
                                <div class="home_title">Registro de Cliente</div>
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
                            <div class="footer_title" style="color: black;">Ingresa tus Datos</div>
                            <br>
                            <div class="container">
                                <form method="post" action="<c:url value="/FukusukeController"/>">


                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="nombre">RUT</label>
                                                <input type="text" class="form-control" id="txt_run" name="txt_run" placeholder="Ingrese rut sin puntus y con guión." required maxlength="10">			    
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="nombre">Nombre Completo</label>
                                                <input type="text" class="form-control" id="txt_nombre" name="txt_nombre" placeholder="Wacoldo Soto Soto" required maxlength="100">			    
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="fn">Fecha Nacimiento</label>
                                                <input type="date" class="form-control" id="txt_fn" name="txt_fn" required="true">			    
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="sexo">Sexo</label>
                                                <select class="form-control" id="txt_sexo" name="txt_sexo" required="">
                                                    <option value="M">Hombre</option>
                                                    <option value="F">Mujer</option>                              
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <hr> 
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="email" class="form-control" id="email" name="email"placeholder="demo@email.cl" required="true">			    
                                                <small id="emailHelp" class="form-text text-muted">Nunca compartiremos su correo electrónico con nadie más.</small>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="email2">Repita Email</label>
                                                <input type="email" class="form-control" id="email2" name="email2"placeholder="demo@email.cl" required="true">			    
                                            </div>
                                        </div>

                                    </div>
                                    <hr>

                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="txt_pass">Contraseña</label>
                                                <input type="password" class="form-control" id="txt_pass" name="txt_pass" placeholder="" required="true">			                                                
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="txt_pass">Repita Contraseña</label>
                                                <input type="password" class="form-control" id="txt_pass" name="txt_pass" placeholder="" required="true">			                                                
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="txt_telefono">Telefono</label>
                                                <input type="text" class="form-control" id="txt_telefono" name="txt_telefono" placeholder="" required="true">			                                                
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="txt_dir">Dirección</label>
                                                <input type="text" class="form-control" id="txt_dir" name="txt_dir" placeholder="" required="true">			                                                
                                            </div>
                                        </div>


                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="txt_region">Region</label>                                   
                                                <select class="form-control" id="regiones" name="regiones"></select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="txt_provincia">Provincia</label>
                                                <select class="form-control" id="txt_provincia" name="txt_provincia">
                                                    <option value="Metropolitana">Metropolitana</option>
                                                    <option value="Concepción">Concepción</option>
                                                    <option value="Itata">Itata</option>			      
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="txt_comuna">Comuna</label>

                                                <select class="form-control" id="comunas" name="comunas"></select>
                                                <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                                                <script src="js/ciudades.js"></script>
                                            </div>
                                        </div>


                                    </div>


                                    <div class="form-group">
                                        <input type="submit" class="btn btn-success btn-block" id="BTN_REGISTRO" name="BTN_REGISTRO" value="Registrarse">
                                    </div>
                                    <hr>
                                </form>
                                <c:forEach var="Error" items="${listaErrores}">
                                    <h3 class="alert alert-warning text-center"><c:out  value="${Error}"></c:out></h3>
                                </c:forEach> 
                                <hr>
                            </div>


                        </div>

                    </div>
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

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="/js/ciudades.js"></script>


        <script>
            var RegionesYcomunas = {

                "regiones": [{
                        "NombreRegion": "Arica y Parinacota",
                        "comunas": ["Arica", "Camarones", "Putre", "General Lagos"]
                    },
                    {
                        "NombreRegion": "Tarapacá",
                        "comunas": ["Iquique", "Alto Hospicio", "Pozo Almonte", "Camiña", "Colchane", "Huara", "Pica"]
                    },
                    {
                        "NombreRegion": "Antofagasta",
                        "comunas": ["Antofagasta", "Mejillones", "Sierra Gorda", "Taltal", "Calama", "Ollagüe", "San Pedro de Atacama", "Tocopilla", "María Elena"]
                    },
                    {
                        "NombreRegion": "Atacama",
                        "comunas": ["Copiapó", "Caldera", "Tierra Amarilla", "Chañaral", "Diego de Almagro", "Vallenar", "Alto del Carmen", "Freirina", "Huasco"]
                    },
                    {
                        "NombreRegion": "Coquimbo",
                        "comunas": ["La Serena", "Coquimbo", "Andacollo", "La Higuera", "Paiguano", "Vicuña", "Illapel", "Canela", "Los Vilos", "Salamanca", "Ovalle", "Combarbalá", "Monte Patria", "Punitaqui", "Río Hurtado"]
                    },
                    {
                        "NombreRegion": "Valparaíso",
                        "comunas": ["Valparaíso", "Casablanca", "Concón", "Juan Fernández", "Puchuncaví", "Quintero", "Viña del Mar", "Isla de Pascua", "Los Andes", "Calle Larga", "Rinconada", "San Esteban", "La Ligua", "Cabildo", "Papudo", "Petorca", "Zapallar", "Quillota", "Calera", "Hijuelas", "La Cruz", "Nogales", "San Antonio", "Algarrobo", "Cartagena", "El Quisco", "El Tabo", "Santo Domingo", "San Felipe", "Catemu", "Llaillay", "Panquehue", "Putaendo", "Santa María", "Quilpué", "Limache", "Olmué", "Villa Alemana"]
                    },
                    {
                        "NombreRegion": "Región del Libertador Gral. Bernardo O’Higgins",
                        "comunas": ["Rancagua", "Codegua", "Coinco", "Coltauco", "Doñihue", "Graneros", "Las Cabras", "Machalí", "Malloa", "Mostazal", "Olivar", "Peumo", "Pichidegua", "Quinta de Tilcoco", "Rengo", "Requínoa", "San Vicente", "Pichilemu", "La Estrella", "Litueche", "Marchihue", "Navidad", "Paredones", "San Fernando", "Chépica", "Chimbarongo", "Lolol", "Nancagua", "Palmilla", "Peralillo", "Placilla", "Pumanque", "Santa Cruz"]
                    },
                    {
                        "NombreRegion": "Región del Maule",
                        "comunas": ["Talca", "ConsVtución", "Curepto", "Empedrado", "Maule", "Pelarco", "Pencahue", "Río Claro", "San Clemente", "San Rafael", "Cauquenes", "Chanco", "Pelluhue", "Curicó", "Hualañé", "Licantén", "Molina", "Rauco", "Romeral", "Sagrada Familia", "Teno", "Vichuquén", "Linares", "Colbún", "Longaví", "Parral", "ReVro", "San Javier", "Villa Alegre", "Yerbas Buenas"]
                    },
                    {
                        "NombreRegion": "Región del Biobío",
                        "comunas": ["Concepción", "Coronel", "Chiguayante", "Florida", "Hualqui", "Lota", "Penco", "San Pedro de la Paz", "Santa Juana", "Talcahuano", "Tomé", "Hualpén", "Lebu", "Arauco", "Cañete", "Contulmo", "Curanilahue", "Los Álamos", "Tirúa", "Los Ángeles", "Antuco", "Cabrero", "Laja", "Mulchén", "Nacimiento", "Negrete", "Quilaco", "Quilleco", "San Rosendo", "Santa Bárbara", "Tucapel", "Yumbel", "Alto Biobío", "Chillán", "Bulnes", "Cobquecura", "Coelemu", "Coihueco", "Chillán Viejo", "El Carmen", "Ninhue", "Ñiquén", "Pemuco", "Pinto", "Portezuelo", "Quillón", "Quirihue", "Ránquil", "San Carlos", "San Fabián", "San Ignacio", "San Nicolás", "Treguaco", "Yungay"]
                    },
                    {
                        "NombreRegion": "Región de la Araucanía",
                        "comunas": ["Temuco", "Carahue", "Cunco", "Curarrehue", "Freire", "Galvarino", "Gorbea", "Lautaro", "Loncoche", "Melipeuco", "Nueva Imperial", "Padre las Casas", "Perquenco", "Pitrufquén", "Pucón", "Saavedra", "Teodoro Schmidt", "Toltén", "Vilcún", "Villarrica", "Cholchol", "Angol", "Collipulli", "Curacautín", "Ercilla", "Lonquimay", "Los Sauces", "Lumaco", "Purén", "Renaico", "Traiguén", "Victoria", ]
                    },
                    {
                        "NombreRegion": "Región de Los Ríos",
                        "comunas": ["Valdivia", "Corral", "Lanco", "Los Lagos", "Máfil", "Mariquina", "Paillaco", "Panguipulli", "La Unión", "Futrono", "Lago Ranco", "Río Bueno"]
                    },
                    {
                        "NombreRegion": "Región de Los Lagos",
                        "comunas": ["Puerto Montt", "Calbuco", "Cochamó", "Fresia", "FruVllar", "Los Muermos", "Llanquihue", "Maullín", "Puerto Varas", "Castro", "Ancud", "Chonchi", "Curaco de Vélez", "Dalcahue", "Puqueldón", "Queilén", "Quellón", "Quemchi", "Quinchao", "Osorno", "Puerto Octay", "Purranque", "Puyehue", "Río Negro", "San Juan de la Costa", "San Pablo", "Chaitén", "Futaleufú", "Hualaihué", "Palena"]
                    },
                    {
                        "NombreRegion": "Región Aisén del Gral. Carlos Ibáñez del Campo",
                        "comunas": ["Coihaique", "Lago Verde", "Aisén", "Cisnes", "Guaitecas", "Cochrane", "O’Higgins", "Tortel", "Chile Chico", "Río Ibáñez"]
                    },
                    {
                        "NombreRegion": "Región de Magallanes y de la AntárVca Chilena",
                        "comunas": ["Punta Arenas", "Laguna Blanca", "Río Verde", "San Gregorio", "Cabo de Hornos (Ex Navarino)", "AntárVca", "Porvenir", "Primavera", "Timaukel", "Natales", "Torres del Paine"]
                    },
                    {
                        "NombreRegion": "Región Metropolitana de Santiago",
                        "comunas": ["Cerrillos", "Cerro Navia", "Conchalí", "El Bosque", "Estación Central", "Huechuraba", "Independencia", "La Cisterna", "La Florida", "La Granja", "La Pintana", "La Reina", "Las Condes", "Lo Barnechea", "Lo Espejo", "Lo Prado", "Macul", "Maipú", "Ñuñoa", "Pedro Aguirre Cerda", "Peñalolén", "Providencia", "Pudahuel", "Quilicura", "Quinta Normal", "Recoleta", "Renca", "San Joaquín", "San Miguel", "San Ramón", "Vitacura", "Puente Alto", "Pirque", "San José de Maipo", "Colina", "Lampa", "TilVl", "San Bernardo", "Buin", "Calera de Tango", "Paine", "Melipilla", "Alhué", "Curacaví", "María Pinto", "San Pedro", "Talagante", "El Monte", "Isla de Maipo", "Padre Hurtado", "Peñaflor"]
                    }]
            }


            jQuery(document).ready(function () {

                var iRegion = 0;
                var htmlRegion = '<option value="sin-region">Seleccione región</option><option value="sin-region">--</option>';
                var htmlComunas = '<option value="sin-region">Seleccione comuna</option><option value="sin-region">--</option>';

                jQuery.each(RegionesYcomunas.regiones, function () {
                    htmlRegion = htmlRegion + '<option value="' + RegionesYcomunas.regiones[iRegion].NombreRegion + '">' + RegionesYcomunas.regiones[iRegion].NombreRegion + '</option>';
                    iRegion++;
                });

                jQuery('#regiones').html(htmlRegion);
                jQuery('#comunas').html(htmlComunas);

                jQuery('#regiones').change(function () {
                    var iRegiones = 0;
                    var valorRegion = jQuery(this).val();
                    var htmlComuna = '<option value="sin-comuna">Seleccione comuna</option><option value="sin-comuna">--</option>';
                    jQuery.each(RegionesYcomunas.regiones, function () {
                        if (RegionesYcomunas.regiones[iRegiones].NombreRegion == valorRegion) {
                            var iComunas = 0;
                            jQuery.each(RegionesYcomunas.regiones[iRegiones].comunas, function () {
                                htmlComuna = htmlComuna + '<option value="' + RegionesYcomunas.regiones[iRegiones].comunas[iComunas] + '">' + RegionesYcomunas.regiones[iRegiones].comunas[iComunas] + '</option>';
                                iComunas++;
                            });
                        }
                        iRegiones++;
                    });
                    jQuery('#comunas').html(htmlComuna);
                });
                jQuery('#comunas').change(function () {
                    if (jQuery(this).val() == 'sin-region') {
                        alert('selecciones Región');
                    } else if (jQuery(this).val() == 'sin-comuna') {
                        alert('selecciones Comuna');
                    }
                });
                jQuery('#regiones').change(function () {
                    if (jQuery(this).val() == 'sin-region') {
                        alert('selecciones Región');
                    }
                });

            });
        </script>

    </body>


</html>
