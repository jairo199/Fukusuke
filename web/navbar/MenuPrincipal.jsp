<%-- 
    Document   : MenuPrincipal
    Created on : 23-06-2019, 4:27:52
    Author     : Jairo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <ul class="d-flex flex-row align-items-start justify-content-start">
        <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Home" name="nav_home" class="btn btn-success"></form></a></li>
        <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Nosotros" name="nav_nosotros" class="btn btn-success"></form></a></li>
        <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Productos" name="nav_productos" class="btn btn-success"></form></a></li>
        <li><a><form method="post" action="<c:url value="/FukusukeController"/>"><input type="submit" value="Contacto" name="nav_contacto" class="btn btn-success"></form></a></li>

    </ul>
</html>
