<%@page import="java.util.ArrayList"%>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
   <link rel="stylesheet" href="../styles/footer.css">
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
                ArrayList <String> prod = (ArrayList) request.getSession().getAttribute("prod");
                prod = (ArrayList) application.getAttribute("prod");
                
                String id =  request.getParameter("id");
                String categoria =  request.getParameter("categoria");
                
                String sql = null;
                ResultSet rs = null;
                       try {
                          if(categoria.equals("pc")){
                              sql = "SELECT imagem, img1, img2, img3 FROM computador WHERE cod_prod = "+id;
                          
                          } else if(categoria.equals("note")){
                              sql = "SELECT imagem, img1, img2, img3 FROM notebook WHERE cod_prod = " + id;
                          
                          } else if(categoria.equals("fonte")){
                              sql = "SELECT imagem, img1, img2, img3 FROM fonte WHERE cod_prod = " + id;
                              
                          }  else if(categoria.equals("hdd")){
                              sql = "SELECT imagem, img1, img2, img3 FROM hdd WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("pm")){
                              sql = "SELECT imagem, img1, img2, img3 FROM placa_mae WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("pv")){
                              sql = "SELECT imagem, img1, img2, img3 FROM placa_video WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("proc")){
                              sql = "SELECT imagem, img1, img2, img3 FROM processador WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("ram")){
                              sql = "SELECT imagem, img1, img2, img3 FROM ram WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("ssd")){
                              sql = "SELECT imagem, img1, img2, img3 FROM ssd WHERE cod_prod = " + id;
                          }
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
                        if(categoria.equals("pc")){
                              sql = "SELECT nome_prod, descricao FROM computador WHERE cod_prod = "+id;
                          
                          } else if(categoria.equals("note")){
                              sql = "SELECT nome_prod, descricao FROM notebook WHERE cod_prod = " + id;
                          
                          } else if(categoria.equals("fonte")){
                              sql = "SELECT nome_prod, descricao FROM fonte WHERE cod_prod = " + id;
                              
                          }  else if(categoria.equals("hdd")){
                              sql = "SELECT nome_prod, descricao FROM hdd WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("pm")){
                              sql = "SELECT nome_prod, descricao FROM placa_mae WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("pv")){
                              sql = "SELECT nome_prod, descricao FROM placa_video WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("proc")){
                              sql = "SELECT nome_prod, descricao FROM processador WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("ram")){
                              sql = "SELECT nome_prod, descricao FROM ram WHERE cod_prod = " + id;
                              
                          } else if(categoria.equals("ssd")){
                              sql = "SELECT nome_prod, descricao FROM ssd WHERE cod_prod = " + id;
                              
                          }
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
                            if(categoria.equals("pc")){
                              sql = "SELECT preco FROM computador WHERE cod_prod = "+id;
                          
                          } else if(categoria.equals("note")){
                              sql = "SELECT preco FROM notebook WHERE cod_prod = " + id;
                          
                          } else if(categoria.equals("fonte")){
                              sql = "SELECT preco FROM fonte WHERE cod_prod = " + id;
                          
                          }  else if(categoria.equals("hdd")){
                              sql = "SELECT preco FROM hdd WHERE cod_prod = " + id;
                          
                          }  else if(categoria.equals("pm")){
                              sql = "SELECT preco FROM placa_mae WHERE cod_prod = " + id;
                          
                          }  else if(categoria.equals("pv")){
                              sql = "SELECT preco FROM placa_video WHERE cod_prod = " + id;
                          
                          }  else if(categoria.equals("proc")){
                              sql = "SELECT preco FROM processador WHERE cod_prod = " + id;
                          
                          }  else if(categoria.equals("ram")){
                              sql = "SELECT preco FROM ram WHERE cod_prod = " + id;
                          
                          }  else if(categoria.equals("ssd")){
                              sql = "SELECT preco FROM ssd WHERE cod_prod = " + id;
                          
                          } 
                            rs = stm.executeQuery(sql);
                        
                            while(rs.next()) {
                                out.print("<h3 id='produto_valor'>R$ " + rs.getFloat(1) +"</h3>");
                          
                    %>
                    <h4 id="produto_parcelamento">em até 12x no cartão de crédito</h4>
                </div>
                <div id="button_content">
                   
                    <form action="../paginas/carrinho.jsp?acao=add&id=<%=request.getParameter("id")%>&categoria=<%=request.getParameter("categoria")%>" method="post">
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
                        if(categoria.equals("pc")){
                              
                                sql = "SELECT processador, placa_video, memoria_ram, armazenamento, so, fonte FROM computador WHERE cod_prod = " +id;
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
                           
                          } else if(categoria.equals("note")){
                              sql = "SELECT armazenamento, processador, memoria_ram, tamanho_tela, so, bateria FROM notebook WHERE cod_prod = " + id;
                              rs = stm.executeQuery(sql);
                              while(rs.next()) {
                            out.print("<tr>" +
                                "<td>Armazenamento</td>" +
                                "<td>"+rs.getString(1)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>Processador</td>" +
                                "<td>"+rs.getString(2)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>RAM</td>" +
                                "<td>"+rs.getString(3)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>Tamanho da Tela</td>" +
                                "<td>"+rs.getString(4)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>Sistema Operacional</td>" +
                                "<td>"+rs.getString(5)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td>Bateria</td>" +
                                "<td>"+rs.getString(6)+"</td>" +
                            "</tr>");
                        }
                          } else if(categoria.equals("fonte")){
                              sql = "SELECT potencia, voltagem, certificacao FROM fonte WHERE cod_prod = " + id;
                              rs = stm.executeQuery(sql);
                              while(rs.next()) {
                            out.print("<tr>" +
                                "<td> Potencia </td>" +
                                "<td>"+rs.getString(1)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Voltagem </td>" +
                                "<td>"+rs.getString(2)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Certificação </td>" +
                                "<td>"+rs.getString(3)+"</td>" +
                            "</tr>");
                        }
                          } else if(categoria.equals("hdd")){
                              sql = "SELECT gb, modelo, rpm FROM hdd WHERE cod_prod = " + id;
                              rs = stm.executeQuery(sql);
                              while(rs.next()) {
                            out.print("<tr>" +
                                "<td>Armazenamento</td>" +
                                "<td>"+rs.getString(1)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Modelo </td>" +
                                "<td>"+rs.getString(2)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> RPM </td>" +
                                "<td>"+rs.getString(3)+"</td>" +
                            "</tr>");
                        }
                          } else if(categoria.equals("pm")){
                              sql = "SELECT type_cpu, chipset, usb, bios FROM placa_mae WHERE cod_prod = " + id;
                              rs = stm.executeQuery(sql);
                              while(rs.next()) {
                            out.print("<tr>" +
                                "<td> Tipo de CPU</td>" +
                                "<td>"+rs.getString(1)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Chipset </td>" +
                                "<td>"+rs.getString(2)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> USB </td>" +
                                "<td>"+rs.getString(3)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Bios </td>" +
                                "<td>"+rs.getString(4)+"</td>" +
                            "</tr>");
                        }
                          } else if(categoria.equals("pv")){
                              sql = "SELECT gb, clock, conexao FROM placa_video WHERE cod_prod = " + id;
                              rs = stm.executeQuery(sql);
                              while(rs.next()) {
                            out.print("<tr>" +
                                "<td>Armazenamento</td>" +
                                "<td>"+rs.getString(1)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Clock </td>" +
                                "<td>"+rs.getString(2)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Conexão </td>" +
                                "<td>"+rs.getString(3)+"</td>" +
                            "</tr>");
                        }
                          } else if(categoria.equals("proc")){
                              sql = "SELECT marca, ghz, soquete FROM processador WHERE cod_prod = " + id;
                              rs = stm.executeQuery(sql);
                              while(rs.next()) {
                            out.print("<tr>" +
                                "<td> Marca </td>" +
                                "<td>"+rs.getString(1)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Frequência </td>" +
                                "<td>"+rs.getString(2)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Soquete </td>" +
                                "<td>"+rs.getString(3)+"</td>" +
                            "</tr>");
                        }
                          } else if(categoria.equals("ram")){
                              sql = "SELECT gb, tecnologia, frequencia FROM ram WHERE cod_prod = " + id;
                              rs = stm.executeQuery(sql);
                              while(rs.next()) {
                            out.print("<tr>" +
                                "<td> Armazenamento </td>" +
                                "<td>"+rs.getString(1)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Tecnologia </td>" +
                                "<td>"+rs.getString(2)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Frequência </td>" +
                                "<td>"+rs.getString(3)+"</td>" +
                            "</tr>");
                        }
                          } else if(categoria.equals("ssd")){
                              sql = "SELECT gb, modelo, vel_leitura, vel_escrita FROM ssd WHERE cod_prod = " + id;
                              rs = stm.executeQuery(sql);
                              while(rs.next()) {
                            out.print("<tr>" +
                                "<td> Armazenamento </td>" +
                                "<td>"+rs.getString(1)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Modelo </td>" +
                                "<td>"+rs.getString(2)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Velocidade de Leitura </td>" +
                                "<td>"+rs.getString(3)+"</td>" +
                            "</tr>");
                            out.print("<tr>" +
                                "<td> Velocidade de Escrita </td>" +
                                "<td>"+rs.getString(4)+"</td>" +
                            "</tr>");
                        }
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
     
     <footer>
        <script src="../scripts/footerGenerate.js"></script>
     </footer>             
                
    <script src="../scripts/produto.js"></script>
</body>
</html>