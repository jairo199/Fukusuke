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
    
    private int Codigo_pedido;
    private Cliente Cliente_run;
    private Date Fecha;
    private String Estado;
    private String Observacion;
    //private ArrayList<Producto> DetallePedido;

    public Pedido() {
    }

    public Pedido(int Codigo_pedido, Cliente Cliente_run, Date Fecha, String Estado, String Observacion) {
        this.Codigo_pedido = Codigo_pedido;
        this.Cliente_run = Cliente_run;
        this.Fecha = Fecha;
        this.Estado = Estado;
        this.Observacion = Observacion;
    }

    public int getCodigo_pedido() {
        return Codigo_pedido;
    }

    public void setCodigo_pedido(int Codigo_pedido) {
        this.Codigo_pedido = Codigo_pedido;
    }

    public Cliente getCliente_run() {
        return Cliente_run;
    }

    public void setCliente_run(Cliente Cliente_run) {
        this.Cliente_run = Cliente_run;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
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
