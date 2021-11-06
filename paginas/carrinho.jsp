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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../styles/footer.css">
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
                      
                      ArrayList <String> prod = (ArrayList) application.getAttribute("prod");
                       if(request.getParameter("acao") != null && request.getParameter("acao").equals("add")){ 
                           prod.add(request.getParameter("id") + "_" +  request.getParameter("categoria"));
                            application.setAttribute("prod", prod);
                       } else if(request.getParameter("acao") != null && request.getParameter("acao").equals("remove")){

                        String itemRemovido = "";

                            for(String pd : prod) {
                                String item = pd.split("_")[0] + "_" + pd.split("_")[1]; 
                                if(item.equals(request.getParameter("id") + "_" + request.getParameter("categoria"))) {
                                    itemRemovido = pd;
                                }
                            }

                            prod.remove(itemRemovido);
                           application.setAttribute("prod", prod);
                             
                     }
                   
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
                   
                    <button class="menos">-</button>
                    <p class="qtd">1</p>
                    <button class="mais">+</button>  
                    
                    
                </div>
                    
                <p class="preco"> R$ <%=rs.getDouble(3)%> </p>
               <%
                    prod.set(prod.indexOf(pd), pd + "_" + rs.getString(1) + "_" +  rs.getString(2) + "_" + rs.getString(3));
                    //out.print(prod);
               %>
                
                <div class="remove">    
                    <a href="carrinho.jsp?acao=remove&id=<%=pd.split("_")[0]%>&categoria=<%=pd.split("_")[1]%>">        
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16" style="color:#000000;">
                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                    <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                    </svg>
                    </a>
                </div>
                    
                </div> 
                    </div>
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
     <footer>
        <script src="../scripts/footerGenerate.js"></script>
     </footer> 
    <script src="../scripts/carrinho.js"></script>
</body>
</html>