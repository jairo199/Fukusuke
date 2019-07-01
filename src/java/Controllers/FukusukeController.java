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
        
        //actuaizar datos de cliente        
        if (request.getParameter("actualizarDatos") != null){
            request.getRequestDispatcher("actualizardatos.jsp").forward(request, response);
        }        
                
                

        if (request.getParameter("BTN_REGISTRO") != null) {

            SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = null;
            boolean esValido2 = false; 
            try {
                fecha = formatoFecha.parse(request.getParameter("txt_fn"));

            } catch (Exception e) {
                listaFail.add("Error Fecha");
                esValido2 = false;
            }
            if (request.getParameter("txt_nombre").trim().isEmpty()) {
                listaFail.add("Debes ingresar tu nombre.");
                esValido2 = false;
            }
            if (request.getParameter("email").trim().isEmpty()) {
                listaFail.add("Debes ingresar tu email.");
                esValido2 = false;
            }
            if (request.getParameter("txt_telefono").trim().isEmpty()) {
                listaFail.add("Debes ingresar tu numero.");
                esValido2 = false;
            }
            
            if (request.getParameter("txt_dir").trim().isEmpty()) {
                listaFail.add("Debes ingresar tu direccion.");
                esValido2 = false;
            }
            
            
            String rut = request.getParameter("txt_run").toString();
            
            Cliente cliente = new Cliente();
            
            if (!Cliente.validarRut(rut)) {
                listaFail.add("RUT invalido.");
                esValido2 = false;
            }else{
                String dv;
                if (rut.length()==9) {
                     dv = rut.substring(8,9);
                     dv="-"+dv;
                     rut=rut.substring(0,8);
                     rut=rut+dv;
                }else if(rut.length()==8){
                     dv = rut.substring(7,8);
                     dv="-"+dv;
                     rut=rut.substring(0,7);
                     rut=rut+dv;
                }else{
                    rut=rut;
                }
                

                 esValido2 = true;
                
            }
            if (esValido2) {
                
                cliente.setRun(rut);
                cliente.setNombre_completo(request.getParameter("txt_nombre").toString());
                cliente.setSexo(request.getParameter("txt_sexo").toString());
                cliente.setFecha_nacimiento(fecha.toString());
                cliente.setTelefono(request.getParameter("txt_telefono").toString());
                cliente.setEmail(request.getParameter("email").toString());
                cliente.setDireccion(request.getParameter("txt_dir").toString());
                cliente.setRegion(request.getParameter("regiones").toString());
                cliente.setProvincia(request.getParameter("txt_provincia").toString());
                cliente.setComuna(request.getParameter("comunas").toString());

                cliente.setCodigo_confirmacion("");
                cliente.setContrasena(request.getParameter("txt_pass").toString());
                cliente.setEstado("0");
                
                if (!Service.ClienteService.postCliente(cliente)) {
                    
                    request.setAttribute("listaErrores", listaFail);
                    request.getRequestDispatcher("registrarcliente.jsp").forward(request, response);
                }else{
                    Service.ClienteService.postCliente(cliente);
                    request.setAttribute("Cliente", cliente);
                    request.getRequestDispatcher("validarEmail.jsp").forward(request, response);
                }
                    
               
                
            }else{
                    
                request.setAttribute("listaErrores", listaFail);
                request.setAttribute("rut", rut);
                request.setAttribute("nombre",request.getParameter("txt_nombre"));
                request.setAttribute("telefono", request.getParameter("txt_telefono"));
                request.setAttribute("email",request.getParameter("email"));
                request.setAttribute("direc",request.getParameter("txt_dir"));
                request.setAttribute("pass",request.getParameter("txt_pass"));
                
                request.getRequestDispatcher("registrarcliente.jsp").forward(request, response);
            }
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
