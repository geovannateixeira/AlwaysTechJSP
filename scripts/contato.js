function faq(ent) {
    var display = document.getElementById(ent).style.display;
    if(display == "none")
        document.getElementById(ent).style.display = 'block';
    else
        document.getElementById(ent).style.display = 'none';
}

function faq(pag) {
var display = document.getElementById(pag).style.display;
if(display == "none")
    document.getElementById(pag).style.display = 'block';
else
    document.getElementById(pag).style.display = 'none';
}

function faq(dev) {
var display = document.getElementById(dev).style.display;
if(display == "none")
    document.getElementById(dev).style.display = 'block';
else
    document.getElementById(dev).style.display = 'none';
}

function msg() {
    var nome = document.getElementById("nome");
    var email = document.getElementById("email");
    var arq = document.getElementById("arq");
    var msg = document.getElementById("mensagem");

    if(nome.value == ""){
        alert("Nome não informado");
        nome.focus();
    }

    if(email.value == ""){
        alert("Email não informado");
        email.focus();
    }
    
    if(arq.value == ""){
        alert("Arquivo não informado");
        arq.focus();
    }

     if(msg.value == ""){
        alert("Mensagem não informada");
        msg.focus();
    }

    else{
        alert("Dados Enviados, Aguarde Nosso Retorno!");
    }
        
    
    } 
