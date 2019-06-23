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
public class Empresa {
    
    private String Rut;
    private String Razon_social;
    private String Direccion;
    private String Comuna;
    private String Provincia;
    private String Region;

    public Empresa() {
    }

    public Empresa(String Rut, String Razon_social, String Direccion, String Comuna, String Provincia, String Region) {
        this.Rut = Rut;
        this.Razon_social = Razon_social;
        this.Direccion = Direccion;
        this.Comuna = Comuna;
        this.Provincia = Provincia;
        this.Region = Region;
    }

    public String getRut() {
        return Rut;
    }

    public void setRut(String Rut) {
        this.Rut = Rut;
    }

    public String getRazon_social() {
        return Razon_social;
    }

    public void setRazon_social(String Razon_social) {
        this.Razon_social = Razon_social;
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
    
    
    
}
