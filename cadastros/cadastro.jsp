<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> <!--Pesquisa do CEP-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/cadastro.css">
    <title>Cadastro</title>
     <link rel="icon" href="../icons/logo.png">

</head>
<body>
    <header>
       
        <!-- Mobile Contents -->

        <div id="mobile-header_content">
            <div id="mb-menu_content">
                <input type="checkbox" id="btn_menu">
                <label id="menu_icon" for="btn_menu">&#9776;</label>

                <nav class="menu">
                    <ul class="lists">
                        <li><a href="../paginas/computador.jsp"> Computadores </a></li>
                        <li><a href="../paginas/note.jsp"> Notebooks </a></li>
                        <li><a href="../paginas/componentes.jsp"> Componentes </a></li>
                    </ul> 
    
                    <ul class="lists">  
                        <li><a href="../paginas/carrinho.jsp"> Carrinho</a></li>
                        <li><a href="../paginas/contato.jsp"> Contato</a></li>
                        <li><a href="../paginas/login.jsp"> Login/Cadastro </a></li>
                    </ul>
                </nav>
            </div>

            <div id="mb-title_content" class="nav_box">
                <a href="../index.jsp">
                    <h1>Always Tech</h1>
                </a>
            </div>
        </div>

        <!-- Desktop Contents -->

        <div id="desktop-header_content">
            <div id="sub-menu_content" class="nav_box">
                <div id="sub-menu">
                    <a href="../paginas/produtos.jsp"> Produtos </a>
                    <div id="sub-menu_options">
                        <a href="../paginas/computador.jsp"> Computadores </a>
                        <a href="../paginas/notebook.jsp"> Notebooks </a>
                        <a href="../paginas/componentes.jsp"> Componentes </a>
                    </div>
                </div>
            </div>
            
            <div id="title_content" class="nav_box">
                <a href="../index.jsp">
                    <h1>Always Tech</h1>
                </a>
            </div>
            
            <div id="img_content" class="nav_box">
                <div id="img_box">
                    <div title="Carrinho" class="img_box">
                        <a href="../paginas/carrinho.jsp"> <img src="https://i.ibb.co/DzwLVxL/car-icon.png" alt="car-icon"></a>
                    </div>
                    <div title="Contato" class="img_box">
                        <a href="../paginas/contato.jsp"><img src="https://i.ibb.co/CbPth0D/contato.png" alt="contato"></a>
                    </div>
                    <div title="Perfil" class="img_box">
                        <a href="../paginas/login.jsp"> <img src="https://i.ibb.co/pbxSn8y/perfil.png" alt="perfil"></a>
                    </div>
                </div>
            </div>
        </div>
 
    </header>

    <main>
        <section>
                <h1 class="ttl"> Cadastre-se </h1>
                
                <form method="POST" id="formulario" name="formulario" action="../gravar/gravar.jsp">
                 
                    <div class="box-left">
                    <div class="alinhar">
                    <label class="frm"> Nome Completo: </label>
                   <input type="text" id="nome" name="nome" placeholder="Digite seu Nome aqui">
                    </div>

                  <div class="alinhar">
                   <label class="frm"> CPF: </label>
                   <input oninput="mascara(this)" type="text" name="cpf" placeholder="Digite seu CPF" > 
                  </div>
                    
                    <div class="alinhar">
                    <label class="frm"> Email: </label>
                    <input type="email" id="email" name="email" placeholder="Digite seu E-mail">
                    </div>
                    
                    <div class="alinhar">
                   <label class="frm"> Celular: </label>
                   <input oninput="masc(this)" type="tel" id="cel" name="celular" placeholder="Digite seu Celular">
                    </div>
                    
                    <div class="alinhar">
                    <label class="frm">  Data de Nascimento: </label>
                    <input type="date" id="dataNasc" name="dt_nascimento" placeholder="Digite sua Data de Nascimento">
                    </div>
                    
                    <div class="alinhar">
                    <label class="frm"> CEP: </label>
                    <input type="number" id="cep" name="cep" placeholder="Digite seu CEP">
                     </div>
                    <div class="alinharcep"> 
                    <button class="btnc" type="button" id="buscar_cep"> Buscar CEP </button>
                    </div>
                   
                        
                    <div class="alinhar">
                   <label class="frm"> Endereço / Nº: </label>
                   <input type="text" id="endereco" name="endereco" placeholder="Digite seu Endereço com o Número">
                    </div>
                        
                   <div class="alinhar">
                   <label class="frm"> Bairro </label>
                   <input type="text" id="bairro" name="bairro" placeholder="Digite seu Bairro">
                   </div>
                    
                   <div class="alinhar">
                   <label class="frm"> Cidade: </label>
                   <input type="text" id="cidade" name="cidade" placeholder="Digite sua Cidade">
                    </div>    
                        
                  
                    </div>
                    
                    </div>
                    
                     <div class="box-right">
                    <div class="lg">
                    <img src="https://i.ibb.co/jTMy4K1/Always-Tech-4.png" alt="Always-Tech-4">
                   </div>
                    
                    <div class="alinhar2">     
                    <label class="frm"> Login: </label> 
                    <input type="text" id="login" name="login" placeholder="Digite seu Login">
                    </div>
                    
                    <div class="alinhar2">
                     <label class="frm"> Senha: </label>
                     <input type="password" id="senha" name="senha" placeholder="Digite sua Senha">
                    </div>
                     
                    <div class="botoes">
                    <a href="../paginas/login.jsp"> <input type="button" id="btn" value="Voltar"> </a>
                    <input type="submit" id="butn" value="Cadastrar">
                    </div>
                    
                    </div>
                    
                    
                    
                </form>
            </div>
        </section>
            
    </main>

      <script src="../scripts/cadastro.js"> </script>

</body>
</html>
