let header = document.getElementsByTagName("header")[0];

header.innerHTML = 

'<!-- Mobile Contents -->' +
'<div id="mobile-header_content">' +
    '<div id="mb-menu_content">' +
        '<input type="checkbox" id="btn_menu">' +
        '<label id="menu_icon" for="btn_menu">&#9776;</label>' +
        '<nav class="menu">' +
            '<ul class="lists">' +
                '<li><a href="../paginas/computador.jsp"> Computadores </a></li>' +
                '<li><a href="../paginas/notebook.jsp"> Notebooks </a></li>' +
                '<li><a href="../paginas/componentes.jsp"> Componentes </a></li>' +
            '</ul>' +
            '<ul class="lists">' +
                '<li><a href="../paginas/carrinho.jsp?"> Carrinho</a></li>' +
                '<li><a href="../paginas/contato.jsp"> Contato</a></li>' +
                '<li><a href="../consulta.jsp"> Login/Cadastro </a></li>' +
            '</ul>' +
        '</nav>' +
    '</div>' +
    '<div id="title_content" class="nav_box">' +
        '<a href="../index.jsp">' + 
            '<h1>Always Tech</h1>' + 
        '</a>' + 
    '</div>' + 
'</div>' + 
'<!-- Desktop Contents -->' +
'<div id="desktop-header_content">' +
    '<div id="sub-menu_content" class="nav_box">' +
        '<div id="sub-menu">' +
            '<a href="../paginas/produtos.jsp"> Produtos </a>' +
            '<div id="sub-menu_options">' +
                '<a href="../paginas/computador.jsp"> Computadores </a>' +
                '<a href="../paginas/notebook.jsp"> Notebooks </a>' +
                '<a href="../paginas/componentes.jsp"> Componentes </a>' +
            '</div>' +
        '</div>' +
    '</div>' +
    
    '<div id="title_content" class="nav_box">' +
        '<a href="../index.jsp">' + 
            '<h1>Always Tech</h1>' + 
        '</a>' + 
    '</div>' +
    
    '<div id="img_content" class="nav_box">' +
        '<div id="img_box">' +
            '<div title="Carrinho" class="img_box">' +
                '<a href="../paginas/carrinho.jsp"> <img src="https://i.ibb.co/DzwLVxL/car-icon.png" alt="car-icon"> </a>' +
            '</div>' +
            '<div title="Contato" class="img_box">' +
                '<a href="../paginas/contato.jsp"><img src="https://i.ibb.co/CbPth0D/contato.png" alt="contato"></a>' +
            '</div>' +
            '<div title="Perfil" class="img_box">' +
                '<a href="../consulta.jsp"> <img src="https://i.ibb.co/pbxSn8y/perfil.png" alt="perfil"></a>' +
            '</div>' +
        '</div>' +
    '</div>' + 
'</div>';
