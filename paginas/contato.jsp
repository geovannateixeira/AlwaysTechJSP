<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../styles/footer.css">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/contato.css">
    <title>Contato</title>
    <link rel="icon" href="../icons/logo.png">
</head>
<body>
    
    <header> 
              <script src="../scripts/headerGenerate.js"> </script>
        </header>

    <main>
        <section>
            <h1 class="titulo"> Sobre Nós </h1>
            <div id="prt">
                <div class="show_infos">
                    <h1 onclick="faq('ent')"> Entrega </h1> 
                    <div id="ent" style="display: none;"> 
                        <p>
                        A Always Tech dispõe das seguintes formas de entrega:
                        <br>
                        Sedex – Correios
                        <br>
                        Encomenda – Loggi
                        <br>
                        Transportadora – Para grandes cargas
                        <br>
                        <br> 
                        O valor do frete adicionado à compra será aquele do modo de envio
                        selecionado pelo cliente após este informar seu CEP antes de “Finalizar pedido”.
                        <br>
                        <br>
                        Não nos responsabilizamos pela falta de entrega nos casos de: cliente ausente, carteiro não recebido,
                        dados cadastrais e/ou endereço incorretos e/ou incompletos, recusa pelo cliente ou funcionários
                        de endereços residenciais e comerciais, mudança de endereço.
                        </p>
                    </div>
                </div>
                <hr>
                <div class="show_infos">
                    <h1 onclick="faq('pag')"> Formas de Pagamento</h1>
                    <div id="pag" style="display: none;"> 
                        <p>
                        Os produtos promocionais, assim entendidos aqueles com preços diferenciados, somente serão garantidos dentro do período de tempo
                        indicado na página respectiva, bem como dentro da limitação quantitativa indicada.
                        <br><br>
                        Os produtos promocionais somente serão reservados após a confirmação da compra, que se dá ao ‘clicar’ no botão “Finalizar Pedido”. Antes disto pode ocorrer a indisponibilidade do produto, tendo em vista que a página talvez não tenha sido atualizada no seu aparelho entre a 
                        venda do último produto disponível no preço promocional e a sua finalização.
                        <br><br>
                        Ao confirmar o produto no carrinho o usuário poderá escolher entre as opções de pagamentos sendo elas, 
                        cartão de débito e/ou crédito, boleto, transferência ou PIX. Usuários com CPF restrito será impedido de efetuar sua compra.
                        Pagamento parcelado no cartão terá um limite no total para que possar ser parcelado sem juros.
                        </p>    
                    </div>
                </div>
                <hr>
                <div class="show_infos">
                    <h1 onclick="faq('dev')"> Devolução</h1>
                    <div id="dev" style="display: none;">
                        <p>
                            Qualquer avaria percebida na embalagem deverá ser registrada no ato do recebimento,
                            no canhoto da transportadora ou correios.
                            <br><br>
                            Caso ocorra avaria não perceptível em decorrência do transporte, o cliente deverá reclamar 
                            acerca do dano em até 48 horas, a contar da entrega. A reclamação deverá ser enviada para o email:
                            <a href="#">alwaystech21@gmail.com</a>, no assunto o número do código identificador, CPF e no corpo do email deverá
                            conter a descrição da reclamação, imagem do produto com avarias.
                            <br> <br>
                            A devolução do produto só será efetuada se não houver avaria no produto, neste caso solicitaremos 
                            uma imagem do produto com a nota fiscal ao lado.
                        </p>
                    </div>
                </div>
                <hr>
            </div>

            <div class="sobre"> 
                
                <p class="ttl_sobre"> <strong> Somos Always Tech </strong> </p>
                <p class="txt_sobre"> Uma empresa de e-commerce, atuamos no setor de informática, área bastante competitiva e em constante crescimento. </p>
                <p class="txt_sobre"> Qualidade e variedade são critérios importantíssimos para total satisfação, confiança e preferência de nossos clientes.</p>
                <br>
                <p class="txt_dev"> Sistema Desenvolvido por Diego / Geovanna /  Guilherme / Rodrigo / - ADS4/APSII</p>
                <p class="txt_dev"> &copy Always Tech 2021 &nbsp; v1.2 </p>
                
            </div>
        </section>
    </main>
    
        <footer>
        <script src="../scripts/footerGenerate.js"></script>
     </footer> 
    
        <script src="../scripts/contato.js"> </script>
</body>
</html>
 
