<%@ include file="../validacao.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/func.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
   <link rel="stylesheet" href="../styles/footer.css">
    <title>Funcionário</title>
     <link rel="icon" href="../icons/logo.png">
</head>
<body>
<%
    String login = (String) session.getAttribute("loginADM");
    if (login == null){
        response.sendRedirect("login.jsp");
    } 
%>
    
    <header> 
              <script src="../scripts/headerGenerate.js"> </script>
        </header>

    <main>
        <section>
            <div class="funcao">
                <a href="../cadastros/cdsfunc.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="Black"  viewBox="0 0 16 16" style="margin-left: 10px;">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                        <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
                    </svg>
                        
                    <div class="text">
                        <p class="txtfunc"> Cadastrar Funcionário </p>
                    </div>
                </a>
            </div>
            
            <div class="funcao">
                <a href="../listar/lista_func.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16" style="margin-left: 10px;">
                        <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"/>
                    </svg>
    
                    <div class="text">
                        <p class="txtfunc"> Listar Funcionários </p>
                    </div>
                </a>
            </div>

            <div class="funcao">
                <a href="../listar/lista_prod.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="currentColor" class="bi bi-box-seam" viewBox="0 0 16 16" style="margin-left: 10px;">
                        <path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5l2.404.961L10.404 2l-2.218-.887zm3.564 1.426L5.596 5 8 5.961 14.154 3.5l-2.404-.961zm3.25 1.7-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/>
                    </svg>
                     
                    <div class="text">
                        <p class="txtfunc"> Produtos / Estoque </p>
                    </div>
                </a>
            </div>

            <div class="funcao">
                <a href="../cadastros/cdsprod.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16" style="margin-left: 10px;">
                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                        <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                    </svg>
                     
                    <div class="text">
                        <p class="txtfunc"> Cadastrar Produto </p>
                    </div>
                </a>
            </div>

            <div class="funcao">
                <a href="../listar/lista.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16" style="margin-left: 10px;">
                        <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                        <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                    </svg>

                    <div class="text">
                        <p class="txtfunc"> Listar Usuários </p>
                    </div>  
                      </a>              
                </div>
            
                  <div class="funcao">
                <a href="XMLeJSON.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="178" height="178" fill="currentColor" class="bi bi-code-slash" viewBox="0 0 16 16" style="margin-left: 12px;">
                    <path d="M10.478 1.647a.5.5 0 1 0-.956-.294l-4 13a.5.5 0 0 0 .956.294l4-13zM4.854 4.146a.5.5 0 0 1 0 .708L1.707 8l3.147 3.146a.5.5 0 0 1-.708.708l-3.5-3.5a.5.5 0 0 1 0-.708l3.5-3.5a.5.5 0 0 1 .708 0zm6.292 0a.5.5 0 0 0 0 .708L14.293 8l-3.147 3.146a.5.5 0 0 0 .708.708l3.5-3.5a.5.5 0 0 0 0-.708l-3.5-3.5a.5.5 0 0 0-.708 0z"/>
                    </svg>

                    <div class="text">
                        <p class="txtfunc"> XML / JSON </p>
                    </div> 
                    </a>
                    </div>

                 <div class="funcao">
                <a href="logoff.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="175" height="177" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
                        <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                    </svg>

                    <div class="text">
                        <p class="txtfunc"> Sair </p>
                    </div> 
                    </a>
                    </div>
              
        </section>
    </main>
    
      <footer>
        <script src="../scripts/footerGenerate.js"></script>
      </footer> 

      <script src="../scripts/headerGenerate.js"> </script>
 
</body>
</html>
