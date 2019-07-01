<%-- 
    Document   : MenuPrincipal
    Created on : 23-06-2019, 4:27:52
    Author     : Jairo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                    <span>Direccion, Tienda , Ciudad</span>
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


                    <c:choose>
                        <c:when test="${SessionUsuario != null}">
                            <li><a  href="/Fukusuke/LoginController">Mi Cuenta </a></li>                                                                                  
                            </c:when> 

                        <c:otherwise>
                            <li><a data-toggle="modal" href="#modalLogin">Ingresar</a></li>
                            <li><a data-toggle="modal" href="#modalRegisto">Registro</a></li>
                            </c:otherwise>
                        </c:choose>



                </ul>
            </div>
        </div>
    </div>
</html>
