/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DTO.Pedido;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kokex
 */
public class PedidoService {
    
    //url base
    private static String url = "http://pipedev-001-site1.ctempurl.com/api/Pedido/";
    
    public static Pedido getPedido(int id) {
        try {

            URL url = new URL(PedidoService.url + id);
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

            Pedido u = g.fromJson(content.toString(), Pedido.class);

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
    
    
    public static List<Pedido> getPedidos() {
        try {

            URL url = new URL(PedidoService.url);
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

            while ((output = br.readLine()) != null) {
                content.append(output);
            }
            Type listType = new TypeToken<ArrayList<Pedido>>() {
            }.getType();

            Gson g = new Gson();

            List<Pedido> pedidos = g.fromJson(content.toString(), listType);

            conn.disconnect();

            if (pedidos != null) {
                return pedidos;
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
