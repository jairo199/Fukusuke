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
public class Cliente {

    private int run;
    private String Nombre_completo;
    private String Email;
    private String Telefono;
    private String Sexo;
    private Date Fecha_nacimiento;
    private String Direccion;
    private String Comuna;
    private String Provincia;
    private String Region;
    private String Contrasena;
    private String Codigo_confirmacion;

    public Cliente() {
    }

    public Cliente(int run, String Nombre_completo, String Email, String Telefono, String Sexo, Date Fecha_nacimiento, String Direccion, String Comuna, String Provincia, String Region, String Contrasena, String Codigo_confirmacion) {
        this.run = run;
        this.Nombre_completo = Nombre_completo;
        this.Email = Email;
        this.Telefono = Telefono;
        this.Sexo = Sexo;
        this.Fecha_nacimiento = Fecha_nacimiento;
        this.Direccion = Direccion;
        this.Comuna = Comuna;
        this.Provincia = Provincia;
        this.Region = Region;
        this.Contrasena = Contrasena;
        this.Codigo_confirmacion = Codigo_confirmacion;
    }

    public int getRun() {
        return run;
    }

    public void setRun(int run) {
        this.run = run;
    }

    public String getNombre_completo() {
        return Nombre_completo;
    }

    public void setNombre_completo(String Nombre_completo) {
        this.Nombre_completo = Nombre_completo;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public Date getFecha_nacimiento() {
        return Fecha_nacimiento;
    }

    public void setFecha_nacimiento(Date Fecha_nacimiento) {
        this.Fecha_nacimiento = Fecha_nacimiento;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getComuna() {
        return Comuna;
    }

    public void setComuna(String Comuna) {
        this.Comuna = Comuna;
    }

    public String getProvincia() {
        return Provincia;
    }

    public void setProvincia(String Provincia) {
        this.Provincia = Provincia;
    }

    public String getRegion() {
        return Region;
    }

    public void setRegion(String Region) {
        this.Region = Region;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }

    public String getCodigo_confirmacion() {
        return Codigo_confirmacion;
    }

    public void setCodigo_confirmacion(String Codigo_confirmacion) {
        this.Codigo_confirmacion = Codigo_confirmacion;
    }

}
