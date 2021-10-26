<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conecta.jsp" %>
<%
    String login = (String) session.getAttribute("loginADM");
    if (login == null){
        response.sendRedirect("../paginas/login.jsp");
    } 
%>

<%    
    String sql;
    try {
        sql = "DELETE FROM clientes WHERE nome = '" + request.getParameter("nome") + "'";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally { //parte finally, sempre será executada
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    response.sendRedirect("../listar/lista.jsp");
%>