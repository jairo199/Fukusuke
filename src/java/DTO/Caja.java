/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.util.Date;

/**
 *
 * @author Jairo
 */
public class Caja {
    
    private Date Fecha;
    private int Total_debito;
    private int Total_credito;
    private int Total_efectivo;
    private int Total_caja;
    private int Codigo_usuario;

    public Caja() {
    }

    public Caja(Date Fecha, int Total_debito, int Total_credito, int Total_efectivo, int Total_caja, int Codigo_usuario) {
        this.Fecha = Fecha;
        this.Total_debito = Total_debito;
        this.Total_credito = Total_credito;
        this.Total_efectivo = Total_efectivo;
        this.Total_caja = Total_caja;
        this.Codigo_usuario = Codigo_usuario;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }

    public int getTotal_debito() {
        return Total_debito;
    }

    public void setTotal_debito(int Total_debito) {
        this.Total_debito = Total_debito;
    }

    public int getTotal_credito() {
        return Total_credito;
    }

    public void setTotal_credito(int Total_credito) {
        this.Total_credito = Total_credito;
    }

    public int getTotal_efectivo() {
        return Total_efectivo;
    }

    public void setTotal_efectivo(int Total_efectivo) {
        this.Total_efectivo = Total_efectivo;
    }

    public int getTotal_caja() {
        return Total_caja;
    }

    public void setTotal_caja(int Total_caja) {
        this.Total_caja = Total_caja;
    }

    public int getCodigo_usuario() {
        return Codigo_usuario;
    }

    public void setCodigo_usuario(int Codigo_usuario) {
        this.Codigo_usuario = Codigo_usuario;
    }
    
    
    
}
