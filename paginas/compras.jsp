<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Compras</title>
    <link rel="icon" href="../icons/logo.png">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/compras.css">
</head>
<body>
    <header>
        <script src="../scripts/headerGenerate.js"></script>
    </header>
 
        <article>
        <section class="container">
            <h3 class="title">Endereço</h3>
            <div id="endereco">
<%
    String login = (String) session.getAttribute("login");
    String cpf = (String) session.getAttribute("cpf");
    if (login == null){
        response.sendRedirect("login.jsp");
    } 
     
     
                ResultSet rs = null;
                String sql = "";
                     try {
                
                sql = "SELECT nome, endereco, bairro, cidade, cep FROM clientes WHERE cpf = ?";
                     pstm = con.prepareStatement(sql);
                     pstm.setString(1,cpf);
                    rs = pstm.executeQuery();
                        
               while (rs.next()) {
%>    
              
                <p class="dados"><strong>Nome: </strong> <%= rs.getString("nome")%></p>
                <p class="dados"><strong>Endereço: </strong> <%= rs.getString("endereco") %></p>
                <p class="dados"><strong>Bairro: </strong><%= rs.getString("bairro") %></p>
                <p class="dados"><strong>Cidade: </strong> <%= rs.getString("cidade") %></p>
                <p class="dados"><strong>CEP: </strong> <%= rs.getString("cep") %></p>
            </div>
        </section>
            
        <%
        }
        } catch(Exception ex){
            out.println(ex.getMessage());
        } 
        %>
      
        <section class="container">
            <h3 class="title">Método de Pagamento</h3>
            <div id="pagamento">
                <div id="boleto">
                    <img src="https://i.ibb.co/wNc6qqv/boleto.png" alt="boleto">
                    <p>Boleto</p>
                </div>
                <div id="cartao">
                    <img src="https://i.ibb.co/PsyRZtN/cartao.png" alt="cartao">
                    <p>Cartão</p>
                </div>
            </div>
            <div id="cartao_dados" style="display: none;">
                <form id="cartao_inputs" method="POST" action="confirmaCompra.jsp">
                    <div>
                        <p>Nome escrito no cartão</p>
                        <input type="text" name="nome">
                    </div>
                    <div>
                        <p>Numero do cartão</p>
                        <input type="text" name="numero">
                    </div>
                    <div>
                        <p>Código de segurança</p>
                        <input id="cod" class="small_input" type="number" step="disable" name="cod">
                    </div>
                    <div>
                        <p>Validade</p>
                        <input id="validade" placeholder="__/__" class="small_input" type="month" name="validade">
                    </div>
                    <div>
                        <p>Parcelas</p>
                        <select name="vezes" id="qtd_vezes">
                            <option value=""></option>
                            <option value="1">1x</option>
                            <option value="2">2x</option>
                            <option value="3">3x</option>
                            <option value="4">4x</option>
                            <option value="5">5x</option>
                            <option value="6">6x</option>
                            <option value="7">7x</option>
                            <option value="8">8x</option>
                            <option value="9">9x</option>
                            <option value="10">10x</option>
                            <option value="11">11x</option>
                            <option value="22">12x</option>
                        </select>
                    </div>
                </form>
            </div>
        </section>

       <%
            session.setAttribute("valorProdutos", request.getParameter("valorProdutos"));
            session.setAttribute("valorProd", request.getParameter("total"));
            
            String total = request.getParameter("total").replace(".", "").replace(",", ".");
           
            
       %>
        
        <section class="container">
            <h3 class="title">Cupom</h3>
            <div id="cupom">
                
                <form action="../paginas/validaCupom.jsp?total=<%=total%>&produto=<%=request.getParameter("produto") %>" method="POST">
                    
                    <input id="cupom_input" type="text" name="cupom" autocomplete="off">
                    <input type="submit" value="Aplicar">
                    
                </form>
            </div>
        </section>
                    
        <section class="container">
            <h3>Resumo da Compra</h3>
            <div id="resumo">
                <p class="dados"><strong>Quantidade: </strong> <%= request.getParameter("produto") %></p>
                <p class="dados"><strong>Valor dos Produtos: </strong> R$ <%= session.getAttribute("valorProd") %></p>
                <p class="dados"><strong>Código do Cupom: </strong>  <%= request.getParameter("cupom") != null ?  request.getParameter("cupom") : "" %></p>
                <p class="dados"><strong>Porcentagem de Desconto: </strong>  <%= request.getParameter("desconto") != null ?  request.getParameter("desconto") : "" %>  </p>
                <p class="dados"><strong>Valor Total com Desconto: </strong> R$ <%= request.getParameter("valorProdutos") != null ?  request.getParameter("valorProdutos") : session.getAttribute("valorProd")%>   </p>
            </div>
        </section>
            
        <%
                    if(pstm!=null)pstm.close();
                    if(con!=null)con.close(); 
        %>
       
        <div id="btn_box">
            <input form="cartao_inputs" type="submit" id="btn" value="Finalizar Compra">
            
        </div>
    </article>
    <script src="../scripts/compra.js"></script>
</body>
</html>