<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<%@include file="../conectar_1.jsp" %>

    <%
        response.setHeader("Access-Control-Allow-Origin", "*");
    %>

    <funcionarios>
    <%
        ResultSet rs = null;
        String sql;
        
             try{
                sql = "SELECT * FROM func";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
    %>
    
    <func>
        <nome> <%= rs.getString("nome") %> </nome>
        <cpf> <%= rs.getString("cpf") %> </cpf>
        <email> <%= rs.getString("email") %> </email>
        <celular> <%= rs.getString("celular") %> </celular>
        <dt_nascimento> <%= rs.getDate("dt_nascimento") %> </dt_nascimento>
        <cep> <%= rs.getInt("cep") %> </cep>
        <endereco> <%= rs.getString("endereco") %> </endereco>
        <bairro> <%= rs.getString("bairro") %> </bairro>
        <cidade> <%= rs.getString("cidade") %> </cidade>
        <dt_adm> <%= rs.getDate("dt_adm") %> </dt_adm>
        <cargo> <%= rs.getString("cargo") %> </cargo>
        <salario> <%= rs.getFloat("salario") %> </salario>
        <login> <%= rs.getString("login") %> </login>
        <senha> <%= rs.getString("senha") %> </senha>
    </func>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } finally {
            if(rs!=null) rs.close();
         if(pstm!=null) pstm.close(); } 
%>
</funcionarios>
<!--
<computadores>
<%--
    
        try{
             sql = "SELECT * FROM computador";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
%>
    <computador>
        <cod_prod> <%= rs.getInt("cod_prod") %> </cod_prod>
        <nome_prod> <%= rs.getString("nome_prod") %> </nome_prod>
        <descricao> <%= rs.getString("descricao") %> </descricao>
        <armazenamento> <%= rs.getString("armazenamento") %> </armazenamento>
        <processador> <%= rs.getString("processador") %> </processador>
        <memoria_ram> <%= rs.getString("memoria_ram") %> </memoria_ram>
        <placa_video> <%= rs.getString("placa_video") %> </placa_video>
        <so> <%= rs.getString("so") %> </so>
        <fonte> <%= rs.getString("fonte") %> </fonte>
        <preco> <%= rs.getFloat("preco") %> </preco>
        <qtd> <%= rs.getInt("qtd") %> </qtd>
        <qtd_vendido> <%= rs.getInt("qtd_vendido") %> </qtd_vendido>
        
        
        
        
    </computador>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
--%>
</computadores>-->


    


