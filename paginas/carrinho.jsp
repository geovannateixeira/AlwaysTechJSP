<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrinho</title>
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/carrinho.css">
    <link rel="icon" href="../icons/logo.png">
</head>
<body>
      <% 
        String login = (String) session.getAttribute("login");
        if (login == null){
            response.sendRedirect("login.jsp");
        } 
 %> 
    <header>
        <script src="../scripts/headerGenerate.js"></script>
    </header>
   
    <h2>Meu Carrinho</h2>
    <article>
        <section id="cesta_container">
            <h2>Produtos</h2>
            <hr>
            <div class="produtos_lista">
                <div class="produto_box">
                    
                   <%
                       ResultSet rs =null ;
                       String sql;
                       try{
                       String categoria = request.getParameter("categoria") ;
                           sql = "SELECT imagem, nome_prod, preco FROM computador WHERE cod_prod = ?";
                            pstm = con.prepareStatement(sql);
                            pstm.setInt(1,Integer.parseInt(request.getParameter("id")));
                             rs = pstm.executeQuery();

                                            while(rs.next()) {    
                    %>
                   
                    <div class="produto_img"> <%= rs.getString(1)%> </div>
                    <p class="produto_titulo"> <strong> <%=rs.getString(2)%> </strong> </p>
                    
                    </div>
                <div class='quant'>
                    <button class="menos">-</button>
                    <p class="qtd">1</p>
                    <button class="mais">+</button>
                </div>
                <p class="preco"> R$ <%= rs.getDouble(3)%> </p>
            </div>
            
              
            <hr>
           
        </section>
        <section class="result_container">
            <div class="result">
            
                
                
                <p id="total_value" class="total">R$ <%= rs.getDouble(3)%></p>
              <%       }
                            
                                }catch(SQLException ex) {
                                    out.print(ex.getMessage());
                                }
                           
                   %>
            
                <p class="parce">em até 12x sem juros</p>
                <p id="quant_prod" class="quant_txt">3 produtos selecionados</p>
            </div>
            <div class="btn_content">
                <a  id="btn_prosseguir" class="btn_next">PROSSEGUIR</a>
            </div>
        </section>
    </article>
    <script src="../scripts/carrinho.js"></script>
</body>
</html>