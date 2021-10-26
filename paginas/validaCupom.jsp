<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormatSymbols"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../conectar_1.jsp" %>
    <%  
       // out.print("<section>");
       // out.print("<h1 class='titulo'>Valor da Compra:  R$ " + request.getParameter("total") + "</h1> <br>");
       // out.print("<h1>Código do Cupom: " + request.getParameter("cupom") + "</h1><br>" );
        //out.print("<br>");
        
        ResultSet rs = null;
        String sql;
        
            try{
                sql = "SELECT valor FROM cupom WHERE cod_cupom = ?";
                pstm = con.prepareStatement(sql);
                pstm.setString(1,  request.getParameter("cupom") );
                rs = pstm.executeQuery();
                
            if (rs.next()) {
                
                   double desc = rs.getInt("valor");
                   double tot = Double.parseDouble(request.getParameter("total"));
                   
                   double vd = desc/100;
                   
                   double vf = tot - (vd * tot);
                   
                   //Locale.setDefault(new Locale("pt", "BR"));
                   
                 DecimalFormat df = new DecimalFormat("#,##0.00");
		
		 String dfm = df.format(tot);
		
		 String dx = df.format(vf);
                    
                    
                   session.setAttribute("valorProdutos", dx);
                   
                   response.sendRedirect("../paginas/compras.jsp?valorProdutos="+session.getAttribute("valorProdutos")+"&total="+dfm+"&produto="+request.getParameter("produto")+"&cupom="+request.getParameter("cupom")+"&desconto="+rs.getInt("valor")+"");
               
                } else{
                    response.sendRedirect("../paginas/compras.jsp");
                }
                 } catch (Exception ex){
                    out.print(ex.getMessage());
                }

             %>
   
            <%
                if(pstm!=null)pstm.close();
                if(con!=null)con.close(); 
            %>

