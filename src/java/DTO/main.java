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

        //http://pipedev-001-site1.ctempurl.com/api/Clientes
        try {

            URL url = new URL("http://pipedev-001-site1.ctempurl.com/api/usuarios/1");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");

            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + conn.getResponseCode());
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(
                    (conn.getInputStream())));

            String output;
            StringBuilder content = new StringBuilder();
            System.out.println("Output from Server .... \n");
            while ((output = br.readLine()) != null) {
                content.append(output);
            }

            Gson g = new Gson();

            Usuario u = g.fromJson(content.toString(), Usuario.class);

            if (u != null) {
                System.out.println(u.getNombres());
            } else {
                System.out.println("No parse");
            }

            conn.disconnect();

        } catch (MalformedURLException e) {

            e.printStackTrace();

        } catch (IOException e) {

            e.printStackTrace();

        }

    }

}
