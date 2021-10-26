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
        sql = "DELETE '" + request.getParameter("nome_prod") + "' FROM computador WHERE cod_prod = " + request.getParameter("cod_prod") + "";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally { 
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    response.sendRedirect("../listar/lista_prod.jsp");
%>

<%    
    try {
        sql = "DELETE FROM notebook WHERE cod_prod = '" + request.getParameter("cod_prod") + "'";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally { 
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    //response.sendRedirect("../listar/lista_prod.jsp");
%>

<%    
    try {
        sql = "DELETE FROM fonte WHERE cod_prod = '" + request.getParameter("cod_prod") + "'";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally { 
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    //response.sendRedirect("../listar/lista_prod.jsp");
%>

<%    
    try {
        sql = "DELETE FROM hdd WHERE cod_prod = '" + request.getParameter("cod_prod") + "'";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally {
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    //response.sendRedirect("../listar/lista_prod.jsp");
%>

<%    
    try {
        sql = "DELETE FROM placa_mae WHERE cod_prod = '" + request.getParameter("cod_prod") + "'";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally {
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    //response.sendRedirect("../listar/lista_prod.jsp");
%>

<%    
    try {
        sql = "DELETE FROM placa_video WHERE cod_prod = '" + request.getParameter("cod_prod") + "'";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally { 
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    //response.sendRedirect("../listar/lista_prod.jsp");
%>

<%    
    try {
        sql = "DELETE FROM processador WHERE cod_prod = '" + request.getParameter("cod_prod") + "'";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally { 
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    //response.sendRedirect("../listar/lista_prod.jsp");
%>

<%    
    try {
        sql = "DELETE FROM ram WHERE cod_prod = '" + request.getParameter("cod_prod") + "'";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally {
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    //response.sendRedirect("../listar/lista_prod.jsp");
%>

<%    
    try {
        sql = "DELETE FROM ssd WHERE cod_prod = '" + request.getParameter("cod_prod") + "'";
        stm.executeUpdate(sql);
    } catch (SQLException ex) {
        out.print(ex.getMessage());
    } 
    finally { 
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    //response.sendRedirect("../listar/lista_prod.jsp");
%>