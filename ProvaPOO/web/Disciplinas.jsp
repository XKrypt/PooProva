<%-- 
    Document   : Disciplinas
    Created on : 5 de out. de 2020, 17:59:43
    Author     : Raphael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="POO.Prova.Disciplina" %>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>



<%

if(request.getParameter("add") != null){
    String nome = request.getParameter("nome");
    String ementa = request.getParameter("ementa");
    int ciclo = Integer.parseInt(request.getParameter("ciclo"));
    double nota =  Double.parseDouble(request.getParameter("nota"));
    
    Disciplina.add(nome, ementa, ciclo, nota);
}


if(request.getParameter("update") != null){
     String nome = request.getParameter("nome");
     String nomeAntigo = request.getParameter("nomeAntigo");
    String ementa = request.getParameter("ementa");
    int ciclo = Integer.parseInt(request.getParameter("ciclo"));
    double nota =  Double.parseDouble(request.getParameter("nota"));
    
    Disciplina.update(nomeAntigo,nome, ementa, ciclo, nota);
}


if(request.getParameter("delete") != null){
    String nome = request.getParameter("nome");
     Disciplina.remove(nome);
}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        
         <jsp:include page="WEB-INF/jspf/menu.jspf" />
           <form>
                   <input placeholder="nome" type="text" name="nome" />
                   <input  placeholder="ementa" type="text" name="ementa" />
                   <input  placeholder="ciclo" type="text" name="ciclo" />
                   <input  placeholder="nota" type="text" name="nota"/>
                   
                   <input  type="hidden" name="nomeAntigo"/>
                   <input   type="submit" name="add" value="adicionar"/>
           </form>
        <div class="Disciplinas-Table">
            <% for(Disciplina item : Disciplina.getList()){
               %>
               <form>
                   <input type="text" name="nome" value="<%= item.getNome() %>"/>
                   <input type="text" name="ementa" value="<%= item.getEmenta() %>"/>
                   <input type="text" name="ciclo" value="<%= item.getCiclo() %>"/>
                   <input type="text" name="nota" value="<%= item.getNota() %>"/>
                   <input type="hidden" name="nomeAntigo" value="<%= item.getNome() %>"/>
                    <input type="submit" name="delete" value="excluir"/>
                    <input type="submit" name="update" value="alterar"/>
               </form>
            <%
            }%>
        </div>
    </body>
</html>
