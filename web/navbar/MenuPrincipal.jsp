<%-- 
    Document   : MenuPrincipal
    Created on : 23-06-2019, 4:27:52
    Author     : Jairo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                    <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Home" name="nav_home" class="btn btn-success"></form></a></li>
                    <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Nosotros" name="nav_nosotros" class="btn btn-success"></form></a></li>
                    <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Productos" name="nav_productos" class="btn btn-success"></form></a></li>
                    <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Contacto" name="nav_contacto" class="btn btn-success"></form></a></li>

                </ul>
            </nav>

            <div class="submit ml-auto"><a href="index.jsp">Mi carrito (0)</a></div>
            <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
        </div>

    </header>
</html>
