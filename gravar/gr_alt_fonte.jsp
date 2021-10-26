<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="../styles/header.css">
        <title>Gravar No Banco de Dados o Produto Alterado.</title>
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
                sql = "UPDATE fonte SET nome_prod = ?,potencia = ?,certificacao = ?,"
                        + " preco = ?, qtd = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("potencia"));
                pstm.setString(3, request.getParameter("certificacao"));
                pstm.setFloat(4, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(5, Integer.parseInt(request.getParameter("qtd")));
                pstm.setString(6, request.getParameter("nome_prod"));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 

                    <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

                pstm.close();
                con.close();    
            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>