<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/componentes.css">
    <title>Componentes</title>
     <link rel="icon" href="../icons/logo.png">
</head>
<body>
    
     <header> 
              <script src="../scripts/headerGenerate.js"> </script>
        </header>

    <article>
        <div class="mb_filter_box">
             <img src="https://i.ibb.co/b2y15bf/filtro.png" alt="filtro">
        </div>
        <input type="checkbox" class="mobile_show"></input>

        <aside>
            <h1 class="title mobile_title">Filtrar por : </h1>

            <div class="box_filter">
                <p class="subTitle_filter">Pesquise pelo nome : </p>
                <div id="search_box">
                    <input id="nome_input" type="text">
                    <a id="search_btn" href="">
                        <img src="https://i.ibb.co/YdyQV5d/lupa.png" alt="lupa">
                    </a>
                </div>
            </div>
            <div class="box_filter" id="range_filter">
                <p class="subTitle_filter">Preço : </p>
                <input id="rangeSlider" type="range" min="1" max="5000" value="2500">
                <div>
                    <p id="min_value">R$ 1,00</p>
                    <p id="max_value">R$ 5.000,00</p>
                </div>
            </div>
            <div class="box_filter hide_filter mb_box_filter">
                <div class="box_hide_filter">
                    <p class="subTitle_filter text_hide_filter">Tipo</p>
                    <img src="https://i.ibb.co/ggqgZ1T/arrow-down.png" alt="arrow-down">
                </div>
                <div class="filter_content" id="tipo_content" style="display: none;">
                    <label>
                        <input type="checkbox" value="Mouse">
                        Mouse
                    </label>
                    <label>
                        <input type="checkbox" value="Teclado">
                        Teclado
                    </label>
                    <label>
                        <input type="checkbox" value="placa-de-video">
                        Placa de vídeo
                    </label>
                    <label>
                        <input type="checkbox" value="Fonte">
                        Fonte
                    </label>
                    <label>
                        <input type="checkbox" value="hd">
                        HD
                    </label>
                    <label>
                        <input type="checkbox" value="placa-mae">
                        Placa Mãe
                    </label>
                    <label>
                        <input type="checkbox" value="ssd">
                        SSD
                    </label>
                    <label>
                        <input type="checkbox" value="monitor">
                        Monitor
                    </label>
                </div>
            </div>
        </aside>
        <main>
            <section class="vend">
                <h1 class="title"> Mais Vendidos </h1>
                
                <div class="comp">
                    <a href="#">
                        <img src="https://i.ibb.co/7tShYhr/pdt1.jpg" alt="pdt1">
                        <div class="txt">
                            <p> Kit Teclado, Mouse e MousePad </p>
                            <p class="price">R$ 150,00</p>
                        </div>
                    </a>
                </div>
                <div class="comp">
                    <a href="#">
                        <img src="https://i.ibb.co/2kR9pTR/head.png" alt="head">
                        <div class="txt">
                            <p> Headset Gamer RGB Preto </p>
                            <p class="price">R$ 200,00</p>
                        </div>
                    </a>
                </div>
                <div class="comp">
                    <a href="#">
                        <img src="https://i.ibb.co/r48YKmB/mouse.png" alt="mouse">
                        <div class="txt">
                            <p> Mouse Gamer ReDragon </p>
                            <p class="price">R$ 120,00</p>
                        </div>
                    </a>
                </div>
            </section>
            <section class="vend">
                <h1 class="title"> Populares </h1>
    
                <div class="comp">
                    <a href="../paginas/produto.jsp?id=2&categoria=fonte">
                        <img src="https://i.ibb.co/vXVhBKk/fonte-gm.png" alt="fonte-gm">
                        <div class="txt">
                            <p> Fonte GameMax GM550 </p>
                            <p class="price">R$ 350,00</p>
                        </div>
                    </a>
                </div>
                <div class="comp">
                    <a href="../paginas/produto.jsp?id=1&categoria=hdd">
                        <img src="https://i.ibb.co/qdddCmZ/ult3.jpg" alt="ult3">
                        <div class="txt">
                            <p> HD Seagate BarraCuda </p>
                            <p class="price">R$ 200,00</p>
                        </div>
                    </a>
                </div>
                <div class="comp">
                    <a href="../paginas/produto.jsp?id=2&categoria=ssd">
                        <img src="https://i.ibb.co/XLLr3NP/ssd-blue.png" alt="ssd-blue">
                        <div class="txt">
                            <p> SSD Interno BLUE 1TB </p>
                            <p class="price">R$ 450,00</p>
                        </div>
                    </a>
                </div>
                <div class="comp">
                    <a href="../paginas/produto.jsp?id=2&categoria=pm">
                        <img src="https://i.ibb.co/k4KKvMY/pm-asus.png" alt="pm-asus">
                        <div class="txt">
                            <p> Placa Mãe ASUS Prime B450M </p>
                            <p class="price">R$ 800,00</p>
                        </div>
                    </a>
                </div>
                <div class="comp">
                    <a href="../paginas/produto.jsp?id=1&categoria=pv">
                        <img src="https://i.ibb.co/RzJWY7T/pv.png" alt="pv">
                        <div class="txt">
                            <p> Placa de Vídeo Galax NVIDIA </p>
                            <p class="price">R$ 4000,00</p>
                        </div>
                    </a>
                </div>
                <div class="comp">
                    <a href="#">
                        <img src="https://i.ibb.co/gW0S5DR/tec.png" alt="tec">
                        <div class="txt">
                            <p> Teclado Gamer Led Rgb </p>
                            <p class="price">R$ 200,00</p>
                        </div>
                    </a>
                </div>
                <div class="comp">
                    <a href="#">
                        <img src="https://i.ibb.co/d6KrLTJ/moni.png" alt="moni">
                        <div class="txt">
                            <p> Monitor Gamer Acer </p>
                            <p class="price">R$ 800,00</p>
                        </div>
                    </a>
                </div>
                <div class="comp">
                    <a href="#">
                        <img src="https://i.ibb.co/qstfXrM/rote.png" alt="rote">
                        <div class="txt">
                            <p> Roteador Wi-fi </p>
                            <p class="price">R$ 800,00</p>
                        </div>
                    </a>
                </div>
             </section>
         </main>
    </article>

    <script src="../scripts/filtro.js"></script>
    <script src="../scripts/headerGenerate.js"> </script>
</body>
</html>

