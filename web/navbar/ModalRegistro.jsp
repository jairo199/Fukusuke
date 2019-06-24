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
                                    <label for="nombre">Run</label>
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
                                    <label for="txt_pass">Contraseña</label>
                                    <input type="password" class="form-control" id="txt_pass" name="txt_pass" placeholder="" required="true">			                                                
                                </div>
                            </div>
                        </div>
                        <hr>


                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="nombre">Telefono</label>
                                    <input type="text" class="form-control" id="txt_telefono" name="txt_telefono" placeholder="+569XXXXXXXX" required maxlength="100">			    
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txt_dir">Direccion</label>
                                    <input type="text" class="form-control" id="txt_dir" name="txt_dir" placeholder="ingrese Dirección" required="true">			    
                                </div>
                            </div>
                        </div>

                        <hr>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="txt_region">Region</label>
                                    <select class="form-control" id="txt_region" name="txt_region">
                                        <option value="Metropolitana">Metropolitana</option>
                                        <option value="Bio-Bio">Bio-Bio</option>
                                        <option value="Ñuble">Ñuble</option>	      
                                    </select>
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
                                    <select class="form-control" id="txt_comuna" name="txt_comuna">
                                        <option value="Santiago">Santiago</option>
                                        <option value="Coelemu">Coelemu</option>			      
                                    </select>
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







</html>
