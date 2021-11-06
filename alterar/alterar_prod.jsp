<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conectar_1.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../styles/header.css">
        <link rel="stylesheet" href="../styles/alter_prod.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="../styles/footer.css">
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
                String sql = "SELECT * FROM computador WHERE cod_prod = ?";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, Integer.parseInt(request.getParameter("cod_prod")));
                rs = pstm.executeQuery();            
                while (rs.next()) {
                %>
                    <form id="form1" action="../gravar/grava_alteracao_prod.jsp" method="post">
                        <table>
                            <tr><td> <label class="frm"> Código do Produto: </label></td><td><input type="text" name="cod_prod" value="<%= rs.getInt("cod_prod") %>" readonly /> </td></tr>
                            <tr><td> <label class="frm"> Nome: </label></td><td><input type="text" name="nome_prod" value="<%= rs.getString("nome_prod") %>"/> </td></tr>
                            <tr><td> <label class="frm"> Armazenamento: </label> </td><td><input type="text" name="armazenamento" value="<%= rs.getString("armazenamento") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Processador: </label> </td><td><input type="text" name="processador" value="<%= rs.getString("processador") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Memória: </label> </td><td><input type="text" name="memoria_ram" value="<%= rs.getString("memoria_ram") %>" /> </td></tr>
                            <tr><td> <label class="frm"> SO: </label> </td><td><input type="text" name="so" value="<%= rs.getString("so") %>"/> </td></tr>
                            <tr><td> <label class="frm"> Fonte: </label> </td><td><input type="text" name="fonte" value="<%= rs.getString("fonte") %>"/> </td></tr>
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
            <footer>
        <script src="../scripts/footerGenerate.js"></script>
     </footer> 
    </body>
</html>
