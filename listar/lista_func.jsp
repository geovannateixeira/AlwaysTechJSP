<%@page import="java.security.MessageDigest"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
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
        
         <form class="form_buscar" action="lista_func.jsp" method="post">
            <p> Digite o Nome do Funcionário: <input type="txt" name="buscar" size="50">
               
                <input id="btn" type="submit" value="Buscar">
            </p>
        </form>
        
         <%   
            boolean achou;
           
            try {
            ResultSet rs;
            String sql;
            sql = "SELECT * FROM func WHERE nome LIKE ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + request.getParameter("buscar") + "%");
            rs = pstm.executeQuery();
            achou = false;
               
            while (rs.next()) {
               if(achou == false){
                    
            %>
              <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="150"><strong>NOME</strong></th>
                <th width="150"><strong>CPF</strong></th>
                <th width="180"><strong>EMAIL</strong></th>
                <th width="110"><strong>CELULAR</strong></th>
                <th width="110"><strong>CARGO</strong></th>
                <th width="100"><strong>SALARIO</strong></th>
                <th width="90"><strong>ALTERAR</strong></th>
                <th width="90"><strong>ELIMINAR</strong></th>
            </tr>
            <%
              }
                achou = true;
            %>
    
            <tr>
           <td><%= rs.getString("nome")%></td>
                <td><%= rs.getString("cpf")%></td>
                <td><%= rs.getString("email")%></td>
                <td><%= rs.getString("celular")%></td>
                <td><%= rs.getString("cargo")%></td>
                <td><%= rs.getFloat("salario")%></td>
      
       <td><a href="../alterar/alterar_func.jsp?cpf=<%= rs.getString("cpf")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
                
         <td><a href="../apagar/confirmar_apagar_func.jsp?nome=<%= rs.getString("nome")%>&cargo=<%= rs.getString("cargo")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
        </a></td>    
 
             
       </tr>
        <%              
            }
            }
            catch(Exception ex){
                out.println(ex.getMessage());
               %>
                  <p>Erro tentando processar o banco de dados.</p>
               <%
            }            
            %>
            </table>
            <%
               
            %>
         <br/><br/>
        <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar"> </a> 
          <br/> <br/>
      
        <h1 class="ttl_table">Dados dos Funcionários no Sistema</h1>
        <br/>
        <table  border="1" cellspacing="0" cellpadding="2">
            <tr>
                <th width="200"><strong>NOME</strong></th>
                <th width="170"><strong>CPF</strong></th>
                <th width="170"><strong>EMAIL</strong></th>
                <th width="170"><strong>CELULAR</strong></th>
                <th width="170"><strong>DATA DE NASCIMENTO</strong></th>
                <th width="170"><strong>ENDEREÇO</strong></th>
                <th width="170"><strong>CEP</strong></th>
                <th width="170"><strong>DATA DE ADMISSÃO</strong></th>
                <th width="170"><strong>CARGO</strong></th>
                <th width="170"><strong>SALÁRIO</strong></th>
                <th width="170"><strong>LOGIN</strong></th>
                <th width="170"><strong>ALTERAR</strong></th>
                <th width="170"><strong>ELIMINAR</strong></th>
            </tr>
            
            <%
                ResultSet rs;
                String sql;
                try {
                    sql = "SELECT * FROM func ORDER BY nome";
                    pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    while (rs.next()) {                                   
            %>
            <tr>     
                <td><%= rs.getString("nome")%></td>
                <td><%= rs.getString("cpf")%></td>
                <td><%= rs.getString("email")%></td>
                <td><%= rs.getString("celular")%></td>
                <td><%= rs.getDate("dt_nascimento")%></td>
                <td><%= rs.getString("endereco")%></td>
                <td><%= rs.getInt("cep")%></td>
                <td><%= rs.getDate("dt_adm")%></td>
                <td><%= rs.getString("cargo")%></td>
                <td><%= rs.getFloat("salario")%></td>
                <td><%= rs.getString("login")%></td>
              
            <td><a href="../alterar/alterar_func.jsp?nome=<%= rs.getString("nome")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
               
       <td><a href="../apagar/confirmar_apagar_func.jsp?nome=<%= rs.getString("nome")%>&cargo=<%= rs.getString("cargo")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
        </a></td>    
            </tr>
            <%
                    }
                    rs.close();
                    pstm.close();
                    con.close();
                } catch (Exception ex) {
                   
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