/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

/**
 *
 * @author Raphael
 */

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;
import POO.Prova.Disciplina;
public class DBListener implements ServletContextListener {

    private static final String CLASS_NAME = "org.sqlite.JDBC";
    private static final String DB_URL = "jdbc:sqlite:disciplinas.db";
    
    public static String exceptionMessage = null;
    
    public static Connection getConnection() throws Exception {
        return DriverManager.getConnection(DB_URL);
    }
    
    @Override
    public void contextInitialized(ServletContextEvent sce) { 
        String etapa = "inicializando";
        Statement stmt = null;
        Connection con = null;
        try {
            etapa="registrando a classe do drive";
            Class.forName(CLASS_NAME);
            etapa = "conectando com o banco de dados";
            con = getConnection();
            stmt = con.createStatement();
            
            stmt.execute(Disciplina.getCreatStatement());
            etapa = "Desconectando do banco de dados";
            
          
            
        } catch (Exception ex) {
            exceptionMessage = etapa + ": " + ex.getLocalizedMessage();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
