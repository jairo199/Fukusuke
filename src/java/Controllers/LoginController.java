/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jairo
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet LoginController</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        HttpSession Session = request.getSession();//ATRIBUTO SESSION
        
        //SI LA SESSION ES NULA SE DIRIGE A LOGIN 
        if (Session.getAttribute("SessionUsuario") == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        //SI SE CIERRA LA SESSION SE DIRIGE A INDEX
        if (request.getParameter("btn_salir") != null) {
            //request.getSession().removeAttribute("SessionUsuario");
            
            request.getRequestDispatcher("/FukusukeController").forward(request, response);
            
            return;
            
        }
        //SI LA SESSION ESTA INICIADA, POR DEFAUL VA A PERFIL  
        request.getRequestDispatcher("perfil.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

        //SESION
        HttpSession Session = request.getSession();//atributo sesion

        ArrayList<String> listaFail = new ArrayList<String>();
        boolean esValido = true;

        if (request.getParameter("email").trim().isEmpty()) {
            esValido = false;
            listaFail.add("Debes ingresar tu usuario.");
        }
        if (request.getParameter("password").trim().isEmpty()) {
            esValido = false;
            listaFail.add("Debes ingresar tu contraseña.");
        }

        if (!esValido) {

            request.setAttribute("listaErrores", listaFail);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        if (esValido) {
            request.getRequestDispatcher("perfil.jsp").forward(request, response);
            if (Session.getAttribute("SessionUsuario") == null) {
                Session.setAttribute("SessionUsuario", request.getParameter("email"));
            }
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Login Fukusuke";
    }// </editor-fold>

}
