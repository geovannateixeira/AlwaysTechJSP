<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conecta.jsp" %>

<%
    if(session.getAttribute("loginADM") != null) {
        response.sendRedirect("paginas/funcionario.jsp");
    }
    else if(session.getAttribute("login") != null){
        response.sendRedirect("paginas/perfilUser.jsp");
    }
    else{
        response.sendRedirect("paginas/login.jsp");
    }                         
%>
