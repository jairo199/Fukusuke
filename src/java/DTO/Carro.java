/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.util.ArrayList;

/**
 *
 * @author Jairo
 */
public class Carro {
    private ArrayList<Producto> Carrito;
    private Cliente cliente;

    public Carro() {
    }

    public Carro(ArrayList<Producto> Carrito, Cliente cliente) {
        this.Carrito = Carrito;
        this.cliente = cliente;
    }

    public ArrayList<Producto> getCarrito() {
        return Carrito;
    }

    public void setCarrito(ArrayList<Producto> Carrito) {
        this.Carrito = Carrito;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    
    
}
