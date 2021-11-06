<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%@ include file="../conecta.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/computadores.css"> 
    <link rel="stylesheet" href="../styles/footer.css">
    <link rel="icon" href="../icons/logo.png">

    <title>Computadores</title>
</head>
<body>

    <header>
        <script src="../scripts/headerGenerate.js"></script>
    </header>

    <article>
        <div class="mb_filter_box">
            <img src="../icons/filtro.png">
        </div>
        <input type="checkbox" class="mobile_show">

        <aside>
            <h1 class="title mobile_title">Filtrar por : </h1>

            <div class="box_filter">
                <p class="subTitle_filter">Pesquise pelo nome : </p>
                <div id="search_box">
                    <input id="nome_input" type="text">
                    <a id="search_btn" href="">
                       <img src="https://i.ibb.co/b66ypGS/lupa.png" alt="lupa">
                    </a>
                </div>
            </div>
            <div class="box_filter" id="range_filter">
                <p class="subTitle_filter">Preço : </p>
                <input id="rangeSlider" type="range" min="1" max="10000" value="5000">
                <div>
                    <p id="min_value">R$ 1,00</p>
                    <p id="max_value">R$ 10.000,00</p>
                </div>
            </div>
            <div class="box_filter hide_filter mb_box_filter">
                <div class="box_hide_filter">
                    <p class="subTitle_filter text_hide_filter">Processador</p>
                    <img src="../icons/arrow_down.png">
                </div>
                <div class="filter_content" id="processador_content" style="display: none;">
                    <label>
                        <input type="checkbox" value="amd">
                        AMD
                    </label>
                    <label>
                        <input type="checkbox" value="intel">
                        Intel
                    </label>
                </div>
            </div>
            <div class="box_filter hide_filter mb_box_filter">
                <div class="box_hide_filter">
                    <p class="subTitle_filter text_hide_filter">Placa de Vídeo</p>
                    <img src="../icons/arrow_down.png">
                </div>
                <div class="filter_content" id="placa-de-video_content" style="display: none;">
                    <label>
                        <input type="checkbox" value="sim">
                        Sim
                    </label>
                </div>
            </div>
            <div class="box_filter hide_filter mb_box_filter">
                <div class="box_hide_filter">
                    <p class="subTitle_filter text_hide_filter">Memória RAM</p>
                    <img src="../icons/arrow_down.png">
                </div>
                <div class="filter_content" id="ram_content" style="display: none;">
                    <label>
                        <input type="checkbox" value="2">
                        2GB
                    </label>
                    <label>
                        <input type="checkbox" value="4">
                        4GB
                    </label>
                    <label>
                        <input type="checkbox" value="8">
                        8GB
                    </label>
                    <label>
                        <input type="checkbox" value="16">
                        16GB
                    </label>
                </div>
            </div>
            <div class="box_filter hide_filter mb_box_filter">
                <div class="box_hide_filter">
                    <p class="subTitle_filter text_hide_filter">Armazenamento</p>
                    <img src="../icons/arrow_down.png">
                </div>
                <div class="filter_content" id="armazenamento_content" style="display: none;">
                    <label>
                        <input type="checkbox" value="ssd">
                        SDD
                    </label>
                    <label>
                        <input type="checkbox" value="HD">
                        HD
                    </label>
                </div>
            </div>
            <div class="box_filter hide_filter mb_box_filter">
                <div class="box_hide_filter">
                    <p class="subTitle_filter text_hide_filter">Placa Mãe</p>
                    <img src="../icons/arrow_down.png">
                </div>
                <div class="filter_content" id="placa-mae_content" style="display: none;">
                    <label>
                        <input type="checkbox" value="ddr4">
                        DDR4
                    </label>
                    <label>
                        <input type="checkbox" value="ddr3">
                        DDR3
                    </label>
                </div>
            </div>
            <div class="box_filter hide_filter mb_box_filter">
                <div class="box_hide_filter">
                    <p class="subTitle_filter text_hide_filter">Fonte</p>
                    <img src="../icons/arrow_down.png">
                </div>
                <div class="filter_content" id="fonte_content" style="display: none;">
                    <label>
                        <input type="checkbox" value="400w">
                        400W
                    </label>
                    <label>
                        <input type="checkbox" value="500w">
                        500W
                    </label>
                    <label>
                        <input type="checkbox" value="600w">
                        600W
                    </label>
                    <label>
                        <input type="checkbox" value="750w">
                        750W
                    </label>
                    <label>
                        <input type="checkbox" value="1000w">
                        1000W
                    </label>
                </div>
            </div>
        </aside>
        <main>
            <section class="vend">
                <h1 class="title">Mais Vendidos</h1>
                
                <% 
                    String sql;
                    ResultSet rs;
                    int i = 0;
                    
                    try {
                        sql = "SELECT cod_prod, nome_prod, preco, imagem FROM computador ORDER BY qtd_vendido desc";
                        rs = stm.executeQuery(sql);
                        while(rs.next()) {
                            if(i >= 3) {
                                break;
                            }
                            out.print("<div class='pcs'>");
                                out.print("<a href='produto.jsp?id=" + rs.getInt(1) + "&categoria=pc'>");
                                    out.print(rs.getString(4));
                                    out.print("<div class='txt'>");
                                        out.print("<p>" + rs.getString(2) + "</p>");
                                        out.print("<p class='price'> R$ "  + rs.getFloat(3) + "</p>");
                                    out.print("</div>");
                                out.print("</a>");
                            out.print("</div>");
                            i++;
                        }
                    }
                    catch(SQLException ex) {
                        out.print(ex.getMessage());
                    }
                %>
            </section>
            <section class="vend">
                <h1 class="title">Populares</h1>
                
                <% 
                    try {
                        sql = "SELECT cod_prod, nome_prod, preco, imagem FROM computador";
                        rs = stm.executeQuery(sql);
                        while(rs.next()) {
                            out.print("<div class='pcs'>");
                                out.print("<a href='produto.jsp?id=" + rs.getInt(1) + "&categoria=pc'>");
                                    out.print(rs.getString(4));
                                    out.print("<div class='txt'>");
                                        out.print("<p>" + rs.getString(2) + "</p>");
                                        out.print("<p class='price'> R$ "  + rs.getFloat(3) + "</p>");
                                    out.print("</div>");
                                out.print("</a>");
                            out.print("</div>");
                        }
                    }
                    catch(SQLException ex) {
                        out.print(ex.getMessage());
                    }
                    
                    con.close();
                %>
            </section>
        </main>
    </article>
    <footer>
        <script src="../scripts/footerGenerate.js"></script>
    </footer> 
    <script src="../scripts/filtro.js"></script>
</body>
</html>
       
