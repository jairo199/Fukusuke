/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import Service.ProductoService;
import com.google.gson.Gson;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import sun.misc.IOUtils;

/**
 *
 * @author Jairo
 */
public class main {

    public static void main(String[] args) throws MalformedURLException, IOException {

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
        List<Producto> LISTA = Service.ProductoService.getProductos();
        for (Producto item : LISTA) {
            System.out.println( item.getPrecio()+"");
        }

    }

}
