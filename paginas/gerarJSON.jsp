<%@page contentType="text/json" pageEncoding="UTF-8"%>
<%@include file="../conectar_1.jsp" %>
        <%
            response.setHeader("Access-Control-Allow-Origin", "*");
        %>
          {
    "funcionarios":
    [
    <%
        ResultSet rs=null;
        String sql;
        try{
             sql = "SELECT * FROM func";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"nome":<%= rs.getString("nome")%>, 
        "cpf":"<%= rs.getString("cpf")%>",
        "email":<%= rs.getString("email")%>, 
        "celular":<%= rs.getString("celular")%>,
        "dt_nascimento":"<%= rs.getDate("dt_nascimento")%>,
        "cep":"<%= rs.getInt("cep")%>,
        "endereco":"<%= rs.getString("endereco")%>,
        "bairro":"<%= rs.getString("bairro")%>,
        "cidade":"<%= rs.getString("cidade")%>,
        "dt_adm":"<%= rs.getDate("dt_adm")%>,
        "cargo":"<%= rs.getString("cargo")%>,
        "salario":"<%= rs.getFloat("salario")%>,
        "login":"<%= rs.getString("login")%>,
        "senha":"<%= rs.getString("senha")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        } 
        %>
    ]
    } 
    
    {
    "usuarios":
    [
    <%
        try{
             sql = "SELECT * FROM clientes";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"nome":<%= rs.getString("nome")%>, 
        "cpf":"<%= rs.getString("cpf")%>",
        "email":<%= rs.getString("email")%>, 
        "celular":<%= rs.getString("celular")%>,
        "dt_nascimento":"<%= rs.getDate("dt_nascimento")%>,
        "cep":"<%= rs.getInt("cep")%>,
        "endereco":"<%= rs.getString("endereco")%>,
        "bairro":"<%= rs.getString("bairro")%>,
        "cidade":"<%= rs.getString("cidade")%>,
        "login":"<%= rs.getString("login")%>,
        "senha":"<%= rs.getString("senha")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        } 
        %>
    ]
    }
    
    
         {
    "computadores":
    [
    <%
        try{
             sql = "SELECT * FROM computador";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"cod_prod":<%= rs.getInt("cod_prod")%>, 
        "nome_prod":"<%= rs.getString("nome_prod")%>",
        "descricao":<%= rs.getString("descricao")%>, 
        "armazenamento":<%= rs.getString("armazenamento")%>,
        "processador":"<%= rs.getString("processador")%>,
        "memoria_ram":"<%= rs.getString("memoria_ram")%>,
        "placa_video":"<%= rs.getString("placa_video")%>,
        "so":"<%= rs.getString("so")%>,
        "fonte":"<%= rs.getString("fonte")%>,
        "preco":"<%= rs.getFloat("preco")%>,
        "qtd":"<%= rs.getInt("qtd")%>,
        "qtd_vendido":"<%= rs.getInt("qtd_vendido")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        }
        %>
    ]
    }
    
         {
    "fonte":
    [
    <%
        try{
             sql = "SELECT * FROM fonte";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"cod_prod":<%= rs.getInt("cod_prod")%>, 
        "nome_prod":"<%= rs.getString("nome_prod")%>",
        "descricao":<%= rs.getString("descricao")%>, 
        "potencia":<%= rs.getString("potencia")%>,
        "voltagem":"<%= rs.getString("voltagem")%>,
        "certificacao":"<%= rs.getString("certificacao")%>,
        "pinos":"<%= rs.getInt("pinos")%>,
        "preco":"<%= rs.getFloat("preco")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        }
        %>
    ]
    }
    
      {
    "hdd":
    [
    <%
        try{
             sql = "SELECT * FROM hdd";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"cod_prod":<%= rs.getInt("cod_prod")%>, 
        "nome_prod":"<%= rs.getString("nome_prod")%>",
        "descricao":<%= rs.getString("descricao")%>, 
        "gb":<%= rs.getString("gb")%>,
        "modelo":"<%= rs.getString("modelo")%>,
        "rpm":"<%= rs.getInt("rpm")%>,
        "preco":"<%= rs.getInt("preco")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        }
        %>
    ]
    }
      {
    "notebook":
    [
    <%
        try{
             sql = "SELECT * FROM notebook";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"cod_prod":<%= rs.getInt("cod_prod")%>, 
        "nome_prod":"<%= rs.getString("nome_prod")%>",
        "descricao":<%= rs.getString("descricao")%>, 
        "armazenamento":<%= rs.getString("armazenamento")%>,
        "processador":"<%= rs.getString("processador")%>,
        "memoria_ram":"<%= rs.getString("memoria_ram")%>,
        "tamanho_tela":"<%= rs.getString("tamanho_tela")%>,
        "placa_mae":"<%= rs.getString("placa_mae")%>,
        "placa_video":"<%= rs.getString("placa_video")%>,
        "so":"<%= rs.getString("so")%>,
        "wireless_rede":"<%= rs.getString("wireless_rede")%>,
        "bateria":"<%= rs.getString("bateria")%>,
        "preco":"<%= rs.getInt("preco")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        }
        %>
    ]
    }
    
     {
    "placa_mae":
    [
    <%
        try{
             sql = "SELECT * FROM placa_mae";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"cod_prod":<%= rs.getInt("cod_prod")%>, 
        "nome_prod":"<%= rs.getString("nome_prod")%>",
        "descricao":<%= rs.getString("descricao")%>, 
        "type_cpu":<%= rs.getString("type_cpu")%>,
        "chipset":"<%= rs.getString("chipset")%>,
        "slots_ram":"<%= rs.getString("slots_ram")%>,
        "video_integrado":"<%= rs.getString("video_integrado")%>,
        "usb":"<%= rs.getString("usb")%>,
        "wifi":"<%= rs.getString("wifi")%>,
        "bios":"<%= rs.getString("bios")%>,
        "preco":"<%= rs.getInt("preco")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        }
        %>
    ]
    }
    
     {
    "placa_video":
    [
    <%
        try{
             sql = "SELECT * FROM placa_video";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"cod_prod":<%= rs.getInt("cod_prod")%>, 
        "nome_prod":"<%= rs.getString("nome_prod")%>",
        "descricao":<%= rs.getString("descricao")%>, 
        "gb":<%= rs.getString("gb")%>,
        "clock":"<%= rs.getString("clock")%>,
        "conexao":"<%= rs.getString("conexao")%>,
        "pinos":"<%= rs.getString("pinos")%>,
        "preco":"<%= rs.getInt("preco")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        }
        %>
    ]
    }
    
     {
    "processador":
    [
    <%
        try{
             sql = "SELECT * FROM processador";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"cod_prod":<%= rs.getInt("cod_prod")%>, 
        "nome_prod":"<%= rs.getString("nome_prod")%>",
        "descricao":<%= rs.getString("descricao")%>, 
        "modelo":<%= rs.getString("modelo")%>,
        "marca":"<%= rs.getString("marca")%>,
        "ghz":"<%= rs.getString("ghz")%>,
        "soquete":"<%= rs.getString("soquete")%>,
        "preco":"<%= rs.getInt("preco")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        }
        %>
    ]
    }
    
     {
    "ram":
    [
    <%
        try{
             sql = "SELECT * FROM ram";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"cod_prod":<%= rs.getInt("cod_prod")%>, 
        "nome_prod":"<%= rs.getString("nome_prod")%>",
        "descricao":<%= rs.getString("descricao")%>, 
        "gb":<%= rs.getString("gb")%>,
        "tecnologia":"<%= rs.getString("tecnologia")%>,
        "frequencia":"<%= rs.getString("frequencia")%>,
        "preco":"<%= rs.getInt("preco")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        }
        %>
    ]
    }
    
      {
    "ssd":
    [
    <%
        try{
             sql = "SELECT * FROM ssd";
             pstm = con.prepareStatement(sql);
             rs = pstm.executeQuery();
             while(rs.next()) {
    %>
    
        {"cod_prod":<%= rs.getInt("cod_prod")%>, 
        "nome_prod":"<%= rs.getString("nome_prod")%>",
        "descricao":<%= rs.getString("descricao")%>, 
        "gb":<%= rs.getString("gb")%>,
        "modelo":"<%= rs.getString("modelo")%>,
        "vel_leitura":"<%= rs.getString("vel_leitura")%>,
        "vel_escrita":"<%= rs.getString("vel_escrita")%>,
        "preco":"<%= rs.getInt("preco")%>"} <% if(!rs.isLast()) { %>, <% }

        } 
        } catch(Exception ex){
        
            out.print(ex.getMessage());

        } finally { 
            if(rs!=null) rs.close(); 
            if(pstm!=null) pstm.close(); 
            }
        %>
    ]
    }
    
    

