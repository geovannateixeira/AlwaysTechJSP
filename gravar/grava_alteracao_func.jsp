<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="../styles/header.css">
        <title>Gravar Produto Alterado.</title>
         <link rel="icon" href="../icons/logo.png">
            
    </head>
    <body>
       
        <header> 
             <script src="../scripts/headerGenerate.js"> </script>
        </header>
        
        <h1>Alteração de Informações</h1>
        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE func SET nome = ?,email = ?,celular = ?,cargo = ?,"
                        + " salario =? WHERE nome = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome"));
                pstm.setString(2, request.getParameter("email"));
                pstm.setInt(3, Integer.parseInt(request.getParameter("celular")));
                pstm.setString(4, request.getParameter("cargo"));
                pstm.setFloat(5, Float.parseFloat(request.getParameter("salario")));
                pstm.setString(6, request.getParameter("nome"));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_func.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../listar/lista_func.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

                pstm.close();
                con.close();    
            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="./listar/lista_func.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>
    </body>
</html>
