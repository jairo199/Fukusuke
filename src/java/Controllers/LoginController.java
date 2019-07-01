/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DTO.Cliente;
import DTO.DetallePedido;
import DTO.Login;
import DTO.Producto;
import Service.ClienteService;
import Service.LoginService;
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
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    HttpSession Session;
    ArrayList<DetallePedido> Carrito;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

        Session = request.getSession();//ATRIBUTO SESSION

        //SI LA SESSION ES NULA SE DIRIGE A LOGIN 
        if (Session.getAttribute("SessionUsuario") == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        if (Session.getAttribute("Carrito") == null) {
            Carrito = new ArrayList<DetallePedido>();
            System.out.println("1");
        } else {
            
            Carrito = (ArrayList<DetallePedido>) Session.getAttribute("Carrito");
            
        }

        //SI LA SESSION ESTA INICIADA, POR DEFAUL VA A PERFIL  
        request.getRequestDispatcher("perfil.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

        //SESION
        Session = request.getSession();//atributo sesion

        ArrayList<String> listaFail = new ArrayList<String>();
        boolean esValido = true;

        if (request.getParameter("btn_Validar") != null) {

            String rut = request.getParameter("run_registro");
            String codigo = request.getParameter("txt_codigo");

            String respuesta = Service.LoginService.getLogin(rut, codigo);
            listaFail.add(respuesta);

            request.setAttribute("listaErrores", listaFail);
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }

        if (request.getParameter("btn_login") != null) {
            String rut = request.getParameter("rut");
            String password = request.getParameter("password");

            boolean valRut = false;

            if (request.getParameter("rut").isEmpty()) {
                esValido = false;

                listaFail.add("Debes ingresar tu RUT.");
            } else {
                valRut = true;
            }
            if (request.getParameter("password").trim().isEmpty()) {
                esValido = false;
                listaFail.add("Debes ingresar tu contraseña.");
            }
            //pregunta si el rut es valido
            if (!Cliente.validarRut(rut)) {
                esValido = false;
                listaFail.add("RUT invalido.");
            }

            ClienteService cli = new ClienteService();

            if (valRut == true) {

                String dv;
                if (rut.length() == 9) {
                    dv = rut.substring(8, 9);
                    dv = "-" + dv;
                    rut = rut.substring(0, 8);
                    rut = rut + dv;
                } else if (rut.length() == 8) {
                    dv = rut.substring(7, 8);
                    dv = "-" + dv;
                    rut = rut.substring(0, 7);
                    rut = rut + dv;
                }

                Login login = new Login(rut, password);

                if (cli.getCliente(rut) == null) {
                    esValido = false;
                    listaFail.add("usuario no registrado");
                }

                if (!LoginService.postCliente(login)) {
                    esValido = false;
                    listaFail.add("Contraseña Incorrecta");
                }
            }

            if (!esValido) {

                request.setAttribute("listaErrores", listaFail);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

            if (esValido) {

                if (Session.getAttribute("SessionUsuario") == null) {
                    
                    Carrito =  new ArrayList<DetallePedido>();
                    
                    Session.setAttribute("SessionUsuario", cli.getCliente(rut));
                    Session.setAttribute("Carrito", Carrito);
                   
                }
                request.setAttribute("email", cli.getCliente(rut).getEmail());

                request.setAttribute("nombre", cli.getCliente(rut).getNombre_completo());
                request.setAttribute("rut", cli.getCliente(rut).getRun());
                request.setAttribute("telefono", cli.getCliente(rut).getTelefono());
                request.setAttribute("sexo", cli.getCliente(rut).getSexo());
                request.setAttribute("fechana", cli.getCliente(rut).getFecha_nacimiento());
                request.setAttribute("direccion", cli.getCliente(rut).getDireccion() + ", " + cli.getCliente(rut).getRegion() + ", " + cli.getCliente(rut).getProvincia() + ", " + cli.getCliente(rut).getComuna());
                request.getRequestDispatcher("perfil.jsp").forward(request, response);

            }
        }

        
        
        /**
         * BOTONE CLIENTE
         */
        if (request.getParameter("btn_misdatos") != null) {

        }
        if (request.getParameter("btn_mispedidos") != null) {

        }
        
        //actuaizar datos de cliente        
        if (request.getParameter("actualizarDatos") != null){
            request.getRequestDispatcher("actualizardatos.jsp").forward(request, response);
        }  
        
        if (request.getParameter("btn_bajacliente") != null) {

        }
        
            
 
        
        //SI SE CIERRA LA SESSION SE DIRIGE A INDEX
        if (request.getParameter("btn_salir") != null) {

            request.getSession().removeAttribute("SessionUsuario");
            request.getSession().removeAttribute("Carrito");

            request.getRequestDispatcher("login.jsp").forward(request, response);

        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
        
        
        

    }

    @Override
    public String getServletInfo() {
        return "Login Fukusuke";
    }// </editor-fold>

}
