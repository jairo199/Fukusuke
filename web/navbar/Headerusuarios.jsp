<%-- 
    Document   : Headerusuarios
    Created on : 29-06-2019, 20:28:19
    Author     : kokex
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <header class="header">
            <div class="header_content d-flex flex-row align-items-center justify-content-start">
                <div class="logo"><a href="#">FUKU<span>SUKE</span></a></div>
                <nav class="main_nav">
                   
                    <ul class="d-flex flex-row align-items-start justify-content-start">
                        
                        <li><a ><form method="post" action="<c:url value="/sistema"/>"><input type="submit" value="Inicio" name="inicio" class="btn btn-link text-dark"></form></a></li>
                                            
                        <li class="nav-item dropdown">
                            <form method="post" action="<c:url value="/sistema"/>">
                                
                                <a class=" dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
                                        Administracion
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" >
                                        <input type="submit" value="Gestion de Clientes" name="gesClientes" class="btn btn-block btn-outline-light text-dark">
                                    </a>
                                    
                                    <a class="dropdown-item" >
                                        <input type="submit" value="Gestion de Usuarios" name="gesUsuarios" class="btn btn-block btn-outline-light text-dark">
                                    </a>
                                    <a class="dropdown-item" >
                                        <input type="submit" value="Gestion de Roles" name="gesRoles" class="btn btn-block btn-outline-light text-dark">
                                    </a>
                                    <a class="dropdown-item" >
                                        <input type="submit" value="Parametros Generales" name="parametrosgenerales" class="btn btn-block btn-outline-light text-dark">
                                    </a>
                                </div>
                            </form>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <form method="post" action="<c:url value="/sistema"/>">
                                
                                <a class=" dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
                                    Ventas
                                </a>                                
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" >
                                        <input type="submit" value="Gestion de pedidos" name="gesPedidos" class="btn btn-block btn-outline-light text-dark">
                                    </a>
                                    
                                    <a class="dropdown-item" >
                                        <input type="submit" value="Caja" name="caja" class="btn btn-block btn-outline-light text-dark">
                                    </a>
                                </div>
                            </form>
                        </li>
                        <li><a><form method="post" action="<c:url value="/sistema"/>"><input type="submit" value="Gestión Productos" name="gesProductos" class="btn btn-link text-dark"></form></a></li>
                        

                    </ul>
                </nav>
                <div class="submit ml-auto"><form action="<c:url value="/sistema"/>" method="post"><input type="submit" value="Cerrar Sesión" name="cerrarusuario" id="btn_salir" class="btn-block btn-lg btn btn-link text-dark"/></form></div>
                                    
                <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
            </div>
        </header>
                <!-- Menu -->

            <div class="menu text-right">
                <div class="menu_close"><i class="fa fa-times" aria-hidden="true"></i></div>
                <div class="menu_log_reg">
                    <div class="log_reg d-flex flex-row align-items-center justify-content-end">
                        <ul class="d-flex flex-row align-items-start justify-content-start">
                            <!--
                            <li><a data-toggle="modal" href="#modalLogin">Ingresar</a></li>
                            <li><a data-toggle="modal" href="#modalRegisto">Registro</a></li>
                            -->
                        </ul>
                    </div>
                    <nav class="menu_nav">
                        <ul>
                            
                            <li><a><form method="post" action="<c:url value="/sistema"/>"><input type="submit" value="Inicio" name="inicio" class="btn nav-item btn-link text-dark"></form></a></li>
                                            
                            <li class="nav-item dropdown">
                                <form method="post" action="<c:url value="/sistema"/>">

                                    <a class=" dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
                                            Administracion
                                    </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" >
                                            <input type="submit" value="Gestion de Clientes" name="gesClientes" class="btn btn-block btn-outline-light text-dark">
                                        </a>

                                        <a class="dropdown-item" >
                                            <input type="submit" value="Gestion de Usuarios" name="gesUsuarios" class="btn btn-block btn-outline-light text-dark">
                                        </a>
                                        <a class="dropdown-item" >
                                            <input type="submit" value="Gestion de Roles" name="gesRoles" class="btn btn-block btn-outline-light text-dark">
                                        </a>
                                        <a class="dropdown-item" >
                                            <input type="submit" value="Parametros Generales" name="parametrosgenerales" class="btn btn-block btn-outline-light text-dark">
                                        </a>
                                    </div>
                                </form>
                            </li>
                            <li class="nav-item dropdown">
                                <form method="post" action="<c:url value="/sistema"/>">

                                    <a class=" dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
                                        Ventas
                                    </a>                                
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" >
                                            <input type="submit" value="Gestion de pedidos" name="gesPedidos" class="btn btn-block btn-outline-light text-dark">
                                        </a>

                                        <a class="dropdown-item" >
                                            <input type="submit" value="Caja" name="caja" class="btn btn-block btn-outline-light text-dark">
                                        </a>
                                    </div>
                                </form>
                            </li>
                            <li><a><form method="post" action="<c:url value="/sistema"/>"><input type="submit" value="Gestión Productos" name="gesProductos" class=" btn nav-item btn-link text-dark"></form></a></li>

                        </ul>
                        
                        
                        
                        
                    </nav>
                </div>
            </div>
</html>
