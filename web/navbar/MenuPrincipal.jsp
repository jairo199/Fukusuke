<%-- 
    Document   : MenuPrincipal
    Created on : 23-06-2019, 4:27:52
    Author     : Jairo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="header_content d-flex flex-row align-items-center justify-content-start">
                    <div class="logo"><a href="">FUKU<span>SUKE</span></a></div>
                    <nav class="main_nav">
    <ul class="d-flex flex-row align-items-start justify-content-start">
        <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Home" name="nav_home" class="btn btn-success"></form></a></li>
        <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Nosotros" name="nav_nosotros" class="btn btn-success"></form></a></li>
        <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Productos" name="nav_productos" class="btn btn-success"></form></a></li>
        <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Contacto" name="nav_contacto" class="btn btn-success"></form></a></li>

    </ul>
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
                    <div class="log_reg d-flex flex-row align-items-center justify-content-end">
                        <ul>
                            <li><a  href="/Fukusuke/Carrito"><span class="fa fa-shopping-basket"> </span> Mi carrito <label id="Carrito">(<c:out value="${Carrito.size()}"/>)</label></a></li>
                        </ul>
                    </div>
                    <nav class="menu_nav">
                        <ul>
                            <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Home" name="nav_home" class="btn btn-block btn-light text-dark"></form></a></li>
                            <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Nosotros" name="nav_nosotros" class="btn btn-block btn-light text-dark"></form></a></li>
                            <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Productos" name="nav_productos" class="btn btn-block btn-light text-dark"></form></a></li>
                            <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Contacto" name="nav_contacto" class="btn btn-block btn-light text-dark"></form></a></li>
                            
                        </ul>
                    </nav>
                        
                </div>
            </div>
</html>
