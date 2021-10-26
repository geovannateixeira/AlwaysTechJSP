let value = document.getElementById("rangeSlider").value;
document.getElementById("max_value").innerHTML = "R$" + value + ",00"

document.getElementById("rangeSlider").oninput = function() {

    let maxValue = document.getElementById("rangeSlider").value;

    document.getElementById("max_value").innerHTML = "R$" + maxValue + ",00"

}

// CHAMA FUNCAO BACKEND QUE FILTRA POR PREÇO DETERMINADO
document.getElementById("rangeSlider").onchange = function() {

}


/*
    Funcoes para mostrar ou esconder caixa com mais opcoes de filtros
*/
var hideContentsBox = document.getElementsByClassName("box_hide_filter");

for(let i = 0; i < hideContentsBox.length; i++) {
    hideContentsBox[i].addEventListener('click', showFilterContentBox);
}

function showFilterContentBox() {
    if(this.nextElementSibling.style.display == "none") {
        this.nextElementSibling.style.display = "block";
        this.children[1].src = "https://i.ibb.co/D5cSF5n/arrow-up.png";
    }
    else {
        this.nextElementSibling.style.display = "none";
        this.children[1].src = "https://i.ibb.co/ggqgZ1T/arrow-down.png";
    }
}
