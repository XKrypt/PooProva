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
import java.util.ArrayList;
public class Disciplina {
    
    String nome;
    String ementa;
    int ciclo;
    float nota;
    ArrayList<Disciplina> disciplinas = new ArrayList();
    
    
    
    public Disciplina(String nome, String ementa, int ciclo) {
        
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
        
    }
    
    public  ArrayList<Disciplina> getList(){
     return disciplinas;
    }
    
    public void setList( ArrayList<Disciplina> _disciplina){
        this.disciplinas = _disciplina;
    }
    
    
    public void addDisciplina(Disciplina disciplina){
        disciplinas.add(disciplina);
    }
    
    
    
    public void setNota(float nota){
        this.nota = nota;
    }
    
    
    public float getNota(){
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

}
