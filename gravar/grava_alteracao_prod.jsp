<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="../styles/header.css">
        <title>Gravar No Banco de Dados o Produto Alterado.</title>
         <link rel="icon" href="../icons/logo.png">
            
    </head>
    <body>
       
        <header> 
             <script src="../scripts/headerGenerate.js"> </script>
        </header>
        
        <h1>Alteração de Informações</h1>
        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE computador SET nome_prod = ?, armazenamento = ?, processador = ?, memoria_ram = ?,"
                        + " so =?, fonte = ?, preco = ?, qtd = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("armazenamento"));
                pstm.setString(3, request.getParameter("processador"));
                pstm.setString(4, request.getParameter("memoria_ram"));
                pstm.setString(5, request.getParameter("so"));
                pstm.setString(6, request.getParameter("fonte"));
                pstm.setFloat(7, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(8, Integer.parseInt(request.getParameter("qtd")));
                pstm.setString(9, request.getParameter("nome_prod"));
               
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

             
            } catch (Exception ex) {
                    out.print(ex.getMessage());
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>
                   
                    <%--
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE notebook SET nome_prod = ?,armazenamento = ?,processador = ?,memoria_ram = ?,"
                        + " so =?, preco = ?, quantidade = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("armazenamento"));
                pstm.setString(3, request.getParameter("processador"));
                pstm.setString(4, request.getParameter("memoria_ram"));
                pstm.setString(5, request.getParameter("so"));
                pstm.setFloat(6, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(7, Integer.parseInt(request.getParameter("quantidade")));
                pstm.setString(8, request.getParameter("nome_prod"));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>
                   
                    <%--
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE fonte SET nome_prod = ?,potencia = ?,certificacao = ?,"
                        + " preco = ?, quantidade = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("potencia"));
                pstm.setString(3, request.getParameter("certificacao"));
                pstm.setFloat(4, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(5, Integer.parseInt(request.getParameter("quantidade")));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

                pstm.close();
                con.close();    
            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>
                   
                    <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE hdd SET nome_prod = ?,gb = ?,modelo = ?, preco = ?, quantidade = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("gb"));
                pstm.setString(3, request.getParameter("modelo"));
                pstm.setFloat(4, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(5, Integer.parseInt(request.getParameter("quantidade")));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

                pstm.close();
                con.close();    
            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>
                   
                       <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE placa_mae SET nome_prod = ?,slots_ram = ?,usb = ?, bios = ?, preco = ?, quantidade = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("slots_ram"));
                pstm.setString(3, request.getParameter("usb"));
                pstm.setString(4, request.getParameter("bios"));
                pstm.setFloat(5, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(6, Integer.parseInt(request.getParameter("quantidade")));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

                pstm.close();
                con.close();    
            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>
                   
                       <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE placa_video SET nome_prod = ?,gb = ?,clock = ?, pinos = ?, preco = ?, quantidade = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("gb"));
                pstm.setString(3, request.getParameter("clock"));
                pstm.setString(4, request.getParameter("pinos"));
                pstm.setFloat(5, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(6, Integer.parseInt(request.getParameter("quantidade")));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

                pstm.close();
                con.close();    
            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>       
                   
                       <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE processador SET nome_prod = ?,modelo = ?,ghz = ?, soquete = ?, preco = ?, quantidade = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("modelo"));
                pstm.setString(3, request.getParameter("ghz"));
                pstm.setString(4, request.getParameter("soquete"));
                pstm.setFloat(5, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(6, Integer.parseInt(request.getParameter("quantidade")));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

                pstm.close();
                con.close();    
            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>         
                   
                        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE ram SET nome_prod = ?,gb = tecnologia = ?, frequencia = ?, preco = ?, quantidade = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("gb"));
                pstm.setString(3, request.getParameter("tecnologia"));
                pstm.setString(4, request.getParameter("frequencia"));
                pstm.setFloat(5, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(6, Integer.parseInt(request.getParameter("quantidade")));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

                pstm.close();
                con.close();    
            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        %>      
                   
                             <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            try{
                String sql;
                sql = "UPDATE ssd SET nome_prod = ?,gb = ?, modelo = ?, vel_leitura = ?, vel_escrita = ?, preco = ?, quantidade = ? WHERE nome_prod = ?";
                pstm = con.prepareStatement(sql);
 
                pstm.setString(1, request.getParameter("nome_prod"));
                pstm.setString(2, request.getParameter("gb"));
                pstm.setString(3, request.getParameter("modelo"));
                pstm.setString(4, request.getParameter("vel_leitura"));
                pstm.setString(5, request.getParameter("vel_escrita"));
                pstm.setFloat(6, Float.parseFloat(request.getParameter("preco")));
                pstm.setInt(7, Integer.parseInt(request.getParameter("quantidade")));
 
                int retorno = pstm.executeUpdate();

                if (retorno > 0) {
                    out.print("Dados Alteados com sucesso");
                    response.sendRedirect("../listar/lista_prod.jsp");
                }
                else {
                %>
                    <p>Erro Tentando Alterar as Informações.</p>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%               
                }

                pstm.close();
                con.close();    
            } catch (Exception ex) {
                %>
                    <p>Erro Tentando Alterar as Informações.</p> 
                    <%= ex.getMessage() %>
                    <br/> 
                   <a href="../paginas/funcionario.jsp"> <input type="submit" value="Voltar" </a>
                <%
            }
        --%>   
                   
                   
    </body>
</html>
