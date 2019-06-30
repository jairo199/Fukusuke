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
public class DetallePedido {

    private int Codigo_producto;
    private int Codigo_pedido;
    private int Cantidad;
    private int Precio_producto;
    private int Sub_total;

    public DetallePedido() {
    }

    public DetallePedido(int Codigo_producto, int Codigo_pedido, int Cantidad, int Precio_producto, int Sub_total) {
        this.Codigo_producto = Codigo_producto;
        this.Codigo_pedido = Codigo_pedido;
        this.Cantidad = Cantidad;
        this.Precio_producto = Precio_producto;
        this.Sub_total = Sub_total;
    }

    public int getCodigo_producto() {
        return Codigo_producto;
    }

    public void setCodigo_producto(int Codigo_producto) {
        this.Codigo_producto = Codigo_producto;
    }

    public int getCodigo_pedido() {
        return Codigo_pedido;
    }

    public void setCodigo_pedido(int Codigo_pedido) {
        this.Codigo_pedido = Codigo_pedido;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public int getPrecio_producto() {
        return Precio_producto;
    }

    public void setPrecio_producto(int Precio_producto) {
        this.Precio_producto = Precio_producto;
    }

    public int getSub_total() {
        return Sub_total;
    }

    public void setSub_total(int Sub_total) {
        this.Sub_total = Sub_total;
    }

}
