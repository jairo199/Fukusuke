/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DTO.Login;
import DTO.Producto;
import DTO.Usuario;
import Service.LoginService;
import Service.UsuarioService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kokex
 */
@WebServlet(name = "sistema", urlPatterns = {"/sistema"})
public class sistema extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession Session = request.getSession();//ATRIBUTO SESSION

        //SI LA SESSION ES NULA SE DIRIGE A LOGIN 
        if (Session.getAttribute("SessionUsuario") == null) {
            request.getRequestDispatcher("loginsistema.jsp").forward(request, response);
        }

        //SI LA SESSION ESTA INICIADA, POR DEFAUL VA A PERFIL  
        request.getRequestDispatcher("cpanel.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession Session = request.getSession();//atributo sesion

        ArrayList<String> listaFail = new ArrayList<String>();
        boolean esValido = true;

        //**************menu***************//
        /**
         * ********* INICIO NAV BAR **********
         */
        if (request.getParameter("inicio") != null) {
            request.getRequestDispatcher("cpanel.jsp").forward(request, response);
        }
        if (request.getParameter("gesClientes") != null) {
            request.getRequestDispatcher("gestionclientes.jsp").forward(request, response);
        }
        if (request.getParameter("gesUsuarios") != null) {
            request.getRequestDispatcher("gestionusuarios.jsp").forward(request, response);

        }
        if (request.getParameter("gesRoles") != null) {
            request.getRequestDispatcher("gestionroles.jsp").forward(request, response);
        }

        if (request.getParameter("parametrosgenerales") != null) {
            request.getRequestDispatcher("parametrosgenerales.jsp").forward(request, response);
        }

        if (request.getParameter("gesPedidos") != null) {
            request.getRequestDispatcher("gestionpedidos.jsp").forward(request, response);
        }

        if (request.getParameter("caja") != null) {
            request.getRequestDispatcher("caja.jsp").forward(request, response);
        }
        if (request.getParameter("gesProductos") != null) {
            request.getRequestDispatcher("gestionproductos.jsp").forward(request, response);
        }

        //***********fin menu**************//
        //SI SE CIERRA LA SESSION SE DIRIGE A INDEX
        if (request.getParameter("cerrarusuario") != null) {

            request.getSession().removeAttribute("SessionUsuario");

            request.getRequestDispatcher("loginsistema.jsp").forward(request, response);

        }

        //sesion usuarios sistema
        if (request.getParameter("loginusuario") != null) {

            String codigo = request.getParameter("codigo");
            String password = request.getParameter("password");

            if (request.getParameter("codigo").isEmpty()) {
                esValido = false;
                listaFail.add("Debes ingresar tu Codigo.");
            }

            if (request.getParameter("password").trim().isEmpty()) {
                esValido = false;
                listaFail.add("Debes ingresar tu contraseña.");
            }

            Login login = new Login(codigo, password);

            if (UsuarioService.getUsuario(Integer.parseInt(codigo)) == null) {
                esValido = false;
                listaFail.add("Usuario no registrado");
            }

            if (!LoginService.putUsuario(login)) {
                esValido = false;
                listaFail.add("Contraseña Incorrecta");
            }

            if (!esValido) {
                request.setAttribute("listaErrores", listaFail);
                request.getRequestDispatcher("loginsistema.jsp").forward(request, response);
            }

            if (esValido) {
                if (Session.getAttribute("SessionUsuario") == null) {

                    Session.setAttribute("SessionUsuario", UsuarioService.getUsuario(Integer.parseInt(codigo)));

                    request.getRequestDispatcher("cpanel.jsp").forward(request, response);
                }

            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
