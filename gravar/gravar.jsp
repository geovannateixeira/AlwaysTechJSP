<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="../conecta.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="../styles/gravar.css">
        <title>Cadastro</title>
        <link rel="icon" href="../icons/logo.png">
    </head>
    <body>
        <h1>Cadastro no Sistema </h1>
        
         <%            
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String sql = "";
            try {
                //Comando SQL para inserir um novo registro no BD:
                sql = "INSERT INTO clientes (nome,cpf,email,celular,dt_nascimento,endereco,bairro,cidade,cep,login,senha) VALUES ('"
                         + request.getParameter("nome") + "','"
                         + request.getParameter("cpf") + "','"
                         + request.getParameter("email") + "',"
                         + request.getParameter("celular") + ",'"
                         + request.getParameter("dt_nascimento") + "','"
                         + request.getParameter("endereco") + "','"
                         + request.getParameter("bairro") + "','"
                         + request.getParameter("cidade") + "',"
                         + request.getParameter("cep") + ",'"
                        + request.getParameter("login") + "','"
                        + request.getParameter("senha") + "')";
                //chamamos o método para gravar dados no banco
                int retorno = stm.executeUpdate(sql);
                if (retorno > 0) {
                    /*out.print("<p>Dados Cadastrados Com Sucesso !</p>");
                    out.print("<a href=../paginas/login.jsp> <input type='submit' value='Voltar'> </a>");*/
                    
                  %>
      <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script> 
                Swal.fire({
                title: 'Cadastro Efetuado Com Sucesso!',
                text: 'Boas Compras!!',
                icon: 'sucess',
                confirmButtonText: '<a href="../paginas/login.jsp"> OK </a> ' 
                });
                
              </script>  
        
        <%
                    
                } else {
                    /*out.print("<p>Erro. Tente novamente.</p>");
                    out.print("<a href=../cadastros/cadastro.jsp> <input type='submit' value='Voltar'> </a>");*/
        %> 
         <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script> 
                Swal.fire({
                title: 'Cadastro Não Efetuado!',
                text: 'Por Favor Verifique as Informações',
                icon: 'error',
                confirmButtonText: '<a href="../cadastros/cadastro.jsp"> OK </a> ' 
                });
                
                 </script>  
              <%
                }
            } catch (Exception ex) {
                 out.print( ex.getMessage());
               /* out.print("<a href=../cadastros/cadastro.jsp> <input type='submit' value='Voltar'> </a>");*/
                %>
              
                <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script> 
                Swal.fire({
                title: 'Cadastro Não Efetuado!',
                text: 'Por Favor Verifique as Informações',
                icon: 'error',
                confirmButtonText: '<a href="../cadastros/cadastro.jsp"> OK </a> ' 
                });
                 </script>  
             <%
            }
            finally { //parte finally, sempre será executada
                if(stm!=null)stm.close();
                if(con!=null)con.close();                
            }
        %>
        <script src = " https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script> 
    </body>
</html>
