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
   <link rel="stylesheet" href="estilos.css" type="text/css" />
  
</head>
<body>
<%    
    String sql, cpf="", senha="";
    ResultSet rs=null;
    try {
        sql = "SELECT * FROM clientes WHERE cpf = ? "; //'" + request.getParameter("rgmbuscado") + "'";
        pstm = con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("cpf"));
        rs = pstm.executeQuery();
      
        if(rs.next()) {
            cpf = rs.getString("cpf"); 
            senha = rs.getString("senha"); 
            
        }
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally { //parte finally, sempre será executada
        if (rs != null) rs.close();
        if (pstm != null) pstm.close();
        if (con != null) con.close();
    }
    //para permitir caracteres especiais do nome do aluno na URL:
    String cpfEn = URLEncoder.encode(cpf, StandardCharsets.UTF_8.toString());
    String dst = "buscarCPF.jsp?cpf=" + cpfEn + "&senha=" + senha;
    response.sendRedirect(dst);
%>
</body>
</html>