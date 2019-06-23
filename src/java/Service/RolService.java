/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DTO.Rol;
import com.google.gson.Gson;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 *
 * @author Pipedev
 */
public class RolService {
    
        private static String url = "http://pipedev-001-site1.ctempurl.com/api/roles/";

    public static Rol getRol(int id) {
        try {

            URL url = new URL(RolService.url + id);
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

            Rol u = g.fromJson(content.toString(), Rol.class);

            conn.disconnect();

            if (u != null) {
                return u;
            } else {
                return null;
            }

        } catch (MalformedURLException e) {

            return null;
        } catch (IOException e) {
            return null;
        }
    }
    
}
