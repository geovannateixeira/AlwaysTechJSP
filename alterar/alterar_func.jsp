<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../conectar_1.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../styles/header.css">
        <link rel="stylesheet" href="../styles/alter.css">
        <title>Editar um Funcionário</title>
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
        <h2>Editar Informações do Fucionário</h2>
   
        <% 
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
            try{
                ResultSet rs;
                String sql = "SELECT * FROM func WHERE nome = ?";
                pstm = con.prepareStatement(sql);
                pstm.setString(1, request.getParameter("nome"));
                rs = pstm.executeQuery();            
                if (rs.next()) {
                %>
                    <form id="form1" action="../gravar/grava_alteracao_func.jsp" method="post">
                        <table>
                            <tr><td> <label class="frm"> Nome: </label></td><td><input type="text" name="nome" value="<%= rs.getString("nome") %>" readonly /> </td></tr>
                            <tr><td> <label class="frm"> Email: </label> </td><td><input type="text" name="email" value="<%= rs.getString("email") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Celular: </label> </td><td><input type="text" name="celular" value="<%= rs.getString("celular") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Cargo: </label> </td><td><input type="text" name="cargo" value="<%= rs.getString("cargo") %>" /> </td></tr>
                            <tr><td> <label class="frm"> Salário: </label> </td><td><input type="text" name="salario" value="<%= rs.getString("salario") %>"/> </td></tr>
                            
                        </table>
                        <br/>                    
                       
                        <input type="submit" name="botao" value="Alterar">
                        <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                          </form>    
                <%
                } 
                else {
                    %>
                      <p>Erro Tentando Alterar as Informações.</p>
                      <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
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
