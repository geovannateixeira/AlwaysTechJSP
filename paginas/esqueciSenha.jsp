<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recuperar Senha</title>
    </head>
    <body>
          <%
            
            String cpf = request.getParameter("cpf");
            String senha = request.getParameter("senha");
            if (cpf == null) cpf = "";
            if (senha == null) senha = "";
        %>
        <h2> Recuperar Senha </h2>

        <form method="post" action="buscarCPF.jsp" accept-charset="utf-8" >
            <span class="rotulo">CPF: </span>
            <input name="cpf" oninput="mascara(this)" type="text" />
            <input type="submit" name="button" value="Buscar" />           
        </form>

        <br/>

        <form method="post" action="alterarSenha.jsp" accept-charset="utf-8" >
            <span class="rotulo">CPF: </span>
            <input name="cpf" oninput="mascara(this)" type="text" disable="" readonly="" value="<%=cpf%>" />
            <br/>
            <span class="rotulo">Senha:  </span> 
            <input name="senha" type="text" value="<%=senha%>"/>
            <br/>
                             
            <input type="button" name="button2" value="Alterar" />        
        </form>  


        <br/><br/>
        <a href="../paginas/login.jsp">Voltar</a> para a página inicial. 
        <script src="../scripts/cadastro.js"> </script>
    </body>
</html>
