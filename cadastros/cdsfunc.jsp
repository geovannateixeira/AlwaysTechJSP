<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> <!--Pesquisa do CEP-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/cdsfunc.css">
    <title>Cadastro Funcionário</title>
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
            <h1> Cadastre-se</h1>
            <form method="post" id="formulario" name="formulario" action="../gravar/grava_func.jsp">

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
                        <input type="e-mail" id="email" name="email" placeholder="Digite seu E-mail">
                    </div> 
                    <div class="alinhar">
                        <label class="frm"> Celular: </label>
                        <input type="number" id="cel" name="celular" placeholder="Digite seu Celular">
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
                    
                    <div class="alinhar">   
                        <label class="frm">  Data de Admissão: </label>
                        <input type="date" id="dataAdm" name="dt_adm" placeholder="Digite a Data de Admissão">
                    </div>
                   
                    
                    
                </div>
                <div class="box-right">
                    <div class="lg">
                       <img src="https://i.ibb.co/jTMy4K1/Always-Tech-4.png" alt="Always-Tech-4">
                    </div>

                     <div class="alinhar2">
                        <label class="frm"> Cargo: </label> 
                        <input type="text" id="cargo" name="cargo" placeholder="Digite seu Cargo">
                    </div>
                    <div class="alinhar2"> 
                        <label class="frm"> Salário: </label> 
                        <input class="caixa" type="number" id="sal" name="salario" placeholder="Digite seu Salário">
                    </div>
                    
                    <div class="alinhar2">
                        <label class="frm"> Login: </label> 
                        <input class="caixa" type="text" id="login" name="login" placeholder="Digite seu Login">
                    </div>
                    
                    <div class="alinhar2">
                        <label class="frm"> Senha: </label> 
                        <input class="caixa" type="password" id="senha" name="senha" placeholder="Digite sua Senha">
                    </div>
                    
                    <div class="botoes">
                        <a href="../paginas/funcionario.jsp"> <input type="button" id="btn" value="Voltar"> </a>
                        <input type="submit" id="btn" value="Cadastrar">
                    </div>
                </div> 
                
                
             </form>
        </section>
    </main>
<script src="../scripts/headerGenerate.js"></script>
 <script src="../scripts/cadastro.js"> </script>
</body>
</html>