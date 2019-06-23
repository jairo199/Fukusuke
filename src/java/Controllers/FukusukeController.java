/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import com.google.gson.Gson;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jairo
 */
@WebServlet(name = "FukusukeController", urlPatterns = {"/FukusukeController"})
public class FukusukeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);        
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
        Gson g = new Gson();
        //System.out.println(g.);
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        /* ARRAYLIST PARA ALMACENAR ERRORES */
        ArrayList<String> listaFail = new ArrayList<String>();
        boolean esValido = true;
        
        /*********** INICIO NAV BAR ***********/
        if (request.getParameter("nav_home") != null) {            
            request.getRequestDispatcher("index.jsp").forward(request, response);                   
        }
        if (request.getParameter("nav_nosotros") != null) {            
            request.getRequestDispatcher("Nosotros.jsp").forward(request, response);                   
        }
        if (request.getParameter("nav_productos") != null) {            
            request.getRequestDispatcher("Productos.jsp").forward(request, response);                   
        }
        if (request.getParameter("nav_contacto") != null) {            
            request.getRequestDispatcher("Contacto.jsp").forward(request, response);                   
        }
        /*********** FIN NAV BAR ***********/
        
        
        
        
        /*********** PAGINA ERROR ***********/
        request.getRequestDispatcher("Error.jsp").forward(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "SERVLET FUKUSUKE 1.0";
    }// </editor-fold>

}
