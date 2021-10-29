<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="styles/index.css">
    
       
    <title>Always Tech</title>
     <link rel="icon" href="icons/logo.png">
</head>
<body>
  
   <header>

        <!-- Mobile Contents -->

        <div id="mobile-header_content">
            <div id="mb-menu_content">
                <input type="checkbox" id="btn_menu">
                <label id="menu_icon" for="btn_menu">&#9776;</label>

                <nav class="menu">
                    <ul class="lists">
                        <li><a href="paginas/computador.jsp"> Computadores </a></li>
                        <li><a href="paginas/note.jsp"> Notebooks </a></li>
                        <li><a href="paginas/componentes.jsp"> Componentes </a></li>
                    </ul> 
    
                    <ul class="lists">  
                        <li><a href="paginas/carrinho.jsp?id=0"> Carrinho</a></li>
                        <li><a href="paginas/contato.jsp"> Contato</a></li>
                        <li><a href="consulta.jsp"> Login/Cadastro </a></li>
                    </ul>
                </nav>
            </div>

            <div id="mb-title_content" class="nav_box">
                <a href="index.jsp">
                    <h1>Always Tech</h1>
                </a>
            </div>
        </div>

        <!-- Desktop Contents -->

        <div id="desktop-header_content">
            <div id="sub-menu_content" class="nav_box">
                <div id="sub-menu">
                    <a href="paginas/produtos.jsp"> Produtos </a>
                    <div id="sub-menu_options">
                        <a href="paginas/computador.jsp"> Computadores </a>
                        <a href="paginas/notebook.jsp"> Notebooks </a>
                        <a href="paginas/componentes.jsp"> Componentes </a>
                    </div>
                </div>
            </div>
            
            <div id="title_content" class="nav_box">
                <a href="index.jsp">
                    <h1>Always Tech</h1>
                </a>
            </div>
            
            <div id="img_content" class="nav_box">
                <div id="img_box">
                    <div title="Carrinho" class="img_box">
                        <a href="paginas/carrinho.jsp?id=0"> <img src="https://i.ibb.co/DzwLVxL/car-icon.png" alt="car-icon"></a>
                    </div>
                    <div title="Contato" class="img_box">
                        <a href="paginas/contato.jsp"><img src="https://i.ibb.co/CbPth0D/contato.png" alt="contato"></a>
                    </div>
                    <div title="Perfil" class="img_box">
                        <a href="consulta.jsp"> <img src="https://i.ibb.co/pbxSn8y/perfil.png" alt="perfil"></a>
                    </div>
                </div>
            </div>
        </div>
        
    </header>

    <main>
        <section>
            <%   
                    ArrayList<String> prod = new ArrayList<String>();
                    request.getSession().setAttribute("prod",prod);
            %>
            <!-- Destaques-->

            <h1 class="ttlprod"> Destaques</h1>
            <figure id="slider">
              <img class="selected" src="https://i.ibb.co/26rw9wS/ram.png" alt="ram"/> 
		    	<figcaption id="texto1">
                    <p> Memória Ram HyperX 16GB</p>
                    <p> R$280,00</p>
                </figcaption>
                <img src="https://i.ibb.co/drw6xmm/note.png" alt="note"/>
                <figcaption id="texto2" style="opacity: 0;"> 
                    <p> Notebook Dell Inspirion 7000</p>
                    <p> R$7.500,00</p>
                </figcaption>              
                <img src="https://i.ibb.co/R9WZtrW/teclado.png" alt="teclado"/>
                <figcaption id="texto3" style="opacity: 0;"> 
                    <p> Teclado Gamer Led Rgb</p>
                    <p> R$185,90</p>
                </figcaption> 
            </figure>

            <hr>

            <!--Produtos Mais Vendidos-->

            <h3> Produtos Mais Vendidos </h3>

            <div class="container_products">
                <div class="prod"> 
                    <a href="produtos/sky.html">
                        <img src="https://i.ibb.co/7vK4QnB/gab1.jpg" alt="gab1"/>
                        <p>SkyTech Legacy Gaming</p>
                        <p>R$4.000,00</p>
                    </a>
                </div>
    
                <div class="prod">
                    <a href="produtos/hd.html">
                        <img src="https://i.ibb.co/qdddCmZ/ult3.jpg" alt="ult3"/>
                        <p>HDD WD 1TB</p>
                        <p>R$600,00</p>
                    </a>
                </div>
    
                <div class="prod"> 
                    <a href="produtos/pm.html">
                        <img src="https://i.ibb.co/2qmVyms/pm.jpg" alt="pm"/>
                        <p>Placa Mãe Asus Prime</p>  
                        <p>R$579,00</p>
                    </a>
                </div>
            </div>    
            <div class="container_products">
                <div class="prod">
                    <a href="produtos/archangel.html">
                        <img src="https://i.ibb.co/k84qVrG/gab2.jpg" alt="gab2"/>
                        <p> SkyTech Archangel Gaming </p> 
                        <p> R$2.500,00 </p>  
                    </a>       
                </div>
    
                <div class="prod"> 
                    <a href="produtos/amd.html">
                        <img src="https://i.ibb.co/kx8669c/procAmd.jpg" alt="procAmd"/> 
                        <p> Processador Ryzen 9 3950X </p> 
                        <p>R$2.070,00</p>
                    </a>
                </div>
    
                <div class="prod"> 
                    <a href="produtos/amd.html">
                        <img src="https://i.ibb.co/Qv7zZw1/procIntl.jpg" alt="procIntl"/> 
                        <p>Intel Core i9 9960X</p> 
                        <p>R$4.170,00</p>
                    </a>
                </div>
            </div>
            <div class="container_products">
                <div class="prod"> 
                    <a href="produtos/amd.html">
                        <img src="https://i.ibb.co/mCLqzHQ/gab3.png" alt="gab3"/> 
                        <p>CUK ROG Strix G15CK Gaming Desktop</p> 
                        <p>R$2.800,00</p>
                    </a>
                </div>
    
                <div class="prod"> 
                    <a href="produtos/amd.html">
                        <img src="https://i.ibb.co/NCtv6Kq/rtx.png" alt="rtx"/> 
                        <p>GigaByte GForce RTX2080</p> 
                        <p>R$8.000,00</p>
                    </a>
                </div>
    
                <div class="prod"> 
                    <a href="produtos/amd.html">
                        <img src="https://i.ibb.co/D8QLfF5/fonte.jpg" alt="fonte"/> 
                        <p>Fonte Corsair Series CX600</p> 
                        <p>R$450,00</p>
                    </a>
                </div>
            </div> 

            <!--Últimas Peças-->
 
            <hr class="ult">
            <h1 class="ultpc"> Últimas Peças </h1>
            <div class="ult_pecas">
                <div class="maisvend">
                    <a href="produtos/ram.html">
                        <div class="img">
                            <img src="https://i.ibb.co/SfdqWdP/ult1.jpg" alt="ult1"/>
                        </div>
                        <div class="text">   
                            <p class="txtDest"> Memória HyperX Predator RGB, 8GB </p>
                        </div>
                    </a>
                    
                </div>
                <div class="maisvend">
                    <a href="produtos/ssd.html">
                        <div class="img">
                            <img src="https://i.ibb.co/cwpNhRW/ult2.jpg" alt="ult2"/>
                        </div>
                        <div class="text">
                            <p class="txtDest"> SSD Kingston A400, 240GB </p>
                        </div>
                    </a>
                </div>
                <div class="maisvend">
                    <a href="produtos/hd.html">
                        <div class="img">
                            <img src="https://i.ibb.co/2Z1Rpfr/hd.jpg" alt="hd"/>
                        </div>
                        <div class="text">
                            <p class="txtDest"> HD Seagate BarraCuda, 1TB </p>
                        </div>
                    </a>
                </div>
                <div class="maisvend">
                    <a href="produtos/rote.html">
                        <div class="img">
                            <img src="https://i.ibb.co/HYwTwQC/ult4.jpg" alt="ult4"/>
                        </div>
                        <div class="text">
                            <p class="txtDest"> Roteador Wireless Dual Band TP </p>
                        </div>  
                    </a>  
                </div>
            </div>

	    </section>
    </main>

    <footer>
        <p> &copy 2021 - Diego / Geovanna /  Guilherme / Rodrigo / - ADS4/APSII </p>
    </footer> 
    <script src="scripts/index.js"></script>
</body>
</html>
