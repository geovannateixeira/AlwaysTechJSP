<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gerador de Formatos</title>
       <link rel="icon" href="../icons/logo.png">
      <link rel="stylesheet" href="../styles/header.css">
      <link rel="stylesheet" href="../styles/XmleJson.css">
    </head>
    <body>
        
         <header> 
              <script src="../scripts/headerGenerate.js"> </script>
        </header>
        
        <section>
            <h1 class="titulo"> Gerador de Formatos XML e JSON</h1> <br>
            <h1> Escolha um Formato Abaixo </h1>
            
            <button onclick="window.location.href = 'gerarXML.jsp'"> Gerar XML </button>
            <button onclick="window.location.href = 'gerarJSON.jsp'"> Gerar JSON </button>
            
            
        </section>
    </body>
</html>
