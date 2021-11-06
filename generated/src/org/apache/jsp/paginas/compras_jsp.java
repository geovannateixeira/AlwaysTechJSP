package org.apache.jsp.paginas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class compras_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/paginas/../conectar_1.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

Connection con=null;
PreparedStatement pstm=null;
try
{
    
    String serverName = "localhost:3306"; 
    String mydatabase = "alwaystech";
  
    String username = "root";
    String password = "newpassword";
    
    String driverName = "com.mysql.jdbc.Driver";

    Class.forName(driverName);
   
    String url = "jdbc:mysql://" + serverName + "/" + mydatabase; 
    con = DriverManager.getConnection(url, username, password);
    
    
}
catch(SQLException ex)
{
    out.print(ex.getMessage());
}

      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"pt-br\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Compras</title>\n");
      out.write("    <link rel=\"icon\" href=\"../icons/logo.png\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../styles/header.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../styles/compras.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <script src=\"../scripts/headerGenerate.js\"></script>\n");
      out.write("    </header>\n");
      out.write(" \n");
      out.write("        <article>\n");
      out.write("        <section class=\"container\">\n");
      out.write("            <h3 class=\"title\">Endereço</h3>\n");
      out.write("            <div id=\"endereco\">\n");

    String login = (String) session.getAttribute("login");
    String cpf = (String) session.getAttribute("cpf");
    if (login == null){
        response.sendRedirect("login.jsp");
    } 
     
     
                ResultSet rs = null;
                String sql = "";
                     try {
                
                sql = "SELECT nome, endereco, bairro, cidade, cep FROM clientes WHERE cpf = ?";
                     pstm = con.prepareStatement(sql);
                     pstm.setString(1,cpf);
                    rs = pstm.executeQuery();
                        
               while (rs.next()) {

      out.write("    \n");
      out.write("\n");
      out.write("              \n");
      out.write("                <p class=\"dados\"><strong>Nome: </strong> ");
      out.print( rs.getString("nome"));
      out.write("</p>\n");
      out.write("                <p class=\"dados\"><strong>Endereço: </strong> ");
      out.print( rs.getString("endereco") );
      out.write("</p>\n");
      out.write("                <p class=\"dados\"><strong>Bairro: </strong>");
      out.print( rs.getString("bairro") );
      out.write("</p>\n");
      out.write("                <p class=\"dados\"><strong>Cidade: </strong> ");
      out.print( rs.getString("cidade") );
      out.write("</p>\n");
      out.write("                <p class=\"dados\"><strong>CEP: </strong> ");
      out.print( rs.getInt("cep") );
      out.write("</p>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        ");

        }
        } catch(Exception ex){
            out.println(ex.getMessage());
        } 
        
      out.write("\n");
      out.write("        <section class=\"container\">\n");
      out.write("            <h3 class=\"title\">Método de Pagamento</h3>\n");
      out.write("            <div id=\"pagamento\">\n");
      out.write("                <div id=\"boleto\">\n");
      out.write("                    <img src=\"https://i.ibb.co/wNc6qqv/boleto.png\" alt=\"boleto\">\n");
      out.write("                    <p>Boleto</p>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"cartao\">\n");
      out.write("                    <img src=\"https://i.ibb.co/PsyRZtN/cartao.png\" alt=\"cartao\">\n");
      out.write("                    <p>Cartão</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"cartao_dados\" style=\"display: none;\">\n");
      out.write("                <form id=\"cartao_inputs\" method=\"POST\" action=\"confirmaCompra.jsp\">\n");
      out.write("                    <div>\n");
      out.write("                        <p>Nome escrito no cartão</p>\n");
      out.write("                        <input type=\"text\" name=\"nome\">\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <p>Numero do cartão</p>\n");
      out.write("                        <input type=\"text\" name=\"numero\">\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <p>Código de segurança</p>\n");
      out.write("                        <input id=\"cod\" class=\"small_input\" type=\"number\" step=\"disable\" name=\"cod\">\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <p>Validade</p>\n");
      out.write("                        <input id=\"validade\" placeholder=\"__/__\" class=\"small_input\" type=\"month\" name=\"validade\">\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <p>Parcelas</p>\n");
      out.write("                        <select name=\"vezes\" id=\"qtd_vezes\">\n");
      out.write("                            <option value=\"\"></option>\n");
      out.write("                            <option value=\"1\">1x</option>\n");
      out.write("                            <option value=\"2\">2x</option>\n");
      out.write("                            <option value=\"3\">3x</option>\n");
      out.write("                            <option value=\"4\">4x</option>\n");
      out.write("                            <option value=\"5\">5x</option>\n");
      out.write("                            <option value=\"6\">6x</option>\n");
      out.write("                            <option value=\"7\">7x</option>\n");
      out.write("                            <option value=\"8\">8x</option>\n");
      out.write("                            <option value=\"9\">9x</option>\n");
      out.write("                            <option value=\"10\">10x</option>\n");
      out.write("                            <option value=\"11\">11x</option>\n");
      out.write("                            <option value=\"22\">12x</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        ");

            float vl, vt=0;
            try{
                if(request.getParameter("cupom")!= null){
                sql = "SELECT cod_cupom, valor FROM cupom WHERE cod_cupom = ?";
                pstm = con.prepareStatement(sql);
                pstm.setString(1, "%" + request.getParameter("cupom") + "%");
                rs = pstm.executeQuery();
                 while (rs.next()) {
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

           
            vt = Integer.parseInt(request.getParameter("total")) - rs.getFloat("valor");
        }
        }
         } catch(Exception ex){
                    out.print(ex.getMessage());
                    ex.printStackTrace();
                }
        
      out.write("\n");
      out.write("      \n");
      out.write("        <section class=\"container\">\n");
      out.write("            <h3 class=\"title\">Cupom</h3>\n");
      out.write("            <div id=\"cupom\">\n");
      out.write("                <form action=\"compras.jsp?produto");
      out.print( request.getParameter("produto"));
      out.write("&valorProd");
      out.print( request.getParameter("total") );
      out.write("&compra");
      out.print( vt );
      out.write("\" method=\"POST\">\n");
      out.write("                    <input id=\"cupom_input\" type=\"text\" name=\"cupom\" autocomplete=\"off\">\n");
      out.write("                    <input type=\"submit\" value=\"Aplicar\">\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("                    \n");
      out.write("       \n");
      out.write("       \n");
      out.write("        <section class=\"container\">\n");
      out.write("            <h3>Resumo da Compra</h3>\n");
      out.write("            <div id=\"resumo\">\n");
      out.write("                <p class=\"dados\"><strong>Quantidade: </strong> ");
      out.print( request.getParameter("produto") );
      out.write("</p>\n");
      out.write("                <p class=\"dados\"><strong>Valor dos Produtos: </strong> ");
      out.print( request.getParameter("total") );
      out.write("</p>\n");
      out.write("                <p class=\"dados\"><strong>Valor Total: </strong> R$ ");
      out.print( vt );
      out.write("</p>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write(" ");

                    if(pstm!=null)pstm.close();
                    if(con!=null)con.close(); 
        
      out.write("\n");
      out.write("        <div id=\"btn_box\">\n");
      out.write("            <input form=\"cartao_inputs\" type=\"submit\" id=\"btn\" value=\"Finalizar Compra\">\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </article>\n");
      out.write("    <script src=\"../scripts/compra.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
