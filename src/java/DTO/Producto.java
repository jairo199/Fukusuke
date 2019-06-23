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
public class Producto {

    private int Codigo_producto;
    private String Descripcion;
    private String Url_photo;
    private int Precio;
    private int Cantidad_disponible;

    public Producto() {
    }

    public Producto(int Codigo_producto, String Descripcion, String Url_photo, int Precio, int Cantidad_disponible) {
        this.Codigo_producto = Codigo_producto;
        this.Descripcion = Descripcion;
        this.Url_photo = Url_photo;
        this.Precio = Precio;
        this.Cantidad_disponible = Cantidad_disponible;
    }

    public int getCodigo_producto() {
        return Codigo_producto;
    }

    public void setCodigo_producto(int Codigo_producto) {
        this.Codigo_producto = Codigo_producto;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getUrl_photo() {
        return Url_photo;
    }

    public void setUrl_photo(String Url_photo) {
        this.Url_photo = Url_photo;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }

    public int getCantidad_disponible() {
        return Cantidad_disponible;
    }

    public void setCantidad_disponible(int Cantidad_disponible) {
        this.Cantidad_disponible = Cantidad_disponible;
    }

}
