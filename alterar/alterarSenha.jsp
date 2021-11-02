<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Dados Alterados</title>
    </head>
    <body>
        <h2>Alteração dos Dados</h2>
        <%            
             String sql; 
                sql = "UPDATE clientes SET senha = ? WHERE cpf = ?";
                
                pstm = con.prepareStatement(sql);
                pstm.setString(1,request.getParameter("senha"));
                pstm.setString(2,request.getParameter("cpf"));
                
                int retorno = pstm.executeUpdate();
                if (retorno > 0){%>
                <script>
                    alert("Senha Modificada Com Sucesso ! Efetue o Login Novamente !");
                    window.location = "../paginas/login.jsp";
                </script>
                    <%
                }
                else out.print("Erro. Tente novamente");
                pstm.close();
                con.close();
        %>
    </body>
    <br/> <br/>
    <a href="../paginas/login.jsp">Voltar</a> 
</html>