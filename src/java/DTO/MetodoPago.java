/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Jairo
 */
public class MetodoPago {

    private int Codigo_pago;
    private String Descripcion;

    public MetodoPago() {
    }

    public MetodoPago(int Codigo_pago, String Descripcion) {
        this.Codigo_pago = Codigo_pago;
        this.Descripcion = Descripcion;
    }

    public int getCodigo_pago() {
        return Codigo_pago;
    }

    public void setCodigo_pago(int Codigo_pago) {
        this.Codigo_pago = Codigo_pago;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

}
