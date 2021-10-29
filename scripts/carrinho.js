var btnSoma = document.getElementsByClassName("mais");
var btnSub = document.getElementsByClassName("menos");
var tagQtd = document.getElementsByClassName("qtd");
var tagPreco = document.getElementsByClassName("preco");

produtos_selecionados();
valor_total();

for(let i = 0; i < btnSoma.length; i++) {
    btnSoma[i].addEventListener("click", adicionar);
}
for(let i = 0; i < btnSub.length; i++) {
    btnSub[i].addEventListener("click", subtrair);
}

function adicionar() {
    let val = parseInt(this.previousElementSibling.innerText);
    this.previousElementSibling.innerText = val + 1;

    produtos_selecionados();
    valor_total();
}
function subtrair() {
    let val = parseInt(this.nextElementSibling.innerText);
    if(val == 1) {
        alert("Este valor é o mínino possivel");
    } else if(val == 0){
        alert("Produto Removido");
    }
    else {
        this.nextElementSibling.innerText = val - 1;
    }

    produtos_selecionados();
    valor_total();
}

function produtos_selecionados() { 
    let soma = 0;
    for(let i = 0; i < tagQtd.length; i++) {
        soma = soma + parseInt(tagQtd[i].innerText);
    }

    document.getElementById("quant_prod").innerHTML = soma + " produtos selecionados";
}

function valor_total() {
    let soma = 0;
    for(let i = 0; i < tagPreco.length; i++) {
        soma = soma + parseInt(tagPreco[i].innerText.substring(2)) * parseInt(tagQtd[i].innerText);
    }

    document.getElementById("total_value").innerText = "Total: R$ " + soma.toLocaleString('pt-br', {minimumFractionDigits: 2});
}

document.getElementById("btn_prosseguir").onclick = function() {

    let total = document.getElementById("total_value").innerText.substring(10);
    let qtd = parseInt(document.getElementById("quant_prod").innerText);

    window.location = "compras.jsp?total="+total+"&produto="+qtd;
}
