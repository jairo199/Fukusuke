/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import com.google.gson.Gson;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import sun.misc.IOUtils;

/**
 *
 * @author Jairo
 */
public class main {

    public static void main(String[] args) throws MalformedURLException, IOException {

       // Usuario u = Service.UsuarioService.getUsuario(5);
        
       Rol r = Service.RolService.getRol(1);
       
       System.out.println(r.getDescripcion());

    }
}
