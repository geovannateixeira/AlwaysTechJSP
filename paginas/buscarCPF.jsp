<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="java.net.URLEncoder"%>
<%@ include file="../conectar_1.jsp" %>
<%    
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<html>
<head>
  <meta charset="UTF-8" />
  
</head>
<body>
<%    
    String sql, cpf="";
    ResultSet rs=null;
    try {
        sql = "SELECT * FROM clientes WHERE cpf = ? "; 
        pstm = con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("cpf"));
        rs = pstm.executeQuery();
      
        if(rs.next()) {
            cpf = rs.getString("cpf"); 
            
        }
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally { 
        if (rs != null) rs.close();
        if (pstm != null) pstm.close();
        if (con != null) con.close();
    }
    String dst = "../paginas/esqueciSenha.jsp?cpf=" + cpf;
    response.sendRedirect(dst);
%>
</body>
</html>