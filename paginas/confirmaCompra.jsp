<%@page import="java.util.ArrayList"%>
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
    
    <%
        //ResultSet rs;
        String sql;
        
        String cpf = (String) session.getAttribute("cpf");
        ArrayList <String> prod = (ArrayList) application.getAttribute("prod");
        
        for(String pd : prod){
                          
              sql = "INSERT INTO compras (cpf, cod_prod, nome_prod, preco, imagem) VALUES (?, ?, ?, ?, ?)";
              pstm = con.prepareStatement(sql);
              pstm.setString(1,  cpf);
              pstm.setInt(2, Integer.parseInt(pd.split("_")[0]));
              pstm.setString(3, pd.split("_")[3]);
              pstm.setFloat(4, Float.parseFloat(pd.split("_")[4]));
              pstm.setString(5, (pd.split("_")[2]));
              pstm.executeUpdate();         
         }
        
         
        
    %>
    
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
              <script> 
                Swal.fire({
                title: 'Compra Efetuada Com Sucesso!',
                text: 'Agradeçemos Sua Preferência',
                icon: 'sucess',
                confirmButtonText: '<a href="../paginas/perfilUser.jsp"> OK </a>' 
                });  
              </script>  
</body>
</html>
