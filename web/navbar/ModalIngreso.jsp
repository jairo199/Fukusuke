<%-- 
    Document   : ModalIngreso
    Created on : 24-06-2019, 0:24:01
    Author     : kokex
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
              <form method="post" action="<c:url value="/LoginController"/>">
                <div class="modal-body">
                            <div class="form-group">
                              <label for="rut">RUT</label>
                              <input type="rut" class="form-control" id="rut" name="rut"  placeholder="Ingrese RUT sin puntos y con guion">			    
                            </div>
                            <div class="form-group">
                              <label for="password">Contraseña</label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="Ingrese contraseña">
                            </div>	
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-md-12"> <input type="submit" id="btn_login" name="btn_login" class="btn btn-info btn-block" value="Ingresar" ></div>
                    </div>
                     <div class="row">
                        <div class="col-md-12"> <button type="button" class="btn btn-warning btn-block" data-dismiss="modal">Cerrar</button> </div>
                    </div>
                    
                   
                    
                </div>
	      </form>
	    </div>
	  </div>
	</div>
                          
                          
                          
                          
                          

                                
</html>
