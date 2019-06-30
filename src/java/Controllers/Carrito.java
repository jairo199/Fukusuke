/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DTO.DetallePedido;
import DTO.Producto;
import java.io.IOException;
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
@WebServlet(name = "Carrito", urlPatterns = {"/Carrito"})
public class Carrito extends HttpServlet {

    HttpSession Session;
    ArrayList<DetallePedido> Carrito;

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
//            out.println("<title>Servlet Carrito</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Carrito at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);

        Session = request.getSession();//ATRIBUTO SESSION

        //SI LA SESSION ES NULA SE DIRIGE A LOGIN 
        if (Session.getAttribute("SessionUsuario") == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        if (Session.getAttribute("Carrito") == null) {
            Carrito = new ArrayList<DetallePedido>();
        } else {
            Carrito = (ArrayList<DetallePedido>) Session.getAttribute("Carrito");
        }

        //SI LA SESSION ESTA INICIADA, POR DEFAUL VA A PERFIL  
        request.getRequestDispatcher("Carrito.jsp").forward(request, response);

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
//        processRequest(request, response);
        int total = 0;
        Session = request.getSession();//ATRIBUTO SESSION

        if (request.getParameter("btn_add") != null) {

            //SI LA SESSION ES NULA SE DIRIGE A LOGIN 
            if (Session.getAttribute("SessionUsuario") == null) {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }                      
                       
            //Obtener Sesión
            Carrito = (ArrayList<DetallePedido>) Session.getAttribute("Carrito");

            int cantidad = (int) Integer.parseInt(request.getParameter("cantidad"));
            int id_producto = (int) Integer.parseInt(request.getParameter("producto_id"));
            
            //OBJ DETALLE
            DetallePedido dp = new DetallePedido();
            //OBJ PRODUCTO desde service    
            Producto p = Service.ProductoService.getProducto(id_producto);

            for (DetallePedido item: Carrito) {
                if (item.getCodigo_producto() == id_producto) {
                    item.setCantidad(item.getCantidad()+cantidad);
                    item.setSub_total(item.getPrecio_producto() * item.getCantidad());
                    
                    total = total + item.getSub_total();
                    request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                }
                
            }
            

            //SETEO Y ADD A CARRO 
            dp.setCantidad(cantidad);
            dp.setCodigo_producto(p.getCodigo_producto());
            dp.setPrecio_producto(p.getPrecio());
            dp.setSub_total(p.getPrecio() * cantidad);

            if (Carrito.add(dp)) {                
            
                for (DetallePedido item: Carrito) {
                    total = total + item.getSub_total();
                }
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
            } else {
                
                for (DetallePedido item: Carrito) {
                    total = total + item.getSub_total();
                }
                }
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
            }
            
            //request.getRequestDispatcher("Carrito.jsp").forward(request, response);        
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
