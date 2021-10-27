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

        } finally { 
            if(rs!=null) rs.close(); 
            if(pstm!=null) pstm.close(); 
            }
        %>
    ]
    }
    

