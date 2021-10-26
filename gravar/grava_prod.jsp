<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../conecta.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../styles/gravar.css">
        <title>Cadastro</title>
        <link rel="icon" href="../icons/logo.png">
    </head>
    <body>
        
        <h1>Cadastro no Banco de Dados </h1>
        
         <%    
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String sql = "";
            try {
             String prod =  request.getParameter("prods");
               
               out.print(prod);
               
               String nome = request.getParameter("nome_prod");
               float preco = Float.parseFloat(request.getParameter("preco"));
               String desc = request.getParameter("descricao");
               int qtd = Integer.parseInt(request.getParameter("qtd"));
               
              sql = "INSERT INTO "+ prod +" (nome_prod,preco,descricao,qtd) VALUES ('"
                         + nome + "',"
                         + preco + ",'"
                         + desc + "',"
                         + qtd + ")";
               
               
                //sql = "INSERT INTO "+ prod +" (nome_prod,preco,descricao,qtd) VALUES (?, ?, ?, ? )";
                //pstm = con.prepareStatement(sql);
                //pstm.setString(1, request.getParameter("prods"));
               // pstm.setString(1, prod);
               // pstm.setFloat(2, Float.parseFloat(request.getParameter("preco")));
                //pstm.setString(3, request.getParameter("descricao"));
                //pstm.setInt(4, Integer.parseInt(request.getParameter("qtd")));
                
                
                int retorno = stm.executeUpdate(sql);
                if (retorno > 0) {
                    //out.print("<p>Dados do Produto Gravados Com Sucesso !</p>");
                    //out.print("<a href=../paginas/funcionario.jsp> <input type='submit' value='Voltar'> </a>");
                %>
         <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script> 
                Swal.fire({
                title: 'Produto Cadastrado Com Sucesso!',
                icon: 'sucess',
                confirmButtonText: '<a href="../paginas/funcionario.jsp"> OK </a> ' 
                });
                
              </script> 
        
        <%} else {
                   // out.print("<p>Erro. Tente novamente.</p>");
                    //out.print("<a href=../cadastros/cdsprod.jsp> <input type='submit' value='Voltar'> </a>");
              %>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script> 
                Swal.fire({
                title: 'Cadastro Não Efetuado!',
                text: 'Por Favor Verifique as Informações',
                icon: 'error',
                confirmButtonText: '<a href="../cadastros/cdsprod.jsp"> OK </a> ' 
                });
                
                 </script>  
              
              <%}  
            } catch (Exception ex) {
                out.print("<br/> Comando SQL: " + ex + sql + "</p>");
                out.print("<a href=../cadastros/cdsprod.jsp> <input type='submit' value='Voltar'> </a>");
            }
            finally { //parte finally, sempre será executada
                if(stm!=null)stm.close();
                if(con!=null)con.close();                
            }
        %>
        
    </body>
</html>
