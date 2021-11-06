<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recuperar Senha</title>
    <link rel="icon" href="../icons/logo.png">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/esqueci.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
   <link rel="stylesheet" href="../styles/footer.css">
    </head>
    <body>
        <header>
             <script src="../scripts/headerGenerate.js"></script>
        </header>
        
        <section>
          <%
            
            String cpf = request.getParameter("cpf");
            if (cpf == null) cpf = "";
        %>
        <h2> Recuperar Senha </h2>

        <form method="post" action="buscarCPF.jsp" accept-charset="utf-8" >
            <span class="rotulo">CPF: </span>
            <input name="cpf" oninput="mascara(this)" type="text" />
            <input type="submit" name="button1" value="Buscar" />           
        </form>

        <br/>

        <form method="post" action="../alterar/alterarSenha.jsp" accept-charset="utf-8" >
            <span class="rotulo">CPF: </span>
            <input name="cpf" oninput="mascara(this)" type="text" disable="" readonly="" value="<%=cpf%>" />
            <br/>
            <span class="rotulo">Senha:  </span> 
            <input name="senha" type="password"  />
            <br/>
                             
            <input type="submit" name="button2" value="Alterar" />        
        </form>  


        <br/><br/>
        <a href="../paginas/login.jsp"> <input type="button" name="button2" value="Voltar" />       </a> 
       
        </section>
       
     <footer>
        <script src="../scripts/footerGenerate.js"></script>
     </footer> 
     
            <script src="../scripts/cadastro.js"> </script>
    </body>
</html>
