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
public class Rol {

    private int Codigo_rol;
    private String Descripcion;

    public Rol() {
    }

    public Rol(int Codigo_rol, String Descripcion) {
        this.Codigo_rol = Codigo_rol;
        this.Descripcion = Descripcion;
    }

    public int getCodigo_rol() {
        return Codigo_rol;
    }

    public void setCodigo_rol(int Codigo_rol) {
        this.Codigo_rol = Codigo_rol;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

}
