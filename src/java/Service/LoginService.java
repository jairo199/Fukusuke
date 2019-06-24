/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

/**
 *
 * @author kokex
 */
import DTO.Cliente;
import DTO.Login;
import DTO.Usuario;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class LoginService {

    private static String url = "http://pipedev-001-site1.ctempurl.com/api/Login";

    public static String getLogin(String Run, String Codigo) {
        try {
            
            
            String aa;
            
            URL url = new URL(LoginService.url + "?Run="+Run+ "&codigo=" + Codigo);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");
            
            aa = url+"";
            
            if (conn.getResponseCode() != 200) {

                return "Codigo Erroneo";
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(
                    (conn.getInputStream())));
            
            String output;
            

            StringBuilder content = new StringBuilder();

            //System.out.println("Output from Server .... \n");
            while ((output = br.readLine()) != null) {
                content.append(output);
            }

//            Gson g = new Gson();
//
//            Cliente u = g.fromJson(content.toString(), Cliente.class);
            conn.disconnect();
            return content.toString();
//            if (u != null) {
//                return u;
//            } else {
//                return null;
//            }

        } catch (MalformedURLException e) {

            return null;
        } catch (IOException e) {
            return null;
        }
    }

    public static boolean putUsuario(Usuario usuario) {
        try {

            URL url = new URL(Service.LoginService.url);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setDoOutput(true);
            conn.setRequestMethod("PUT");
            conn.setRequestProperty("Content-Type", "application/json");

            Gson g = new Gson();

            String input = g.toJson(usuario);

            OutputStream os = conn.getOutputStream();
            os.write(input.getBytes());
            os.flush();

            if (conn.getResponseCode() != 200) {
                return false;
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(
                    (conn.getInputStream())));

            String output;
            System.out.println("Output from Server .... \n");
            while ((output = br.readLine()) != null) {
                System.out.println(output);
            }

            conn.disconnect();
            return true;

        } catch (MalformedURLException e) {

            e.printStackTrace();
            return false;

        } catch (IOException e) {

            e.printStackTrace();
            return false;

        }
    }

    public static boolean postLoginCliente(Login l) {
        try {

            URL url = new URL(Service.LoginService.url);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setDoOutput(true);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");

            Gson g = new Gson();

            String input = g.toJson(l);

            OutputStream os = conn.getOutputStream();
            os.write(input.getBytes());
            os.flush();

            if (conn.getResponseCode() != 200) {
                return false;
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(
                    (conn.getInputStream())));

//            String output;
//            System.out.println("Output from Server .... \n");
//            while ((output = br.readLine()) != null) {
//                System.out.println(output);
//            }
            conn.disconnect();
            return true;

        } catch (MalformedURLException e) {

            e.printStackTrace();
            return false;

        } catch (IOException e) {

            e.printStackTrace();
            return false;

        }
    }
}
