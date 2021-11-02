<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<%@include file="../conectar_1.jsp" %>

    <%
        response.setHeader("Access-Control-Allow-Origin", "*");
    %>


   <ListagemTabelasCT>
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
        } 
%>
       </funcionarios>
       
       <usuarios>
    <%
             try{
                sql = "SELECT * FROM clientes";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
    %>
    
    <usuarios>
        <nome> <%= rs.getString("nome") %> </nome>
        <cpf> <%= rs.getString("cpf") %> </cpf>
        <email> <%= rs.getString("email") %> </email>
        <celular> <%= rs.getString("celular") %> </celular>
        <dt_nascimento> <%= rs.getDate("dt_nascimento") %> </dt_nascimento>
        <cep> <%= rs.getInt("cep") %> </cep>
        <endereco> <%= rs.getString("endereco") %> </endereco>
        <bairro> <%= rs.getString("bairro") %> </bairro>
        <cidade> <%= rs.getString("cidade") %> </cidade>
        <login> <%= rs.getString("login") %> </login>
        <senha> <%= rs.getString("senha") %> </senha>
    </usuarios>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
%>
       </usuarios>

<computadores>
<%
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
%>
</computadores>


<fontes>
<%
        try{
             sql = "SELECT * FROM fonte";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
%>
    <fonte>
        
        <cod_prod> <%= rs.getInt("cod_prod") %> </cod_prod>
        <nome_prod> <%= rs.getString("nome_prod") %> </nome_prod>
        <descricao> <%= rs.getString("descricao") %> </descricao>
        <potencia> <%= rs.getString("potencia") %> </potencia>
        <voltagem> <%= rs.getString("voltagem") %> </voltagem>
        <certificacao> <%= rs.getString("certificacao") %> </certificacao>
        <pinos> <%= rs.getInt("pinos") %> </pinos>
        <preco> <%= rs.getFloat("preco") %> </preco>
        <qtd> <%= rs.getInt("qtd") %> </qtd>
        <qtd_vendido> <%= rs.getInt("qtd_vendido") %> </qtd_vendido>
        
    </fonte>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
%>
</fontes>

<hds>
<%
        try{
             sql = "SELECT * FROM hdd";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
%>
    <hdd>
        
        <cod_prod> <%= rs.getInt("cod_prod") %> </cod_prod>
        <nome_prod> <%= rs.getString("nome_prod") %> </nome_prod>
        <descricao> <%= rs.getString("descricao") %> </descricao>
        <gb> <%= rs.getString("gb") %> </gb>
        <modelo> <%= rs.getString("modelo") %> </modelo>
        <rpm> <%= rs.getInt("rpm") %> </rpm>
        <preco> <%= rs.getFloat("preco") %> </preco>
        <qtd> <%= rs.getInt("qtd") %> </qtd>
        <qtd_vendido> <%= rs.getInt("qtd_vendido") %> </qtd_vendido>
        
    </hdd>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
%>
</hds>

<notebooks>
<%
        try{
             sql = "SELECT * FROM notebook";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
%>
    <notebook>
        
        <cod_prod> <%= rs.getInt("cod_prod") %> </cod_prod>
        <nome_prod> <%= rs.getString("nome_prod") %> </nome_prod>
        <descricao> <%= rs.getString("descricao") %> </descricao>
        <armazenamento> <%= rs.getString("armazenamento") %> </armazenamento>
        <processador> <%= rs.getString("processador") %> </processador>
        <memoria_ram> <%= rs.getString("memoria_ram") %> </memoria_ram>
        <tamanho_tela> <%= rs.getString("tamanho_tela") %> </tamanho_tela>
        <placa_mae> <%= rs.getString("placa_mae") %> </placa_mae>
        <placa_video> <%= rs.getString("placa_video") %> </placa_video>
        <so> <%= rs.getString("so") %> </so>
        <wireless_rede> <%= rs.getString("wireless_rede") %> </wireless_rede>
        <bateria> <%= rs.getString("bateria") %> </bateria>
        <preco> <%= rs.getFloat("preco") %> </preco>
        <qtd> <%= rs.getInt("qtd") %> </qtd>
        <qtd_vendido> <%= rs.getInt("qtd_vendido") %> </qtd_vendido>
        
    </notebook>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
%>
</notebooks>

<placa_mae>
<%
        try{
             sql = "SELECT * FROM placa_mae";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
%>
    <placa_mae>
        
        <cod_prod> <%= rs.getInt("cod_prod") %> </cod_prod>
        <nome_prod> <%= rs.getString("nome_prod") %> </nome_prod>
        <descricao> <%= rs.getString("descricao") %> </descricao>
        <type_cpu> <%= rs.getString("type_cpu") %> </type_cpu>
        <chipset> <%= rs.getString("chipset") %> </chipset>
        <slots_ram> <%= rs.getString("slots_ram") %> </slots_ram>
        <video_integrado> <%= rs.getString("video_integrado") %> </video_integrado>
        <usb> <%= rs.getString("usb") %> </usb>
        <wifi> <%= rs.getString("wifi") %> </wifi>
        <bios> <%= rs.getString("bios") %> </bios>
        <preco> <%= rs.getFloat("preco") %> </preco>
        <qtd> <%= rs.getInt("qtd") %> </qtd>
        <qtd_vendido> <%= rs.getInt("qtd_vendido") %> </qtd_vendido>
        
    </placa_mae>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
%>
</placa_mae>

<placa_video>
<%
        try{
             sql = "SELECT * FROM placa_video";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
%>
    <placa_video>
        
        <cod_prod> <%= rs.getInt("cod_prod") %> </cod_prod>
        <nome_prod> <%= rs.getString("nome_prod") %> </nome_prod>
        <descricao> <%= rs.getString("descricao") %> </descricao>
        <gb> <%= rs.getString("gb") %> </gb>
        <clock> <%= rs.getString("clock") %> </clock>
        <conexao> <%= rs.getString("conexao") %> </conexao>
        <pinos> <%= rs.getString("pinos") %> </pinos>
        <preco> <%= rs.getFloat("preco") %> </preco>
        <qtd> <%= rs.getInt("qtd") %> </qtd>
        <qtd_vendido> <%= rs.getInt("qtd_vendido") %> </qtd_vendido>
        
    </placa_video>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
%>
</placa_video>

<processador>
<%
        try{
             sql = "SELECT * FROM processador";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
%>
    <processador>
        
        <cod_prod> <%= rs.getInt("cod_prod") %> </cod_prod>
        <nome_prod> <%= rs.getString("nome_prod") %> </nome_prod>
        <descricao> <%= rs.getString("descricao") %> </descricao>
        <modelo> <%= rs.getString("modelo") %> </modelo>
        <marca> <%= rs.getString("marca") %> </marca>
        <ghz> <%= rs.getString("ghz") %> </ghz>
        <soquete> <%= rs.getString("soquete") %> </soquete>
        <preco> <%= rs.getFloat("preco") %> </preco>
        <qtd> <%= rs.getInt("qtd") %> </qtd>
        <qtd_vendido> <%= rs.getInt("qtd_vendido") %> </qtd_vendido>
        
    </processador>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
%>
</processador>

<ram>
<%
        try{
             sql = "SELECT * FROM ram";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
%>
    <ram>
        
        <cod_prod> <%= rs.getInt("cod_prod") %> </cod_prod>
        <nome_prod> <%= rs.getString("nome_prod") %> </nome_prod>
        <descricao> <%= rs.getString("descricao") %> </descricao>
        <gb> <%= rs.getString("gb") %> </gb>
        <tecnologia> <%= rs.getString("tecnologia") %> </tecnologia>
        <frequencia> <%= rs.getString("frequencia") %> </frequencia>
        <preco> <%= rs.getFloat("preco") %> </preco>
        <qtd> <%= rs.getInt("qtd") %> </qtd>
        <qtd_vendido> <%= rs.getInt("qtd_vendido") %> </qtd_vendido>
        
    </ram>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
%>
</ram>

<ssd>
<%
        try{
             sql = "SELECT * FROM ssd";
                pstm = con.prepareStatement(sql);
                rs = pstm.executeQuery();
        
            while(rs.next()){
%>
    <ssd>
        
        <cod_prod> <%= rs.getInt("cod_prod") %> </cod_prod>
        <nome_prod> <%= rs.getString("nome_prod") %> </nome_prod>
        <descricao> <%= rs.getString("descricao") %> </descricao>
        <gb> <%= rs.getString("gb") %> </gb>
        <modelo> <%= rs.getString("modelo") %> </modelo>
        <vel_leitura> <%= rs.getString("vel_leitura") %> </vel_leitura>
        <vel_escrita> <%= rs.getString("vel_escrita") %> </vel_escrita>
        <preco> <%= rs.getFloat("preco") %> </preco>
        <qtd> <%= rs.getInt("qtd") %> </qtd>
        <qtd_vendido> <%= rs.getInt("qtd_vendido") %> </qtd_vendido>
        
    </ssd>

<%
        } //fim do while
        } catch(Exception ex){
        out.print(ex.getMessage());
        } 
%>
</ssd>

</ListagemTabelasCT>
    


