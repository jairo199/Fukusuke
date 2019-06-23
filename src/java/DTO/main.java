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
public class main {
    
    public static void main(String[] args) {
       
        Rol r = new Rol();
        r.setCodigo_rol(1);
        r.setDescripcion("ADMINISTRADOR");
        
        Usuario u = new Usuario();
        u.setCodigo_usuario(1);
        u.setNombres("JAIRO ANDRES");
        u.setApellidos("JARA BALBOA");
        u.setContrasena("123456");
        u.setCodigo_rol(r);
        
        if (u.getCodigo_rol().equals("ADMINISTRADOR")) {
            System.out.println ("USER; "+ u.toString());
        }
        
        
        
    }
    
}
