<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  session.invalidate();
  application.setAttribute("prod",null);
  response.sendRedirect("../paginas/login.jsp");
%>

