
package modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class Persona {
    //atributos de la clase
   String dui;
   String apellidos;
   String nombres;
   
   //Constructor vacio de la clase persona
   
   
   Connection cnn;
   Statement state;
   ResultSet result;
   
   public Persona(){
       try {
           Class.forName("com.mysql.cj.jdbc.Driver");//Driver de la base de datos
           cnn = DriverManager.getConnection("jdbc:mysql://localhost:3307/bd_recurso_humano?zeroDateTimeBehavior=CONVERT_TO_NULL","root","");//url de la db, user, pass
                   } catch (ClassNotFoundException ex) {
           Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
       } catch (SQLException ex) {
           Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
       }
    }
   
   public boolean insertarDatos(){
       try{
           String miQuery = "INSERT INTO tb_persona VALUES('" + dui + "', '" + apellidos + "', '"+ nombres + "');";
           int estado = 0;
           state = cnn.createStatement();
           estado = state.executeUpdate(miQuery);
           if (estado == 1) {
               return  true;
               
           }
       }
       catch (SQLException ex){
           Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return false;   
    }
   public String getDui(){
   
       return dui;
   }
   public void   setDui(String dui){
   
       this.dui = dui;
   }
   ////////////////////////////////////////////
   public String getApellidos(){
   
       return apellidos;
   }
   public void   setApellidos(String apellidos){
   
       this.apellidos = apellidos;
   }
    ////////////////////////////////////////////
   public String getNombres(){
   
       return nombres;
   }
   public void   setNombres(String nombres){
   
       this.nombres = nombres;
   }
}

