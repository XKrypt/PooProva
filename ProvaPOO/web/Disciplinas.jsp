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
    
    Disciplina disciplinas = new Disciplina(null,null,0);
    try{
        disciplinas = (Disciplina) application.getAttribute("disciplinas");
    }catch(Exception e){}
    



    
    
    ArrayList<Disciplina> list = disciplinas.getList();
    ArrayList<Disciplina> newList = new ArrayList();
    int count = 0;
    for(int i = 0; i < list.size(); i++){
        try{
            float nota = Float.parseFloat(request.getParameter(i+""));
            
            Disciplina disciplin = list.get(i);
            
            disciplin.setNota(nota);
            
            newList.add(disciplin);
            count++;
        }catch(Exception e){
            
        }
    }
    
if(count == list.size()){
    disciplinas.setList(newList);
    
    application.setAttribute("disciplinas", disciplinas);
}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            
            <table border="1">
                <%
                for(int i = 0; i < disciplinas.getList().size(); i++){
                %>
                <tr>
                <td><% out.print(disciplinas.getList().get(i).getNome() ); %></td> 
                <td><% out.print(disciplinas.getList().get(i).getEmenta() ); %></td> 
                <td><% out.print(disciplinas.getList().get(i).getCiclo() ); %></td> 
                <td>   <input type="text" name="<%= i%>" value="<% out.print(disciplinas.getList().get(i).getNota() ); %>">  </td>
              
                </tr>
                
                <% } %>
            </table>
            <input type="submit" value="Aplicar alterações">
        </form>
    </body>
</html>
