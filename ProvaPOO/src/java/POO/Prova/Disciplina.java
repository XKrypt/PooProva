/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package POO.Prova;

/**
 *
 * @author Raphael
 */
import java.sql.*;
import web.DBListener;

import java.util.ArrayList;
public class Disciplina {
    
    String nome;
    String ementa;
    int ciclo;
    double nota;
    
    
    
    
    public Disciplina(String nome, String ementa, int ciclo,  double nota ) {
        
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
        this.nota = nota;
        
    }
    
    public static void update(String nomeAntigo, String nome, String ementa, int ciclo,  double nota ) throws Exception{
         ArrayList<Disciplina> disciplinas = new ArrayList();
          
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Exception methodEx = null;
        try {
            con = DBListener.getConnection();
            stmt = con.prepareStatement("UPDATE disciplinas SET nome= ? , ementa = ?, ciclo = ?, nota = ? WHERE nome =  ?");
            stmt.setString(1, nome);
            stmt.setString(2, ementa);
            stmt.setInt(3, ciclo);
            stmt.setDouble(4, nota);
             stmt.setString(5, nomeAntigo);
            stmt.execute();
           
            
    
        } catch (Exception ex) {
            methodEx = ex;
        }finally{
            try {stmt.close();con.close();rs.close();}catch (Exception e) { }
        }
        if(methodEx!=null) throw methodEx;
    }
    
    public static void remove(String nome) throws Exception{
        ArrayList<Disciplina> disciplinas = new ArrayList();
          
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Exception methodEx = null;
        try {
            con = DBListener.getConnection();
            stmt = con.prepareStatement("DELETE FROM disciplinas WHERE nome = ?");
            stmt.setString(1, nome);
            

            stmt.execute();
           
            
    
        } catch (Exception ex) {
            methodEx = ex;
        }finally{
            try {stmt.close();con.close();rs.close();}catch (Exception e) { }
        }
        if(methodEx!=null) throw methodEx;
    }
    
    public static void add(String nome, String ementa, int ciclo,  double nota  ) throws Exception{
            ArrayList<Disciplina> disciplinas = new ArrayList();
          
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Exception methodEx = null;
        try {
            con = DBListener.getConnection();
            stmt = con.prepareStatement("INSERT INTO disciplinas VALUES(?, ?, ?, ?)");
            stmt.setString(1, nome);
            stmt.setString(2, ementa);
            stmt.setInt(3, ciclo);
            stmt.setDouble(4, nota);
            
            stmt.execute();
           
            
    
        } catch (Exception ex) {
            methodEx = ex;
        }finally{
            try {stmt.close();con.close();rs.close();}catch (Exception e) { }
        }
        if(methodEx!=null) throw methodEx;
    }
    
    public static ArrayList<Disciplina> getList() throws Exception {
        ArrayList<Disciplina> disciplinas = new ArrayList();
          
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Exception methodEx = null;
        try {
            con = DBListener.getConnection();
            stmt = con.prepareStatement("SELECT * FROM disciplinas");
      
            rs = stmt.executeQuery();
            
            while(rs.next()){
                disciplinas.add(new Disciplina(
                        rs.getString("nome"),
                        rs.getString("ementa"),
                        rs.getInt("ciclo"),
                        rs.getDouble("nota")
                ));
            }
    
        } catch (Exception ex) {
            methodEx = ex;
        }finally{
            try {stmt.close();con.close();rs.close();}catch (Exception e) { }
        }
        if(methodEx!=null) throw methodEx;
     return disciplinas;
    }
    

    
    
  
    
    public double getNota(){
        return nota;
    }
    
    
    public String getNome() {
        return nome;
    }

    public String getEmenta() {
        return ementa;
    }
    
     public int getCiclo() {
        return ciclo;
    }
     
     
     
      
    public static String getCreatStatement(){
        return "CREATE TABLE IF NOT EXISTS disciplinas("
                + "nome VARCHAR(50) UNIQUE NOT NULL,"
                + "ementa VARCHAR(200)NOT NULL,"
                + "ciclo int,"
                + "nota double;";
    }

}
