<%@page import="java.util.ArrayList"%>
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
           
                    
                   <% 
                       ResultSet rs =null ;
                       String sql = null;
                       try{
                      ArrayList <String> prod = (ArrayList) request.getSession().getAttribute("prod");;
                      
                      for(String pd : prod){
                          if(pd.split("_")[1].equals("pc")){
                          String id = pd.split("_")[0];
                              sql = "SELECT imagem, nome_prod, preco FROM computador WHERE cod_prod = "+id;
                          
                          } else if(pd.split("_")[1].equals("note")){
                            String id = pd.split("_")[0];
                              sql = "SELECT imagem, nome_prod, preco FROM notebook WHERE cod_prod = " + id;
                          
                          } else if(pd.split("_")[1].equals("fonte")){
                            String id = pd.split("_")[0];
                              sql = "SELECT imagem, nome_prod, preco FROM fonte WHERE cod_prod = " + id;
                          
                          } else if(pd.split("_")[1].equals("hdd")){
                            String id = pd.split("_")[0];
                              sql = "SELECT imagem, nome_prod, preco FROM hdd WHERE cod_prod = " + id;
                          
                          } else if(pd.split("_")[1].equals("pm")){
                            String id = pd.split("_")[0];
                              sql = "SELECT imagem, nome_prod, preco FROM placa_mae WHERE cod_prod = " + id;
                          
                          } else if(pd.split("_")[1].equals("pv")){
                            String id = pd.split("_")[0];
                              sql = "SELECT imagem, nome_prod, preco FROM placa_video WHERE cod_prod = " + id;
                          
                          } else if(pd.split("_")[1].equals("proc")){
                            String id = pd.split("_")[0];
                              sql = "SELECT imagem, nome_prod, preco FROM processador WHERE cod_prod = " + id;
                          
                          } else if(pd.split("_")[1].equals("ram")){
                            String id = pd.split("_")[0];
                              sql = "SELECT imagem, nome_prod, preco FROM ram WHERE cod_prod = " + id;
                          
                          } else if(pd.split("_")[1].equals("ssd")){
                            String id = pd.split("_")[0];
                              sql = "SELECT imagem, nome_prod, preco FROM ssd WHERE cod_prod = " + id;
                          
                          } 
                            pstm = con.prepareStatement(sql);
                             rs = pstm.executeQuery();
                   
                      
                          while(rs.next()) {
                                                                   
                    %>
                    <div class="produtos_lista">
                <div class="produto_box">
                    
                    <div class="produto_img"> <%= rs.getString(1)%> </div>
                    <p class="produto_titulo"> <strong> <%=rs.getString(2)%> </strong> </p>
                    
                    &nbsp;
           
                <div class='quant'>
                   
                    <button name="menos" class="menos">-</button>
                    <p class="qtd">1</p>
                    <button class="mais">+</button>
                </div>
                    
                <p class="preco"> R$ <%=rs.getDouble(3)%> </p>
                  
                </div> </div>
            <hr>
                 
            
                            <%   

                                }
                                    }
                            
                                }catch(SQLException ex) {
                                    out.print(ex.getMessage());
                                }
                           
                   %>
         
        
       
        </section> 
        <section class="result_container">
            <div class="result">
          
               
                 <p id="total_value" class="total">Total: R$ 3.900,00</p>
          
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