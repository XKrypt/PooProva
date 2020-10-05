<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="POO.Prova.Disciplina" %>
<%@page import="java.util.Set"%>

<%
    Disciplina disciplinas = new Disciplina(null,null,0);
    

            Disciplina ingles = new Disciplina("Ingl&ecircs IV", "Estudo da lingua inglesa", 4);
            Disciplina banco = new Disciplina("Banco de Dados", "Teoria de banco de dados", 4);
            Disciplina poo = new Disciplina("Programa&ccedil&atildeo orientada a objetos", "Programa??o orientada a objeto", 4);
            Disciplina es3 = new Disciplina("Engenharia de Software III", "Estudo de engenharia de software", 4);
            Disciplina so2 = new Disciplina("Sistemas Operacionais II", "Estudo sobre o funcionamento de diferentes sistemas operacionais", 4);
            Disciplina metodologia = new Disciplina("Metodologia da Pesquisa Cientifico Tecnologica", "Estudo de pesquisa cientifico tecnologica", 4);
            Disciplina lp4 = new Disciplina("Linguagem de Programacao IV", "Linguagem de programa??o web", 4);

            disciplinas.addDisciplina(ingles);
            disciplinas.addDisciplina(banco);
            disciplinas.addDisciplina(poo);
            disciplinas.addDisciplina(es3);
            disciplinas.addDisciplina(so2);
            disciplinas.addDisciplina(metodologia);
            disciplinas.addDisciplina(lp4);
            

            application.setAttribute("disciplinas", disciplinas);
    
%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div><% out.print(disciplinas.getList().size()); %></div>
        <a href="Disciplinas.jsp">Disciplinas</a>
    </body>
</html>
