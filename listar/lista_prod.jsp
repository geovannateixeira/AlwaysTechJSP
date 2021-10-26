<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conectar_1.jsp"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../styles/lista.css" type="text/css" />
         <link rel="stylesheet" href="../styles/header.css">
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
        
        
        <form class="form_buscar" action="lista_prod.jsp" method="post">
            <p> Digite o Nome do Produto: <input type="txt" name="buscar" size="50">
               
                <input id="btn" type="submit" value="Buscar">
            </p>
        </form>
        
       <%   
            boolean achou;
            try {
            ResultSet rs;
            String sql;
            sql = "SELECT * FROM computador WHERE nome_prod LIKE ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + request.getParameter("buscar") + "%");
            rs = pstm.executeQuery();
            achou = false;
            while (rs.next()) {
                 if(achou == false){
                    
            %>
        
          <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="100"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="100"><strong>PREÇO</strong></th>
                <th width="100"><strong>QUANTIDADE</strong></th>
                <th width="100"><strong>IMAGEM</strong></th>
                <th width="100"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="100"><strong>ELIMINAR</strong></th>
            </tr>
       
       <%
              }
            achou = true;
            %>
         <tr>
           <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
      
       <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
            
          </table> <br>
           <%   
                try {
                ResultSet rs;
                String sql;
                sql = "SELECT * FROM notebook WHERE nome_prod LIKE ? ";
                pstm = con.prepareStatement(sql);
                pstm.setString(1, "%" + request.getParameter("buscar") + "%");
                rs = pstm.executeQuery();
                achou = false;
                while (rs.next()) {
                 if(achou == false){
                    
            %>
        
          <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="100"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="100"><strong>PREÇO</strong></th>
                <th width="100"><strong>QUANTIDADE</strong></th>
                <th width="100"><strong>IMAGEM</strong></th>
                <th width="100"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="100"><strong>ELIMINAR</strong></th>
            </tr>
       
       <%
              }
            achou = true;
            %>
         <tr>
           <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
      
       <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
             </table><br>
       
        <%   
            try {
            ResultSet rs;
            String sql;
            sql = "SELECT * FROM fonte WHERE nome_prod LIKE ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + request.getParameter("buscar") + "%");
            rs = pstm.executeQuery();
            achou = false;
            while (rs.next()) {
                 if(achou == false){
                    
            %>
        
          <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="100"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="100"><strong>PREÇO</strong></th>
                <th width="100"><strong>QUANTIDADE</strong></th>
                <th width="100"><strong>IMAGEM</strong></th>
                <th width="100"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="100"><strong>ELIMINAR</strong></th>
            </tr>
       
       <%
              }
            achou = true;
            %>
         <tr>
           <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
      
       <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
             </table><br>
            
       <%   
            try {
            ResultSet rs;
            String sql;
            sql = "SELECT * FROM hdd WHERE nome_prod LIKE ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + request.getParameter("buscar") + "%");
            rs = pstm.executeQuery();
            achou = false;
            while (rs.next()) {
                 if(achou == false){
                    
            %>
        
          <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="100"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="100"><strong>PREÇO</strong></th>
                <th width="100"><strong>QUANTIDADE</strong></th>
                <th width="100"><strong>IMAGEM</strong></th>
                <th width="100"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="100"><strong>ELIMINAR</strong></th>
            </tr>
       
       <%
              }
            achou = true;
            %>
         <tr>
           <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
      
       <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
                  </table><br>
            
       <%   
            try {
            ResultSet rs;
            String sql;
            sql = "SELECT * FROM placa_mae WHERE nome_prod LIKE ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + request.getParameter("buscar") + "%");
            rs = pstm.executeQuery();
            achou = false;
            while (rs.next()) {
                 if(achou == false){
                    
            %>
        
          <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="100"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="100"><strong>PREÇO</strong></th>
                <th width="100"><strong>QUANTIDADE</strong></th>
                <th width="100"><strong>IMAGEM</strong></th>
                <th width="100"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="100"><strong>ELIMINAR</strong></th>
            </tr>
       
       <%
              }
            achou = true;
            %>
         <tr>
           <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
      
       <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
             </table><br>
            
       <%   
            try {
            ResultSet rs;
            String sql;
            sql = "SELECT * FROM placa_video WHERE nome_prod LIKE ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + request.getParameter("buscar") + "%");
            rs = pstm.executeQuery();
            achou = false;
            while (rs.next()) {
                 if(achou == false){
                    
            %>
        
          <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="100"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="100"><strong>PREÇO</strong></th>
                <th width="100"><strong>QUANTIDADE</strong></th>
                <th width="100"><strong>IMAGEM</strong></th>
                <th width="100"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="100"><strong>ELIMINAR</strong></th>
            </tr>
       
       <%
              }
            achou = true;
            %>
         <tr>
           <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
      
       <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
             </table><br>
            
       <%   
            try {
            ResultSet rs;
            String sql;
            sql = "SELECT * FROM processador WHERE nome_prod LIKE ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + request.getParameter("buscar") + "%");
            rs = pstm.executeQuery();
            achou = false;
            while (rs.next()) {
                 if(achou == false){
                    
            %>
        
          <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="100"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="100"><strong>PREÇO</strong></th>
                <th width="100"><strong>QUANTIDADE</strong></th>
                <th width="100"><strong>IMAGEM</strong></th>
                <th width="100"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="100"><strong>ELIMINAR</strong></th>
            </tr>
       
       <%
              }
            achou = true;
            %>
         <tr>
           <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
      
       <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
             </table><br>
       
       <%   
            try {
            ResultSet rs;
            String sql;
            sql = "SELECT * FROM ram WHERE nome_prod LIKE ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + request.getParameter("buscar") + "%");
            rs = pstm.executeQuery();
            achou = false;
            while (rs.next()) {
                 if(achou == false){
                    
            %>
        
          <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="100"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="100"><strong>PREÇO</strong></th>
                <th width="100"><strong>QUANTIDADE</strong></th>
                <th width="100"><strong>IMAGEM</strong></th>
                <th width="100"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="100"><strong>ELIMINAR</strong></th>
            </tr>
       
       <%
              }
            achou = true;
            %>
         <tr>
           <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
      
       <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
                  </table><br>
            
       <%   
            try {
            ResultSet rs;
            String sql;
            sql = "SELECT * FROM ssd WHERE nome_prod LIKE ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + request.getParameter("buscar") + "%");
            rs = pstm.executeQuery();
            achou = false;
            while (rs.next()) {
                 if(achou == false){
                    
            %>
        
          <table  border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="100"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="100"><strong>PREÇO</strong></th>
                <th width="100"><strong>QUANTIDADE</strong></th>
                <th width="100"><strong>IMAGEM</strong></th>
                <th width="100"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="100"><strong>ELIMINAR</strong></th>
            </tr>
       
       <%
              }
            achou = true;
            %>
         <tr>
           <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
      
       <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
        <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar"> </a> 
          <br/> <br/>
          
        <div class="tabelas">
        <h1 class="ttl_table">Computadores em Estoque</h1>
        
        <table   border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="80"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="80"><strong>ARMAZENAMENTO</strong></th>
                <th width="80"><strong>PROCESSADOR</strong></th>
                <th width="80"><strong>MEMORIA</strong></th>
                <th width="90"><strong>PLACA VIDEO</strong></th>
                <th width="100"><strong>SO</strong></th>
                <th width="80"><strong>FONTE</strong></th>
                <th width="90"><strong>PREÇO</strong></th>
                <th width="90"><strong>QUANTIDADE</strong></th>
                <th width="40"><strong>IMAGEM</strong></th>
                <th width="90"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="90"><strong>ALTERAR</strong></th>
                <th width="90"><strong>ELIMINAR</strong></th>
            </tr>
            
          <%
              ResultSet rs;
              String sql;
             
                try {
                    sql = "SELECT * FROM computador ORDER BY cod_prod";
                    pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    while (rs.next()) { 
            %>
            <tr>     
                <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getString("armazenamento")%></td>
                <td><%= rs.getString("processador")%></td>
                <td><%= rs.getString("memoria_ram")%></td>
                <td><%= rs.getString("placa_video")%></td>
                <td><%= rs.getString("so")%></td>
                <td><%= rs.getString("fonte")%></td>
                <td><%= rs.getFloat("preco")%> </td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
                      
     <td><a href="../alterar/alterar_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
 </a></td>  
 
            </tr>
            <%
                    }
                    
                } catch (Exception ex) {
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
            %> 
        </table>
        <br/> <br/>
        
        <h1 class="ttl_table">Notebooks em Estoque</h1>
        
        <table border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="40"><strong>CÓDIGO</strong></th>
                <th width="40"><strong>NOME</strong></th>
                <th width="40"><strong>DESCRIÇÃO</strong></th>
                <th width="50"><strong>HDD / SSD GB</strong></th>
                <th width="40"><strong>PROCESSADOR</strong></th>
                <th width="80"><strong>MEMÓRIA</strong></th>
                <th width="40"><strong>TAM_TELA</strong></th>
                <th width="40"><strong>PLACA MÃE</strong></th>
                <th width="40"><strong>PLACA VIDEO</strong></th>
                <th width="40"><strong>SO</strong></th>
                <th width="40"><strong>REDE</strong></th>
                <th width="40"><strong>BATERIA</strong></th>
                <th width="80"><strong>PREÇO </strong></th>
                <th width="40"><strong>QUANTD</strong></th>
                <th width="40"><strong>IMG</strong></th>
                <th width="40"><strong>QTD VENDIDO</strong></th>
                <th width="40"><strong>ALTERAR</strong></th>
                <th width="40"><strong>ELIMINAR</strong></th>
            </tr>
                 <%   
                    try{
                    sql = "SELECT * FROM notebook ORDER BY cod_prod";
                    pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    
                    while(rs.next()){
                        
                  %>
                <tr>     
                    <td><%= rs.getInt("cod_prod")%></td>
                    <td><%= rs.getString("nome_prod")%></td>
                    <td><%= rs.getString("descricao")%></td>
                    <td><%= rs.getString("armazenamento")%></td>
                    <td><%= rs.getString("processador")%></td>
                    <td><%= rs.getString("memoria_ram")%></td>
                    <td><%= rs.getString("tamanho_tela")%></td>
                    <td><%= rs.getString("placa_mae")%></td>
                    <td><%= rs.getString("placa_video")%></td>
                    <td><%= rs.getString("so")%></td>
                    <td><%= rs.getString("wireless_rede")%></td>
                    <td><%= rs.getString("bateria")%></td>
                    <td><%= rs.getFloat("preco")%></td>
                    <td><%= rs.getInt("qtd")%></td>
                    <td><%= rs.getString("imagem")%></td>
                    <td><%= rs.getInt("qtd_vendido")%></td>
  
                
          <td><a href="../alterar/alterar_note.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
            <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
 </a></td>  
 
       
       
                </tr>
              <%
                    }
                   
                } catch (Exception ex) {
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
            %> 
        </table>
        
        <br/> <br/>
        
        <h1 class="ttl_table">Fontes em Estoque</h1>
        
        <table border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="80"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="80"><strong>POTENCIA</strong></th>
                <th width="80"><strong>VOLTAGEM</strong></th>
                <th width="80"><strong>CERTIFICAÇÃO</strong></th>
                <th width="80"><strong>PINOS</strong></th>
                <th width="90"><strong>PREÇO</strong></th>
                <th width="90"><strong>QUANTIDADE</strong></th>
                <th width="40"><strong>IMAGEM</strong></th>
                <th width="90"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="90"><strong>ELIMINAR</strong></th>
            </tr>
            
            
            
            <%  
                try {
                    sql = "SELECT * FROM fonte ORDER BY cod_prod";
                      pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    while (rs.next()) { 
            %>
            <tr>     
                <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getString("potencia")%></td>
                <td><%= rs.getString("voltagem")%></td>
                <td><%= rs.getString("certificacao")%></td>
                <td><%= rs.getString("pinos")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
                 
                
      <td><a href="../alterar/alterar_fonte.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
         <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
 </a></td> 
 
            </tr>
            
            
            <%
                    }
                   
                } catch (Exception ex) {
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
            %> 
        </table>
        
         <br/> <br/>
        
        <h1 class="ttl_table">HDD em Estoque</h1>
        
        <table border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="80"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="80"><strong>GB</strong></th>
                <th width="80"><strong>MODELO</strong></th>
                <th width="80"><strong>RPM</strong></th>    
                <th width="90"><strong>PREÇO</strong></th>
                <th width="90"><strong>QUANTIDADE</strong></th>
                <th width="40"><strong>IMAGEM</strong></th>
                <th width="90"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="90"><strong>ELIMINAR</strong></th>
            </tr>
            
            
            
            <%  
                try {
                    sql = "SELECT * FROM hdd ORDER BY cod_prod";
                      pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    while (rs.next()) {
            %>
            <tr>     
                <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getString("gb")%></td>
                <td><%= rs.getString("modelo")%></td>
                <td><%= rs.getString("rpm")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
                
 
      <td><a href="../alterar/alterar_hdd.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
         <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
 </a></td> 
 
            </tr>
            <%
                    }
                    
                } catch (Exception ex) {
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
            %> 
        </table>
        
         <br/> <br/>
        
        <h1 class="ttl_table">Placa Mãe em Estoque</h1>
        
        <table border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="80"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="80"><strong>TIPO CPU</strong></th>
                <th width="80"><strong>CHIPSET</strong></th>
                <th width="80"><strong>SLOTS RAM</strong></th> 
                <th width="80"><strong>VIDEO INTEGRADO</strong></th> 
                <th width="80"><strong>USB</strong></th> 
                <th width="80"><strong>WIFI</strong></th>
                <th width="80"><strong>BIOS</strong></th> 
                <th width="90"><strong>PREÇO</strong></th>
                <th width="90"><strong>QUANTIDADE</strong></th>
                <th width="40"><strong>IMAGEM</strong></th>
                <th width="90"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="90"><strong>ELIMINAR</strong></th>
            </tr>
            
            
            
            <%    
                try {
                    sql = "SELECT * FROM placa_mae ORDER BY cod_prod";
                    pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    while (rs.next()) {
            %>
            <tr>     
                <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getString("type_cpu")%></td>
                <td><%= rs.getString("chipset")%></td>
                <td><%= rs.getString("slots_ram")%></td>
                <td><%= rs.getString("video_integrado")%></td>
                <td><%= rs.getString("usb")%></td>
                <td><%= rs.getString("wifi")%></td>
                <td><%= rs.getString("bios")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
               
 
      <td><a href="../alterar/alterar_pl_mae.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
         <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
 </a></td> 
 
            </tr>
            <%
                    }
                    
                } catch (Exception ex) {
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
            %> 
        </table>
        
          <br/> <br/>
        
        <h1 class="ttl_table">Placa de Vídeo em Estoque</h1>
        
        <table border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="80"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="80"><strong>GB</strong></th>
                <th width="80"><strong>CLOCK</strong></th>
                <th width="80"><strong>CONEXÃO</strong></th> 
                <th width="80"><strong>PINOS</strong></th>
                <th width="90"><strong>PREÇO</strong></th>
                <th width="90"><strong>QUANTIDADE</strong></th>
                <th width="40"><strong>IMAGEM</strong></th>
                <th width="90"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="90"><strong>ELIMINAR</strong></th>
            </tr>
            
            
            
            <%   
                try {
                    sql = "SELECT * FROM placa_video ORDER BY cod_prod";
                    pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    while (rs.next()) {
            %>
            <tr>     
                <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getString("gb")%></td>
                <td><%= rs.getString("clock")%></td>
                <td><%= rs.getString("conexao")%></td>
                <td><%= rs.getString("pinos")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
                
 
          <td><a href="../alterar/alterar_pl_video.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
         <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
 </a></td> 
 
            </tr>
            <%
                    }
                    
                } catch (Exception ex) {
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
            %> 
        </table>
        
           <br/> <br/>
        
        <h1 class="ttl_table">Processador em Estoque</h1>
        
        <table border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="80"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="80"><strong>MODELO</strong></th>
                <th width="80"><strong>MARCA</strong></th>
                <th width="80"><strong>GHZ</strong></th> 
                <th width="80"><strong>SOQUETE</strong></th>
                <th width="90"><strong>PREÇO</strong></th>
                <th width="90"><strong>QUANTIDADE</strong></th>
                <th width="40"><strong>IMAGEM</strong></th>
                <th width="90"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="90"><strong>ELIMINAR</strong></th>
            </tr>
            
            
            
            <%             
                
                try {
                    sql = "SELECT * FROM processador ORDER BY cod_prod";
                      pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    while (rs.next()) {
            %>
            <tr>     
                <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getString("modelo")%></td>
                <td><%= rs.getString("marca")%></td>
                <td><%= rs.getString("ghz")%></td>
                <td><%= rs.getString("soquete")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
                
 
          <td><a href="../alterar/alterar_proc.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
       
         <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
 </a></td> 
 
            </tr>
            <%
                    }
                } catch (Exception ex) {
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
            %> 
        </table>
        
        <br/> <br/>
        
        <h1 class="ttl_table">Memória RAM em Estoque</h1>
        
        <table border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="80"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="80"><strong>GB</strong></th>
                <th width="80"><strong>TECNOLOGIA</strong></th>
                <th width="80"><strong>FREQUENCIA</strong></th> 
                <th width="90"><strong>PREÇO</strong></th>
                <th width="90"><strong>QUANTIDADE</strong></th>
                <th width="40"><strong>IMAGEM</strong></th>
                <th width="90"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="90"><strong>ELIMINAR</strong></th>
            </tr>
            
            
            
            <%             
                
                try {
                    sql = "SELECT * FROM ram ORDER BY cod_prod";
                    pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    while (rs.next()) {
            %>
            <tr>     
                <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getString("gb")%></td>
                <td><%= rs.getString("tecnologia")%></td>
                <td><%= rs.getString("frequencia")%></td>
                <td><%= rs.getInt("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
                     

          <td><a href="../alterar/alterar_ram.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>

         <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
        </svg> 
 </a></td> 
       
            </tr>
            <%
                    }
                } catch (Exception ex) {
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
            %> 
        </table>
        
        <br/> <br/>
        
        <h1 class="ttl_table">SSD em Estoque</h1>
        
        <table border="1" cellspacing="0" cellpadding="2" style="margin: auto;">
            <tr>
                <th width="80"><strong>COD_PROD</strong></th>
                <th width="100"><strong>NOME_PROD</strong></th>
                <th width="170"><strong>DESCRIÇÃO</strong></th>
                <th width="80"><strong>GB</strong></th>
                <th width="80"><strong>MODELO</strong></th>
                <th width="80"><strong>VEL_LEITURA</strong></th> 
                <th width="80"><strong>VEL_ESCRITA</strong></th>
                <th width="90"><strong>PREÇO</strong></th>
                <th width="90"><strong>QUANTIDADE</strong></th>
                <th width="40"><strong>IMAGEM</strong></th>
                <th width="90"><strong>QUANTIDADE VENDIDO</strong></th>
                <th width="100"><strong>ALTERAR</strong></th>
                <th width="90"><strong>ELIMINAR</strong></th>
            </tr>
            
            
            
            <%             
                
                try {
                    sql = "SELECT * FROM ssd ORDER BY cod_prod";
                    pstm = con.prepareStatement(sql);
                    rs = pstm.executeQuery();
                    while (rs.next()) {
            %>
            <tr>     
                <td><%= rs.getInt("cod_prod")%></td>
                <td><%= rs.getString("nome_prod")%></td>
                <td><%= rs.getString("descricao")%></td>
                <td><%= rs.getString("gb")%></td>
                <td><%= rs.getString("modelo")%></td>
                <td><%= rs.getString("vel_leitura")%></td>
                <td><%= rs.getString("vel_escrita")%></td>
                <td><%= rs.getFloat("preco")%></td>
                <td><%= rs.getInt("qtd")%></td>
                <td><%= rs.getString("imagem")%></td>
                <td><%= rs.getInt("qtd_vendido")%></td>
               
  
              <td><a href="../alterar/alterar_ssd.jsp?cod_prod=<%= rs.getInt("cod_prod")%>">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
             </svg> 
       </a></td>
            
         <td><a href="../apagar/confirmar_apgr_prod.jsp?cod_prod=<%= rs.getInt("cod_prod")%>&nome_prod=<%= rs.getString("nome_prod")%>">
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
                    out.print("<br/><br/>Desculpe, mas algo errado aconteceu abrindo este BD...<br/><br/>");
                }
          %> 
        </table>
        
        <br/><br/>
        <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar"> </a> 
          </div>
        
    </body>
</html>