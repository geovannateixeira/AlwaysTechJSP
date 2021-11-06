<%@include file="../validacao.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/login.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
   <link rel="stylesheet" href="../styles/footer.css">
    
    <title>Login</title>
    <link rel="icon" href="../icons/logo.png">
    
</head>


<body>
    
     <header> 
              <script src="../scripts/headerGenerate.js"> </script>
        </header>

    <main>
        <section>
           
            <div id="login">
                <img src="https://i.ibb.co/pbxSn8y/perfil.png" alt="perfil"> <h1> Login </h1>

                <form action="../validacao.jsp" method="post">
                    <label for="login"> Login </label>
                    <input type="login" name="login" id="lg" placeholder="Digite Seu Login" >

                    <label for="password"> Senha </label>
                    <input type="password" name="password" id="password" placeholder="Digite Sua Senha">

                    <a href="../paginas/esqueciSenha.jsp" id="forgot-pass"> Esqueceu a Senha? </a>
                    <input type="submit" value="login" onclick="Login()"> 
                   
                </form>

            </div>
            
            <div id="registro">
                <img src="https://i.ibb.co/hKqzwk9/cadastro.png" alt="cadastro">
                    <p> Ainda Não Tem Uma Conta?</p>
                    <a href="../cadastros/cadastro.jsp"> <input type="submit" value="Cadastre-se" > </a>
                  
                </div>

           
           
        </section>
            
    </main>
        
        <footer>
        <script src="../scripts/footerGenerate.js"></script>
     </footer> 
    
      <script src="../scripts/headerGenerate.js"> </script>
</body>
</html>