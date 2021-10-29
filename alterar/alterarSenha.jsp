<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Aluno alterado</title>
        <link rel="stylesheet" href="estilos.css" type="text/css" />
    </head>
    <body>
        <h2>Alteração dos dados do aluno</h2>
        <%            
             String sql; 
                sql = "UPDATE clientes SET senha = ? WHERE cpf = ?";
                
                pstm = con.prepareStatement(sql);
                pstm.setString(1,request.getParameter("senha"));
                pstm.setString(2,request.getParameter("cpf"));
                
                int retorno = pstm.executeUpdate();
                if (retorno > 0){
                out.print("Dados alterados com sucesso");
                response.sendRedirect("../paginas/login.jsp");
                }
                else out.print("Erro. Tente novamente");
                pstm.close();
                con.close();
        %>
    </body>
    <br/> <br/>
    <a href="paginas/login.jsp">Voltar</a> 
</html>