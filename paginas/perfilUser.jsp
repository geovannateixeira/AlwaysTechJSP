<%@page import="java.util.ArrayList"%>
<%@ include file="../conectar_1.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meu Perfil</title>
    <link rel="icon" href="../icons/logo.png">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/perfiluser.css">
    <link rel="stylesheet" href="../styles/listaf.css">
    <link rel="stylesheet" href="../styles/comprec.css">
    <link rel="stylesheet" href="../styles/cupom.css">
    <link rel="stylesheet" href="../styles/analise.css">
  
</head>
<body>
    
<%
    // ArrayList<String> prod = new ArrayList<String>();
                    //request.getSession().setAttribute("prod",prod);
                    
                    ArrayList<String> prod = null;
   		   
   				if(application.getAttribute("prod") != null){
   					prod = (ArrayList) application.getAttribute("prod");
   				}else{
   					prod = new ArrayList<String>();
   				}
                                  application.setAttribute("prod", prod);
    
    String login = (String) session.getAttribute("login");
    String cpf = (String) session.getAttribute("cpf");
    if (login == null){
        response.sendRedirect("login.jsp");
    } 
%>
        <header> 
              <script src="../scripts/headerGenerate.js"> </script>
        </header>

    <main>
        <section>
            <div class="lateral">
                       <%
                            ResultSet rs;    
                            String sql;
                            try{
                                sql = "SELECT email,senha, nome, dt_nascimento, cpf, celular FROM clientes WHERE cpf = ?";
                                pstm = con.prepareStatement(sql);
                                pstm.setString(1,cpf);
                                rs = pstm.executeQuery();
                            
                             while (rs.next()) {
                            %>
                <div class="lt_container">
                    <div class="lt">
                        <input type="submit" class="ttl" id="dds" value="<%= rs.getString(3)%>">  
                    </div>

                    <div class="lt"> 
                        <input type="submit" class="ttl" id="analise" value="Análise dos Pedidos"> 
                    </div>

                    <div class="lt">
                        <input type="submit" class="ttl" id="lista" value="Lista de Desejos "> 
                    </div>

                    <div class="lt">
                        <input type="submit" class="ttl" id="compras" value="Compras Recentes">   
                    </div>

                    <div class="lt">
                        <input type="submit" class="ttl" id="cupom" value="Cupons">  
                    </div>
                    
                   <div class="lt">
                       <a href="logoff.jsp"> <input type="submit" class="ttl" id="cupom" value="Sair">  </a>
                  </div>
                </div>
            </div>

            <div class="content">
                <div class="sobre">
                  
                    <div class="txt"> <h1 class="txt1">Meus Dados </h1> </div>

                    <div class="dados">
                        <h1 class="dds"> Dados Cadastrados</h1>

                        <form action="" method="POST">
                        
                                <div class="mostra">
                                    <p> Enviamos um email para vc por segurança. Não esqueça de clicar no link</p>
                              </div>
                           
                                <div class="email">
                                    <label class="ast"> * </label>   
                                    <label class="lbl"> Email: </label> 
                                    <input name="email" id="email" disabled="" readonly="" value="<%= rs.getString(1)%>">
                                    <span data-cy="change-email" id="alt">Alterar</span>
                                </div>
                                           
                                <div class="check">
                                    <input type="checkbox" id="promotionalEmails" data-cy="formField__promotionalEmails" value="receber e-mails promocionais">
                                    <label class="sub">receber e-mails promocionais</label>
                                </div>

                                <div class="senha">
                                    <label class="ast"> * </label>
                                    <label class="lbl"> Senha </label> 
                                    <input name="password" type="password" disabled="" value="<%= rs.getString(2)%>">
                                    <span data-cy="change-password" id="alt1"> Alterar</span>
                                </div>

                                <div class="mostra">
                                    <p> Enviamos um email para vc por segurança. Não esqueça de clicar no link</p>
                                </div>

                                    <h1 class="pessoais"> <b>Dados Pessoais</b></h1>
                            

                                <div class="nome">
                                    <label class="ast"> * </label>
                                    <label class="lbl">Nome Completo </label>
                                    <input id="formField__name" data-cy="formField__name" type="text" cursor="pointer" name="name" required="" disabled="" readonly="" value="<%= rs.getString(3)%>">
                                </div>    
                            
                                <div class="dt">
                                    <label class="ast"> * </label>   
                                    <label class="lbl">Data De Nascimento </label>
                                    <input data-cy="formField__birthDate" disabled="" readonly="" class="sc-nVjpj jzhAMS birthDateInput " name="birthDate" type="date" required="" autocorrect="off" inputmode="numeric" placeholder="__/__/____" id="formField__birthDate" value="<%= rs.getDate(4)%>">
                                </div>

                                <div class="doc">   
                                    <label class="ast"> * </label>
                                    <label class="lbl">CPF </label>
                                    <input name="cpf" disabled="" readonly="" value="<%= rs.getString(5)%>">
                                    <br>
                                    <span class="sub">Necessário Para Emissão das Notas Fiscais</span>
                                </div>
                        
                                <div class="tel">
                                    <label class="ast"> * </label>
                                    <label class="lbl">Telefone </label>
                                    <input data-cy="formField__phone" class="sc-nVjpj jzhAMS phoneInput " name="phone" type="tel" required="" autocorrect="off" inputmode="numeric" placeholder="(__) _____-____" id="formField__phone" value="<%= rs.getString(6)%>">
                                    <br>
                                    <span class="sub"> Caso Nós	Precisaremos Entrar em Contato Sobre Seus Pedidos</span>  
                                </div>
                                    
                                       <%
                               }
                               } catch(Exception ex){
                                          out.print("ERRO" + ex.getMessage());
                                    }
                               %>  
                                    
                                <div class="btn">
                                <input class="btn" type="button" value="Salvar Alterações" disabled="" >
                                </div>   

                        </form>    
                    </div>

                </div>


                <!-- Página de Análise de Produtos-->

                <div class="analise" style="display: none;">
                <div class="txt"> <h1 class="txt1"> Análise dos Pedidos </h1> </div>

               
                        <%   
                              try{
                                sql = "SELECT compras.cod_prod, compras.nome_prod, compras.preco, compras.qtd, compras.imagem, clientes.endereco FROM compras, clientes WHERE compras.cpf = ? AND clientes.cpf = ?";
                                pstm = con.prepareStatement(sql);
                                pstm.setString(1,cpf);
                                pstm.setString(2,cpf);
                                rs = pstm.executeQuery();
                            
                             while (rs.next()) {
                          %>
                   <div class="container">
                    <div class="info"> 
                        <div class="imagem">
                            <%= rs.getString(5)%>
                        </div>
                        
                        <div class="middle-analise">
                            <div class="status2">
                                <h1 class="stt"> Status da Entrega </h1>
                            </div>
                            <div class="desc">
                                <h1 class="descricao1">
                                   <%= rs.getString(2)%>
                                </h1>
                                <h2 class="descricao1">Preço R$<%= rs.getString(3)%></h2>
                                <h2 class="descricao1">Quantidade: 1</h2>
                            </div>
                        </div>
                        
                        
                        <div class="endereco"> 
                            <h1 class="endereco1"> Endereço: <%= rs.getString("endereco")%> </h1> 
                        </div>
                   </div>
            </div>       
                        <%
                               }
                               } catch(Exception ex){
                                          out.print("ERRO" + ex.getMessage());
                                    }
                        %> 
                    
            

                </div>
                        
            <!--Págine de Lista de Produtos-->

            <div class="lista"  style="display: none;">
                <div class="txt"> <h1 class="txt1"> Lista de Desejos </h1> </div>
                    
                <div class="lst">
                    <div class="imgl"> 
                        <img src="https://i.ibb.co/SfdqWdP/ult1.jpg" alt="ult1"> 
                    </div>

                    <div class="desc2"> 
                        <a href="../html/componentes.html">
                             <p class="textl"> Memória HyperX Predator RGB, 8GB 
                                    
                            </p> 
                        </a>
                        
                         <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" id="cheio" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16"  style="float:right; margin-right:15px; margin-top:5px">
                            <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                          </svg>
                        
                        <div class="core">
                          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16" style="float:right; margin-right:15px; margin-top:5px">
                                    <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                         </svg>
                        </div>
                    <div class="promo"></div>  </div>
                </div>


                <div class="lst">
                    <div class="imgl">
                        <img src="https://i.ibb.co/cwpNhRW/ult2.jpg" alt="ult2">
                    </div>
                    <div class="desc2">
                        <a href="../html/componentes.html"> 
                            <p class="textl"> SSD Kingston </p>
                        </a>
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" id="cheio" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16"  style="float:right; margin-right:15px; margin-top:5px">
                            <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                          </svg>
                        
                        <div class="core">
                          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16" style="float:right; margin-right:15px; margin-top:5px">
                                    <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                         </svg>

                        </div>
                        
                    <div class="promo"></div></div>
                </div>

                <div class="lst">
                    <div class="imgl">
                        <img src="https://i.ibb.co/7kM6kQN/notebook2.png" alt="notebook2">
                    </div>
                    <div class="desc2">
                        <a href="../html/note.html">
                            <p class="textl"> Notebook Dell Inspiron i3501-M25P </p>
                            </a>

                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" id="cheio" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16"  style="float:right; margin-right:15px; margin-top:5px">
                                <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                              </svg>
                            
                            <div class="core">
                              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16" style="float:right; margin-right:15px; margin-top:5px">
                                        <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                             </svg>

                            </div>
                    <div class="promo"></div></div>
                </div>
            </div>


                <!--Página de Compras Recentes-->
                <div class="compras"  style="display: none;" >
                <div class="txt"> <h1 class="txt1"> Compras Recentes </h1> </div>
                          <%   
                              try{
                                sql = "SELECT compras.cod_prod, compras.nome_prod, compras.preco, compras.qtd, compras.imagem, clientes.endereco FROM compras, clientes WHERE compras.cpf = ? AND clientes.cpf = ?";
                                pstm = con.prepareStatement(sql);
                                pstm.setString(1,cpf);
                                pstm.setString(2,cpf);
                                rs = pstm.executeQuery();
                            
                             while (rs.next()) {
                          %>
                <div class="container">
                    <div class="info">
                        <div class="imagem">
                            <%= rs.getString(5)%>
                        </div>
                        <div class="middle-analise">
                            <div class="status2">
                                <h1 class="stt"> Pedido N° 4578 </h1>
                            </div>
                            
                            <div class="desc">
                                <h1 class="descricao1">
                                   <%= rs.getString(2)%>
                                </h1>
                                <h2 class="descricao1">Preço R$<%= rs.getString(3)%></h2>
                                <h2 class="descricao1">Quantidade: 1</h2>
                            </div>
                        </div>
                        
                            <div class="end-and"> 
                            <h1 class="end1"> Endereço <%=rs.getString("endereco")%> </h1>
                        </div>
                    </div>
                </div>
                        
                           <% }
                                
                                } catch(Exception ex){
                                        out.print(ex.getMessage());
                                    }
                        
                        
                        %>
                        
                   </div>
                
              <!--Página de Cupom-->
                <div class="cupons"  style="display: none;">
                <div class="txt"> <h1 class="txt1"> Cupons </h1> </div>

                <div class="info3">
                    <div class="imagem-cupom">
                        <img src="https://i.ibb.co/mG3BppX/al3.png" alt="al3">
                    </div>

                    <div class="cupom">
                        <div class="status1">
                            <h1 class="stt"> Cupom de 10% </h1>
                        </div>
                        <div class="desc">
                            <%
                            try{
                                sql = "SELECT cod_cupom, data_val FROM cupom WHERE cod_cupom = 15796841";
                                pstm = con.prepareStatement(sql);
                                rs = pstm.executeQuery();
                            
                             while (rs.next()) {
                            %>
                        
                            <h1 class="desc1"> Código do Cupom: <%=rs.getString(1)%> <br> Data de Validade: <%=rs.getDate(2)%>  </h1>
                        
                           <%
                               }
                               } catch(Exception ex){
                                          out.print("ERRO " + ex.getMessage());
                                    }
                           %>
                        </div>
                        
                        <input class="btnc" type="button" value="Usar Cupom">
                    </div>
                </div>


               
                </div>
                </div>
            </div>
                           
        </section>
    </main>
    
  
<script src="../scripts/perfilUser.js"></script>
<script src="../scripts/lista.js"></script>
  <script src="../scripts/headerGenerate.js"> </script>

    </body>
    </html>

