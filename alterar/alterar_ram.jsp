<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conectar_1.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../styles/header.css">
        <link rel="stylesheet" href="../styles/alter_prod.css">
        <title>Editar um Produto</title>
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
        
        <section>
        <div class="cad">
        <h2>Editar Informações do Produto</h2>
   
        <% 
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
            try{
                ResultSet rs;
                String sql = "SELECT * FROM ram WHERE cod_prod = ?";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, Integer.parseInt(request.getParameter("cod_prod")));
                rs = pstm.executeQuery();            
                while (rs.next()) {
                %>
                    <form id="form1" action="../gravar/gr_alt_ram.jsp" method="post">
                        <table>
                            <tr><td> <label class="frm"> Código do Produto: </label></td><td><input type="text" name="cod_prod" value="<%= rs.getInt("cod_prod") %>" readonly /> </td></tr>
                            <tr><td> <label class="frm"> Nome: </label></td><td><input type="text" name="nome_prod" value="<%= rs.getString("nome_prod") %>"/> </td></tr>
                            <tr><td> <label class="frm"> Armazenamento (GB): </label> </td><td><input type="text" name="gb" value="<%= rs.getString("gb") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Tecnologia: </label> </td><td><input type="text" name="tecnologia" value="<%= rs.getString("tecnologia") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Frequência: </label> </td><td><input type="text" name="frequencia" value="<%= rs.getString("frequencia") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Preço: </label> </td><td><input type="text" name="preco" value="<%= rs.getString("preco") %>"/> </td></tr>
                            <tr><td> <label class="frm"> Quantidade: </label> </td><td><input type="text" name="qtd" value="<%= rs.getString("qtd") %>"/> </td></tr>
                            
                        </table>
                        <br/>                    
                       
                        <input type="submit" name="botao" value="Alterar">
                        <a href="../listar/lista_prod.jsp"> <input type="button" value="Voltar" </a>
                          </form>    
                
                   
                  <% 
                 
                }
                rs.close();
                pstm.close();
                con.close();
            }
            catch(Exception e) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= e.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
           %> 

        <br/> 
        
        </div>
        </section>     
        
    </body>
</html>
