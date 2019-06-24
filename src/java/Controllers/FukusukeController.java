/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DTO.Cliente;
import DTO.Producto;
import com.google.gson.Gson;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.client.Client;

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

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

        HttpSession Session = request.getSession();//ATRIBUTO SESSION

        /* ARRAYLIST PARA ALMACENAR ERRORES */
        ArrayList<String> listaFail = new ArrayList<String>();
        boolean esValido = true;

        /**
         * ********* INICIO NAV BAR **********
         */
        if (request.getParameter("nav_home") != null) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        if (request.getParameter("nav_nosotros") != null) {
            request.getRequestDispatcher("nosotros.jsp").forward(request, response);
        }
        if (request.getParameter("nav_productos") != null) {

            List<Producto> ListaDTO = Service.ProductoService.getProductos();
            request.setAttribute("lstProducto", ListaDTO);
            request.getRequestDispatcher("Productos.jsp").forward(request, response);

        }
        if (request.getParameter("nav_contacto") != null) {
            request.getRequestDispatcher("Contacto.jsp").forward(request, response);
        }

        if (request.getParameter("BTN_REGISTRO") != null) {

            SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = null;

            try {
                fecha = formatoFecha.parse(request.getParameter("txt_fn"));

            } catch (Exception e) {
                listaFail.add("Error Fecha");
            }

            Cliente cliente = new Cliente();

            cliente.setRun(request.getParameter("txt_run").toString());
            cliente.setNombre_completo(request.getParameter("txt_nombre").toString());
            cliente.setSexo(request.getParameter("txt_sexo").toString());
            cliente.setFecha_nacimiento(fecha.toString());
            cliente.setTelefono(request.getParameter("txt_telefono").toString());
            cliente.setEmail(request.getParameter("email").toString());
            cliente.setDireccion(request.getParameter("txt_dir").toString());
            cliente.setRegion(request.getParameter("txt_region").toString());
            cliente.setProvincia(request.getParameter("txt_provincia").toString());
            cliente.setComuna(request.getParameter("txt_comuna").toString());

            cliente.setCodigo_confirmacion("");
            cliente.setContrasena(request.getParameter("txt_pass").toString());
            cliente.setEstado("0");

            Service.ClienteService.postCliente(cliente);

            request.setAttribute("Cliente", cliente);
            
            request.getRequestDispatcher("validarEmail.jsp").forward(request, response);

        }

        /**
         * ********* PAGINA ERROR **********
         */
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
