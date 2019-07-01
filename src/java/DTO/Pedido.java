/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Jairo
 */
public class Pedido {
    
    private String Codigo_pedido;
    private String Cliente_run;
    private String Fecha;
    private String Estado;
    private String Observacion;
   

    public Pedido() {
    }

    public Pedido(String Codigo_pedido, String Cliente_run, String Fecha, String Estado, String Observacion) {
        this.Codigo_pedido = Codigo_pedido;
        this.Cliente_run = Cliente_run;
        this.Fecha = Fecha;
        this.Estado = Estado;
        this.Observacion = Observacion;
    }

    public String getCodigo_pedido() {
        return Codigo_pedido;
    }

    public void setCodigo_pedido(String Codigo_pedido) {
        this.Codigo_pedido = Codigo_pedido;
    }

    public String getCliente_run() {
        return Cliente_run;
    }

    public void setCliente_run(String Cliente_run) {
        this.Cliente_run = Cliente_run;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public String getObservacion() {
        return Observacion;
    }

    public void setObservacion(String Observacion) {
        this.Observacion = Observacion;
    }

   
    
    
    
    
}
