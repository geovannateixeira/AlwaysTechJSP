<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Finalizar Comprar</title>
    <link rel="icon" href="../icons/logo.png">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/finish.css">
    
</head>
<body>
     <header> 
              <script src="../scripts/headerGenerate.js"> </script>
        </header>
    
    <h2>Confirmação de Compra</h2>
    <article>
        <section id="cesta_container">
            <h2>Produtos Selecionados</h2>
            <hr>
            <div class="produtos_lista">
                <div class="produto_box">
                    <img class='produto_img' src="https://i.ibb.co/k84qVrG/gab2.jpg">
                    <p class="produto_titulo">SkyTech Archangel Gaming</p>
                </div>
                <div class='quant'>
                    
                    <p class="qtd" id="quantidade">  Quantidade: 1</p>
                   
                </div>
                <p class="preço">R$ 3.000,00</p>
            </div>
            <hr>
            <div class="produtos_lista">
                <div class="produto_box">
                    <img class='produto_img' src="https://i.ibb.co/D8QLfF5/fonte.jpg">
                    <p class="produto_titulo">Fonte Corsair Series CX600</p>
                </div>
                <div class='quant'>
                    
                    <p class="qtd" id="quantidade2"> Quantidade: 2</p>
                    
                </div>
                <p class="preço">R$ 450,00</p>
            </div>
            <hr>
            
        </section>
        <section class="result_container">
            <div class="result">
                <p id="total_value" class="total">Total: R$ 3.900,00</p>
                <p class="parce">em até 12x sem juros</p>
                <p id="quant_prod" class="quant_txt">3 produtos selecionados</p>
            </div>
             <hr>
            <div class="endereco">
                <h2 class="end">
                <%--
                    ResultSet rs;
                    String sql;
                    
                    sql = "SELECT endereco,cep FROM func WHERE nome LIKE ? ";
                    pstm = con.prepareStatement(sql);
                    pstm.setString(1, "%" + request.getParameter("endereco") + "%");
                    rs = pstm.executeQuery();
                    while (rs.next()) {
                --%>
                
                </h2>
            </div>
             <hr>
            <div class="btn_content">
                <button id="btn_prosseguir" class="btn_next">PROSSEGUIR</button>
            </div>
        </section>
    </article>

    <footer> <p> &copy 2021 - Diego / Geovanna /  Guilherme / Rodrigo / - ADS4/APSII </p> </footer> 

    <script src="../scripts/carrinho.js"></script>
    <script src="../scripts/headerGenerate.js"> </script>
</body>
</html>
