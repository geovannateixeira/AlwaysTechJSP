document.getElementById("boleto").onclick = function() {
    document.getElementById("boleto").children[0].style.backgroundColor = "royalblue";
    document.getElementById("cartao").children[0].style.backgroundColor = "crimson";

    document.getElementById("cartao_dados").style.display = "none";
    document.getElementById("cartao_dados").style.height = "0px";
}
document.getElementById("cartao").onclick = function() {
    document.getElementById("cartao").children[0].style.backgroundColor = "royalblue";
    document.getElementById("boleto").children[0].style.backgroundColor = "crimson";

    document.getElementById("cartao_dados").style.display = "block";
    document.getElementById("cartao_dados").style.height = "fit-content";
}

document.getElementById("cod").oninput = function () {
    if (this.value.length > 3) {
        this.value = this.value.slice(0,3); 
    }
}
document.getElementById("cod").oninput = function () {
    if (this.value.length > 3) {
        this.value = this.value.slice(0,3);
    }
}

document.getElementById("cupom_input").oninput = function() {
    if(this.value.length > 8) {
        this.value = this.value.slice(0,8);
    }
    this.value = this.value.toUpperCase();
}


