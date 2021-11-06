<%@page import="java.security.MessageDigest"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conecta.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../styles/lista.css" type="text/css" />
        <link rel="stylesheet" href="../styles/header.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="../styles/footer.css">
        <title>Dados</title>
         <link rel="icon" href="../icons/logo.png">
    </head>
    <body>
  <%
    String login = (String) session.getAttribute("loginADM");
    if (login == null){
        response.sendRedirect("../paginas/login.jsp");
    } 
%>
        <header> 
              <script src="../scripts/headerGenerate.js"> </script>
        </header>
        
        <h1 class="ttl_table_user"> Usuários Cadastrados no Sistema</h1>
        
        <table   border="1" cellspacing="0" cellpadding="2">
            <tr>
                <th width="200"><strong>NOME</strong></th>
                <th width="170"><strong>CPF</strong></th>
                <th width="170"><strong>EMAIL</strong></th>
                <th width="170"><strong>CELULAR</strong></th>
                <th width="170"><strong>DATA DE NASCIMENTO</strong></th>
                <th width="170"><strong>ENDEREÇO</strong></th>
                <th width="170"><strong>CEP</strong></th>
                <th width="170"><strong>LOGIN</strong></th>
                <th width="170"><strong>ELIMINAR</strong></th>
            </tr>
            
            <%     
                 ResultSet rs;
                String sql;
                try {
                    sql = "SELECT * FROM clientes ORDER BY nome";
                    rs = stm.executeQuery(sql);
                    while (rs.next()) { 
                        String nome = rs.getString("nome");
                        String cpf = rs.getString("cpf");
                        String email = rs.getString("email");
                        String celular  = rs.getString("celular");                      
                        Date dt_nascimento = rs.getDate("dt_nascimento");
                        String endereco = rs.getString("endereco");
                        int cep = rs.getInt("cep");
                        String log = rs.getString("login");                                            
            %>
            <tr>     
                <td><%= nome%></td>
                <td><%= cpf%></td>
                <td><%= email%></td>
                <td><%= celular%></td>
                <td><%= dt_nascimento%></td>
                <td><%= endereco%></td>
                <td><%= cep%></td>
                <td><%= log%></td>
               
                <td><a href="../apagar/confirmar_apagar.jsp?nome=<%=nome%>&cpf=<%=cpf%>"> Deletar </a></td>
            </tr>
            <%
                    }
                    rs.close();
                    stm.close();
                    con.close();
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
            %> 
        </table>

        <br/><br/>
         <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar"> </a> 
            <footer>
        <script src="../scripts/footerGenerate.js"></script>
     </footer> 
    </body>
</html>