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
public class Usuario {

    private int Codigo_usuario;
    private String Nombres;
    private String Apellidos;
    private String Contrasena;
    private Rol Codigo_rol;

    public Usuario() {
    }

    public Usuario(int Codigo_usuario, String Nombres, String Apellidos, String Contrasena, Rol Codigo_rol) {
        this.Codigo_usuario = Codigo_usuario;
        this.Nombres = Nombres;
        this.Apellidos = Apellidos;
        this.Contrasena = Contrasena;
        this.Codigo_rol = Codigo_rol;
    }

    public int getCodigo_usuario() {
        return Codigo_usuario;
    }

    public void setCodigo_usuario(int Codigo_usuario) {
        this.Codigo_usuario = Codigo_usuario;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }

    public Rol getCodigo_rol() {
        return Codigo_rol;
    }

    public void setCodigo_rol(Rol Codigo_rol) {
        this.Codigo_rol = Codigo_rol;
    }

}
