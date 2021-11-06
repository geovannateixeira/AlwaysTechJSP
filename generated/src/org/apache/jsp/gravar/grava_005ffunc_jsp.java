package org.apache.jsp.gravar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.Date;
import java.sql.*;
import java.sql.*;

public final class grava_005ffunc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/gravar/../conectar_1.jsp");
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
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../styles/gravar.css\">\n");
      out.write("        <title>Cadastro</title>\n");
      out.write("        <link rel=\"icon\" href=\"../icons/logo.png\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Cadastro de Funcionários no Banco de Dados </h1>\n");
      out.write("        \n");
      out.write("         ");
            
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String sql = "";
            try {
                
                sql = "INSERT INTO func (nome,cpf,email,celular,dt_nascimento,endereco,cep,dt_adm,cargo,salario,login,senha)"
                        + " VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
                        //pstm = con.prepareStatement(sql);
                        pstm.setString(1,request.getParameter("nome"));
                        pstm.setString(2,request.getParameter("cpf"));
                        pstm.setString(3,request.getParameter("email"));
                        pstm.setString(4,request.getParameter("celular"));
                        pstm.setString(5, request.getParameter("dt_nascimento"));
                        pstm.setString(6,request.getParameter("endereco"));
                        pstm.setInt(7,Integer.parseInt(request.getParameter("cep")));
                        pstm.setString(8, request.getParameter("dt_adm"));
                        pstm.setString(9,request.getParameter("cargo"));
                        pstm.setFloat(10,Float.parseFloat(request.getParameter("salario")));
                        pstm.setString(11,request.getParameter("login"));
                        pstm.setString(12,request.getParameter("senha"));
                    
                int retorno = pstm.executeUpdate(sql);
                if (retorno > 0) {
                    out.print("<p>Dados do Funcionário Gravados Com Sucesso !</p>");
                    out.print("<a href=../paginas/funcionario.jsp> <input type='submit' value='Voltar'> </a>");
                } else {
                    out.print("<p>Erro. Tente novamente.</p>");
                    out.print("<a href=../cadastros/cdsfunc.jsp> <input type='submit' value='Voltar'> </a>");
                }
            } catch (Exception ex) {
                out.print( ex.getMessage());
                out.print("<br> <a href=../cadastros/cdsfunc.jsp> <input type='submit' value='Voltar'> </a>");
            }
            finally { //parte finally, sempre será executada
                if(pstm!=null)pstm.close();
                if(con!=null)con.close();                
            }
        
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
