<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conecta.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro de aluno</title>
        <meta charset="utf-8">  
        <link rel="stylesheet" href="../styles/estilos.css" type="text/css" />
        <style>
            .rotulo {
                float: left;
                width: 80px;
            }
        </style>
    </head>
    <body>
        
<%
    String login = (String) session.getAttribute("loginADM");
    if (login == null){
        response.sendRedirect("../paginas/login.jsp");
    } 
%>
        
        <h2>Confirmar a Eliminação no Banco de Dados?</h2>
        <%
           String cod_prod = request.getParameter("cod_prod");
           String nome_prod = request.getParameter("nome_prod");
          
        %>
        Código do Produto: <%= cod_prod %> <br/>
        Nome: <%= nome_prod %> <br/>
        
        
        <br/><br/>
        <a href="../apagar/apagar_produtos.jsp?cod_prod=<%=cod_prod%>&nome_prod=<%=nome_prod%>"> <input type="submit" value="Apagar"> </a> &nbsp;&nbsp;
        <a href="../listar/lista_prod.jsp"> <input type="submit" value="Cancelar"> </a>

    </body>
</html>
