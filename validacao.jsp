<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conecta.jsp" %>
     <%
                        ResultSet rs;
                        try{
                        if(con != null){
                            if((request.getParameter("login") != null) && (request.getParameter("password") != null)){
                                String login, senha;
                                login = request.getParameter("login");
                                senha = request.getParameter("password");
                                
                                rs = stm.executeQuery("SELECT cpf,login FROM clientes WHERE login = '" + login +"' AND senha = '" + senha +"'");
                                
                                if(rs.next()){
                                    session.setAttribute("login", login);
                                    session.setAttribute("cpf", rs.getString("cpf"));
                                    response.sendRedirect("paginas/perfilUser.jsp");
                                }
                                } 
                        }
                        
                        }
                        catch(Exception ex){
                            out.println(ex.getMessage());
                        } 
                        
                       
                          
                    %>
                    
           <%
                       try{
                        if(con != null){
                            if((request.getParameter("login") != null) && (request.getParameter("password") != null)){
                                String login, senha;
                                login = request.getParameter("login");
                                senha = request.getParameter("password");
                                
                                rs = stm.executeQuery("SELECT * FROM func WHERE login = '" + login +"' AND senha = '" + senha +"'");
                                
                                if(rs.next()){
                                    session.setAttribute("loginADM", login);
                                    response.sendRedirect("paginas/funcionario.jsp");
                                } else{
                                    response.sendRedirect("paginas/login.jsp");
                                }
                            }
                        }
                        }
                        catch(Exception ex){
                            out.println(ex.getMessage());
                        }      

                       
                                  
                    %>
                    
                   
    
                    
                    