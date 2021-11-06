<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/cdsproduto.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
   <link rel="stylesheet" href="../styles/footer.css">
    <title>Cadastro Produto</title>
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

    <main>
        <section>
            <h1> Cadastro do Produto</h1>
            <form method="post" id="formulario" name="formulario" action="../gravar/grava_prod.jsp?">
              
               <div class="box-left"> 
                <div class="alinhar">
                    
                    <label for="prods"><b>Escolha o Tipo do Produto:</b></label>

                <select name="prods" id="prods">
                  
                        <option  value="computador">Computador</option>
                        <option  value="notebook">Notebook</option>
                  <optgroup label="Componentes">
                        <option  value="fonte">Fonte</option>
                        <option  value="hdd">HDD</option>
                        <option  value="placa_mae">Placa Mãe</option>
                        <option  value="placa_video">Placa de Video</option>
                        <option  value="processador">Processador</option>
                        <option  value="ram">Memória RAM</option>
                        <option  value="ssd">SSD</option>
                  </optgroup>
                </select>
                </div>
              
                
                <div class="alinhar">
                <label class="frm"> Nome do Produto: </label> 
                <input type="text" id="nome_prod" name="nome_prod" placeholder="Digite o Nome do Produto">
                    </div>
                  
                           
                <div class="alinhar">    
                <label class="frm"> Preço: </label>
                <input type="number"  name="preco" placeholder="Digite o Preço">
                </div>
                    
                <div class="alinhar">
                <label class="frm"> Descrição: </label>
                <input type="text"  name="descricao" placeholder="Descricao do Produto">
                </div>
                
                <div class="alinhar">    
                <label class="frm"> Quantidade: </label> 
                <input type="number"  name="qtd" placeholder="Digite a Quantidade">
                </div>
                
                <div class="box-right">
               
             <div class="alinhar2">
                <a href="../paginas/funcionario.jsp"> <input type="button" id="btn" value="Voltar"> </a>
                <input type="submit" id="btn" value="Cadastrar">
             </div> 
             </div>
                </div> 
                </form>
    </section>
    </main>
        
    <footer>
        <script src="../scripts/footerGenerate.js"></script>
     </footer> 

    <script src="../scripts/headerGenerate.js"> </script>
</body>
</html>

