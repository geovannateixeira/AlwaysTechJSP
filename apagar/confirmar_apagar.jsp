<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conecta.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Excluir Funcionário</title>
        <link rel="icon" href="../icons/logo.png">
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
        
        <h2>Confirmar a Eliminação no Banco de Dados?</h2>
        <%
          String nome = request.getParameter("nome");
          String cpf = request.getParameter("cpf");
        %>
        
        Nome: <%= nome %> <br/>
        CPF: <%= cpf %> <br/>
        
        <br/><br/>
        <a href="../apagar/apagar_dados.jsp?nome=<%=nome%>&cpf=<%=cpf%>"><input type="submit" value="Apagar"></a> &nbsp;&nbsp;
        <a href="../listar/lista.jsp"><input type="submit" value="Cancelar"></a>

    </body>
</html>
