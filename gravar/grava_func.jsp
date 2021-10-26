<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
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
        <h1>Cadastro de Funcionários no Banco de Dados </h1>
        
        <%            
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String sql = "";
            try {
                
                sql = "INSERT INTO func (nome,cpf,email,celular,dt_nascimento,endereco,cep,dt_adm,cargo,salario,login,senha) VALUES ('"
                         + request.getParameter("nome") + "','"
                         + request.getParameter("cpf") + "','"
                         + request.getParameter("email") + "',"
                         + request.getParameter("celular") + ",'"
                         + request.getParameter("dt_nascimento") + "','"
                         + request.getParameter("endereco") + "',"
                         + request.getParameter("cep") + ",'"
                         + request.getParameter("dt_adm") + "','"
                         + request.getParameter("cargo") + "',"
                         + request.getParameter("salario") + ",'"
                         + request.getParameter("login") + "','"
                         + request.getParameter("senha") + "')";
                int retorno = stm.executeUpdate(sql);
                if (retorno > 0) {
                   // out.print("<p>Dados do Funcionário Gravados Com Sucesso !</p>");
                    //out.print("<a href=../paginas/funcionario.jsp> <input type='submit' value='Voltar'> </a>");
                %>
          <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script> 
                Swal.fire({
                title: 'Cadastro do Funcionário Efetuado Com Sucesso!',
                text: 'Bom Trabalho!!',
                icon: 'sucess',
                confirmButtonText: '<a href="../paginas/funcionario.jsp"> OK </a> ' 
                });
                
              </script>  
        
        
        <%} else {
                    //out.print("<p>Erro. Tente novamente.</p>");
                    //out.print("<a href=../cadastros/cdsfunc.jsp> <input type='submit' value='Voltar'> </a>");
                %>
          <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script> 
                Swal.fire({
                title: 'Cadastro Não Efetuado!',
                text: 'Por Favor Verifique as Informações',
                icon: 'error',
                confirmButtonText: '<a href="../cadastros/cdsfunc.jsp"> OK </a> ' 
                });
                
                 </script>  
              
              <%}
            } catch (Exception ex) {
                out.print( ex.getMessage());
                //ex.printStackTrace();
                
                out.print("<br> <a href=../cadastros/cdsfunc.jsp> <input type='submit' value='Voltar'> </a>");
            }
            finally { //parte finally, sempre será executada
                if(stm!=null)stm.close();
                if(con!=null)con.close();                
            }
        %>
        
    </body>
</html>
