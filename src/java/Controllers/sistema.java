/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DTO.Login;
import DTO.Producto;
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
        
        if (request.getParameter("parametrosgenerales") != null){
            request.getRequestDispatcher("parametrosgenerales.jsp").forward(request, response);
        }   
        
        if (request.getParameter("gesPedidos") != null){
            request.getRequestDispatcher("gestionpedidos.jsp").forward(request, response);
        }
        
        if (request.getParameter("caja") != null){
            request.getRequestDispatcher("caja.jsp").forward(request, response);
        }
        if (request.getParameter("gesProductos") != null){
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
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            String password = request.getParameter("password");
            
            
            
            if (request.getParameter("codigo").isEmpty()) {
                esValido = false;
                
                listaFail.add("Debes ingresar tu Codigo.");
            }
            if (request.getParameter("password").trim().isEmpty()) {
                esValido = false;
                listaFail.add("Debes ingresar tu contraseña.");
            }
            //pregunta si el rut es valido
            
            
            UsuarioService user = new UsuarioService();
         
                Login l = new Login(""+codigo,password);
                if (user.getUsuario(codigo)== null) {
                    esValido = false;
                    listaFail.add("usuario no registrado");
                }
                
                
                
                if(!LoginService.putUsuario(l))
                {
                    esValido = false;
                    listaFail.add("Contraseña Incorrecta");
                }
                        
            if (!esValido) {

                request.setAttribute("listaErrores", listaFail);
                request.getRequestDispatcher("loginsistema.jsp").forward(request, response);
            }

            if (esValido) {
                
                if (Session.getAttribute("SessionUsuario") == null) {
                    Session.setAttribute("SessionUsuario", user.getUsuario(codigo).getNombres()+user.getUsuario(codigo).getApellidos());
                }
                /*
                request.setAttribute("email", cli.getCliente(rut).getEmail());
                
                request.setAttribute("nombre", cli.getCliente(rut).getNombre_completo());
                request.setAttribute("rut", cli.getCliente(rut).getRun());
                request.setAttribute("telefono", cli.getCliente(rut).getTelefono());
                request.setAttribute("sexo", cli.getCliente(rut).getSexo());
                request.setAttribute("fechana", cli.getCliente(rut).getFecha_nacimiento());
                request.setAttribute("direccion", cli.getCliente(rut).getDireccion()+", "+cli.getCliente(rut).getRegion()+", "+cli.getCliente(rut).getProvincia()+", "+cli.getCliente(rut).getComuna());
                */
                request.getRequestDispatcher("cpanel.jsp").forward(request, response);
                
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
