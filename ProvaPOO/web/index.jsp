<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="POO.Prova.Disciplina" %>
<%@page import="java.util.Set"%>

<%

    
%>
<html>
    <head>
        <title>TODO supply a title</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8"/>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
       <jsp:include page="WEB-INF/jspf/menu.jspf" />
        <div class="myInfo">
        <h3>
            Disciplinas matriculadas : <%= Disciplina.getList().size()  %>
            <br>
            
            Nome: Raphael de Oliveira Gon&ccedilalves<br>
            RA: 1290481913053<br>
            </h3>
             </div>
            
        </div>
    </body>
</html>