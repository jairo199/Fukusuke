<%-- 
    Document   : ModalIngreso
    Created on : 24-06-2019, 0:24:01
    Author     : kokex
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="modal fade" id="modalRegisto" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog  modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Registrate para comprar</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form method="post" action="<c:url value="/FukusukeController"/>">
                    <div class="modal-body">


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="nombre">RUT</label>
                                    <input type="text" class="form-control" id="txt_run" name="txt_run" placeholder="Ingrese rut sin puntos y con guión." required maxlength="10">			    
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
                                    <input type="number" class="form-control" id="txt_telefono" name="txt_telefono" placeholder="" required="true">			                                                
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
                                    <script src="/js/ciudades.js"></script>
                                </div>
                            </div>


                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <input type="submit" class="btn btn-primary" id="BTN_REGISTRO" name="BTN_REGISTRO" value="Registrarse">
                    </div>
                </form>
            </div>
        </div>
    </div>




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


</html>
