/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;


import java.net.MalformedURLException;


/**
 *
 * @author Jairo
 */
public class main {

    public static void main(String[] args) {

        // Usuario u = Service.UsuarioService.getUsuario(5);
        // Rol r = Service.RolService.getRol(1);
        //System.out.println(r.getDescripcion());
//        Usuario u = new Usuario(0, "Jorge", "Troncoso", "1234", 2);
//        
//        if(Service.UsuarioService.postUsuario(u)){
//            System.out.println("Ingresado");
//        }else{
//            System.out.println("Algo paso");
//        }
//        List<Producto> LISTA = Service.ProductoService.getProductos();
//        for (Producto item : LISTA) {
//            System.out.println( item.getPrecio()+"");
//        }

//          Cliente c = Service.ClienteService.getCliente("19677005-4");
//          System.out.println(c.getContrasena());
          
            System.out.println(Service.LoginService.getLogin("121212", "482053"));
            
    }

}
