/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DTO.DetallePedido;
import DTO.Pedido;
import DTO.Producto;
import Service.PedidoService;
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
        int total = 0;

        //SI LA SESSION ES NULA SE DIRIGE A LOGIN 
        if (Session.getAttribute("SessionUsuario") == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        try {
            //Carrito = (ArrayList<DetallePedido>) Session.getAttribute("Carrito");
            for (DetallePedido i : Carrito) {
                total = total + i.getSub_total();
            }

            //buscar ultimo id de pedido
            int max = 0;
            for (Pedido item : PedidoService.getPedidos()) {
                if (item != null && Integer.parseInt(item.getCodigo_pedido()) >= max) {
                    max = Integer.parseInt(item.getCodigo_pedido());
                }
            }

            int NUM_PEDIDO = max + 1;
            request.setAttribute("NUM_PEDIDO", NUM_PEDIDO);

            request.setAttribute("Total", total);
            request.getRequestDispatcher("Carrito.jsp").forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("Carrito.jsp").forward(request, response);
        }

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

        /**
         * BOTON AGREGAR A CARRITO
         */
        if (request.getParameter("btn_add") != null) {

            //SI LA SESSION ES NULA SE DIRIGE A LOGIN 
            if (Session.getAttribute("SessionUsuario") == null) {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

            //SESSION Y PARAMETROS
            Carrito = (ArrayList<DetallePedido>) Session.getAttribute("Carrito");

            int cantidad = (int) Integer.parseInt(request.getParameter("cantidad"));
            int id_producto = (int) Integer.parseInt(request.getParameter("producto_id"));

            //CREATE  DETALLEPEDIDO VACIO
            DetallePedido dp = new DetallePedido();

            //CREATE PRODUCTO DESDE SERVICE    
            Producto p = Service.ProductoService.getProducto(id_producto);

            //SETEO DETALLE PEDIDO CON DATOS DEL PRODUCTO Y PARAMETROS DE LA VISTA
            dp.setCantidad(cantidad);
            dp.setCodigo_producto(p.getCodigo_producto());
            dp.setPrecio_producto(p.getPrecio());
            dp.setSub_total(p.getPrecio() * cantidad);
            dp.setNombreProducto(p.getDescripcion());
            
            
            

            //RECORRER CARRITO Y PREGUNTTAR SU EXISTE EL PRODUCTO QUE SE QUIERE AÑADIR
            for (DetallePedido item : Carrito) {

                //SI EXISTE SE SETEAN SUS ATRIBUTOS Y LA VARIABLE TOTAL
                if (item.getCodigo_producto() == id_producto) {
                    
                    item.setCantidad(item.getCantidad() + cantidad);
                    item.setSub_total(item.getPrecio_producto() * item.getCantidad());

                    System.out.println(item.toString());
                    
                    
                    for (DetallePedido i : Carrito) {
                        total = total + i.getSub_total();
                    }

                    //REDIRECCION A CARRITO
                    request.setAttribute("Total", total);
                    request.setAttribute("msg", "Producto actualizado con éxito.");
                    request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                }
            }

            //SI EL PRODUCTO NO EXISTE EN EL CARRITO SE AGREGA 
            if (Carrito.add(dp)) {

                //SE SETEA LA VARIABLE TOTAL
                for (DetallePedido item : Carrito) {
                    System.out.println(item.getNombreProducto());
                    total = total + item.getSub_total();

                }
                request.setAttribute("Total", total);

                //buscar ultimo id de pedido
                int max = 0;
                for (Pedido item : PedidoService.getPedidos()) {
                    if (item != null && Integer.parseInt(item.getCodigo_pedido()) >= max) {
                        max = Integer.parseInt(item.getCodigo_pedido());
                    }
                }

                int NUM_PEDIDO = max + 1;
                request.setAttribute("NUM_PEDIDO", NUM_PEDIDO);

                request.setAttribute("msg", "Producto agregado con éxito.");
                //REDIRECCION A CARRITO
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
            }
            request.getRequestDispatcher("Productos.jsp").forward(request, response);
        }

        /**
         * BOTON REMOVER DE CARRITO
         */
        if (request.getParameter("btn_remove") != null) {

            try {
                int cod_producto = (int) Integer.parseInt(request.getParameter("cod_producto"));

                for (DetallePedido item : Carrito) {

                    if (item.getCodigo_producto() == cod_producto) {
                        Carrito.remove(item);
                    }

                }

                //SE SETEA LA VARIABLE TOTAL
                for (DetallePedido item : Carrito) {
                    total = total + item.getSub_total();
                }

                //buscar ultimo id de pedido
                int max = 0;
                for (Pedido item : PedidoService.getPedidos()) {
                    if (item != null && Integer.parseInt(item.getCodigo_pedido()) >= max) {
                        max = Integer.parseInt(item.getCodigo_pedido());
                    }
                }

                int NUM_PEDIDO = max + 1;
                request.setAttribute("NUM_PEDIDO", NUM_PEDIDO);

                request.setAttribute("Total", total);
                request.setAttribute("msg", "Producto removido con éxito.");
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
            } catch (Exception e) {
                request.setAttribute("msg", "Producto removido...");
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
            }

        }

        if (request.getParameter("btn_edit") != null) {

            try {
                int cod_producto = (int) Integer.parseInt(request.getParameter("id_producto"));
                int cantidad = (int) Integer.parseInt(request.getParameter("cantidad"));

                for (DetallePedido item : Carrito) {
                    if (item.getCodigo_producto() == cod_producto) {

                        item.setCantidad(cantidad);

                        item.setSub_total(item.getPrecio_producto() * item.getCantidad());
                    }

                }

                //SE SETEA LA VARIABLE TOTAL
                for (DetallePedido itemm : Carrito) {
                    total = total + itemm.getSub_total();
                }

                //buscar ultimo id de pedido
                int max = 0;
                for (Pedido item : PedidoService.getPedidos()) {
                    if (item != null && Integer.parseInt(item.getCodigo_pedido()) >= max) {
                        max = Integer.parseInt(item.getCodigo_pedido());
                    }
                }

                int NUM_PEDIDO = max + 1;
                request.setAttribute("NUM_PEDIDO", NUM_PEDIDO);

                request.setAttribute("Total", total);
                request.setAttribute("msg", "Producto modificado con éxito.");
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);

            } catch (Exception e) {
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
            }

        }

        if (request.getParameter("btn_pay") != null) {

            
            try {
                
                //SE SETEA LA VARIABLE TOTAL
                for (DetallePedido itemm : Carrito) {
                    total = total + itemm.getSub_total();
                }

                //buscar ultimo id de pedido
                int max = 0;
                for (Pedido item : PedidoService.getPedidos()) {
                    if (item != null && Integer.parseInt(item.getCodigo_pedido()) >= max) {
                        max = Integer.parseInt(item.getCodigo_pedido());
                    }
                }

                int NUM_PEDIDO = max + 1;
                request.setAttribute("NUM_PEDIDO", NUM_PEDIDO);

                request.setAttribute("Total", total);   
                
                
                request.getRequestDispatcher("procesoPago.jsp").forward(request, response);

            } catch (Exception e) {
                request.getRequestDispatcher("procesoPagojsp").forward(request, response);
            }
            
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
