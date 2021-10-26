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
                String sql = "SELECT * FROM placa_mae WHERE cod_prod = ?";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, Integer.parseInt(request.getParameter("cod_prod")));
                rs = pstm.executeQuery();            
                while (rs.next()) {
                %>
                    <form id="form1" action="../gravar/gr_alt_pl_mae.jsp" method="post">
                        <table>
                            <tr><td> <label class="frm"> Código do Produto: </label></td><td><input type="text" name="cod_prod" value="<%= rs.getInt("cod_prod") %>" readonly /> </td></tr>
                            <tr><td> <label class="frm"> Nome: </label></td><td><input type="text" name="nome_prod" value="<%= rs.getString("nome_prod") %>"/> </td></tr>
                            <tr><td> <label class="frm"> Chipset: </label> </td><td><input type="text" name="chipset" value="<%= rs.getString("chipset") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Slots RAM: </label> </td><td><input type="text" name="slots_ram" value="<%= rs.getString("slots_ram") %>" /> </td></tr>
                            <tr><td> <label class="frm"> USB: </label> </td><td><input type="text" name="usb" value="<%= rs.getString("usb") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Bios: </label> </td><td><input type="text" name="bios" value="<%= rs.getString("bios") %>" /> </td></tr>
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
