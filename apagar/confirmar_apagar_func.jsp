<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conecta.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro de aluno</title>
        <meta charset="utf-8">  
       <link rel="stylesheet" href="../styles/estilos.css" type="text/css" />
        
    </head>
    <body>
        
<%
    String login = (String) session.getAttribute("loginADM");
    if (login == null){
        response.sendRedirect("../paginas/login.jsp");
    } 
%>
       
        <h2>Deseja Realmente Excluir Esse Funcionário do Banco de Dados?</h2> <br/>
        <%
           String nome = request.getParameter("nome");
           String cargo = request.getParameter("cargo");
        %>
        <b> Nome: </b> <%= nome %> <br/>
        <b> Cargo:</b> <%= cargo%> <br/>
        
        <br/><br/>
        <a href="../apagar/apagar_func.jsp?nome=<%=nome%>&cargo=<%=cargo%>"> <input type="submit" value="Apagar"> </a> &nbsp;&nbsp;
        <a href="../listar/lista_func.jsp"><input type="submit" value="Cancelar"> </a>

    </body>
</html>
