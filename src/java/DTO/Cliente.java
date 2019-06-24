/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Jairo
 */
public class Cliente {

    private String Run;
    private String Nombre_completo;
    private String Email;
    private String Telefono;
    private String Sexo;
    private String Fecha_nacimiento;
    private String Direccion;
    private String Comuna;
    private String Provincia;
    private String Region;
    private String Contrasena;
    private String Codigo_confirmacion;
    private String Estado;
    
    public Cliente() {
    }

    public Cliente(String Run, String Nombre_completo, String Email, String Telefono, String Sexo, String Fecha_nacimiento, String Direccion, String Comuna, String Provincia, String Region, String Contrasena, String Codigo_confirmacion, String Estado) throws ParseException {
        this.Run = Run;
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

    public String getRun() {
        return Run;
    }

    public void setRun(String Run) {
        this.Run = Run;
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

    public String getFecha_nacimiento() {
        return Fecha_nacimiento;
    }

    public void setFecha_nacimiento(String Fecha_nacimiento) {
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
    public static boolean validarRut(String rut) {

        boolean validacion = false;
        try {
            rut =  rut.toUpperCase();
            rut = rut.replace(".", "");
            rut = rut.replace("-", "");
            int rutAux = Integer.parseInt(rut.substring(0, rut.length() - 1));

            char dv = rut.charAt(rut.length() - 1);

            int m = 0, s = 1;
            for (; rutAux != 0; rutAux /= 10) {
                s = (s + rutAux % 10 * (9 - m++ % 6)) % 11;
            }
            if (dv == (char) (s != 0 ? s + 47 : 75)) {
                validacion = true;
            }

        } catch (java.lang.NumberFormatException e) {
            
        } catch (Exception e) {
            
        }
        return validacion;
    }
}
