<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    
    <title>Finalizar Comprar</title>
    <link rel="icon" href="../icons/logo.png">
    <link rel="stylesheet" href="../styles/header.css">
    
</head>
<body>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script> 
                Swal.fire({
                title: 'Compra Efetuada Com Sucesso!',
                text: 'Agradeçemos Sua Preferência',
                icon: 'sucess',
                confirmButtonText: '<a href="../index.jsp"> OK </a> ' 
                });
                
              </script>  
</body>
</html>
