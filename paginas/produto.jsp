<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%@ include file="../conecta.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../icons/logo.png">
    <title>Produto</title>
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/produto.css">
</head>
<body>
    <header>
        <script src="../scripts/headerGenerate.js"></script>
    </header>

    <article>
        <section id="produto_content">
            <div class="produto_box" id="produto_img">
                <div id="img_selected">
            <% 
                String sql;
                ResultSet rs = null;
                String categoria = request.getParameter("categoria");
              
                        try {
                            sql = "SELECT imagem, img1, img2, img3 FROM computador WHERE cod_prod = '" + request.getParameter("id") + "';";
                            rs = stm.executeQuery(sql);
                            
                            while(rs.next()) {
                                out.print(rs.getString(1));
                            
                    %>
                    
                </div>
                    <div id="imgs_selection"> <%= rs.getString(2)%> </div> 
                    <div id="imgs_selection"> <%= rs.getString(3)%> </div>
                    <div id="imgs_selection"> <%= rs.getString(4)%></div>
                
            </div>
                   
                   <%
                     }
                        }
                        catch(SQLException ex) {
                            out.print(ex.getMessage());
                        }
                   %>
            <div class="produto_box" id="produto_details">
                <% 
                    try{
                        sql = "SELECT nome_prod, descricao FROM computador WHERE cod_prod = '" + request.getParameter("id") + "';";
                        rs = stm.executeQuery(sql);
                        
                        while(rs.next()) {
                            out.print("<h2 id='produto_nome'>" + rs.getString(1) + "</h2>");
                            out.print("<h3 id='desc_title'>Descrição</h3>");
                            out.print("<p id='descricao'>" + rs.getString(2) + "</p>");
                        }
                    }
                    catch(SQLException ex) {
                        out.print(ex.getMessage());
                    }
                %>
            </div>
            <div class="produto_box" id="produto_compra">
                <div id="valor_content">
                    <% 
                        try{
                            sql = "SELECT preco FROM computador WHERE cod_prod = '" + request.getParameter("id") + "';";
                            rs = stm.executeQuery(sql);
                        
                            while(rs.next()) {
                                out.print("<h3 id='produto_valor'>R$ " + rs.getFloat(1) +"</h3>");
                          
                    %>
                    <h4 id="produto_parcelamento">em até 12x no cartão de crêdito</h4>
                </div>
                <div id="button_content">
                   
                    <form action="../paginas/carrinho.jsp?id=<%=request.getParameter("id")%>&categoria=<%=request.getParameter("categoria")%>" method="post">
                        <input type="submit" value="Comprar">
                    </form>
                  <%

                        }
                            }
                            catch(SQLException ex) {
                                out.print(ex.getMessage());
                            }

                  %>
                </div>
            </div>
        </section>
        <section id="ficha_tecnica">
            <h3>Ficha Técnica</h3>
            <table>
                <% 
                    try{
                        sql = "SELECT processador, placa_video, memoria_ram, armazenamento, so, fonte FROM computador WHERE cod_prod = '" + request.getParameter("id") + "';";
                        rs = stm.executeQuery(sql);
                        
                        while(rs.next()) {
                            out.print("<tr>" +
                                "<td>Processador</td>" +
                                "<td>"+rs.getString(1)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>Placa-de-Video</td>" +
                                "<td>"+rs.getString(2)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>RAM</td>" +
                                "<td>"+rs.getString(3)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>Armazenamento</td>" +
                                "<td>"+rs.getString(4)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>Sistema Operacional</td>" +
                                "<td>"+rs.getString(5)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>Fonte</td>" +
                                "<td>"+rs.getString(6)+"</td>" +
                            "</tr>");
                        }
                    }
                    catch(SQLException ex) {
                        out.print(ex.getMessage());
                    }
                        
                    con.close();
                    rs.close();
                %>
                
            </table>
        </section>
    </article>
    <script src="../scripts/produto.js"></script>
</body>
</html>