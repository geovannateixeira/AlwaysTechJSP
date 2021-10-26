var lb = document.getElementById('alt');
var mostra = document.querySelector('.mostra');
lb.addEventListener('click', function() {
    
  if(mostra.style.display === 'block') {
      mostra.style.display = 'none';
  } else {
      mostra.style.display = 'block';
  }
});

var lb = document.getElementById('alt1');
var mostra = document.querySelector('.mostra');
lb.addEventListener('click', function() {
    
  if(mostra.style.display === 'block') {
      mostra.style.display = 'none';
  } else {
      mostra.style.display = 'block';
  }
});


//páginas

var dados = document.getElementById('dds');
var dds = document.querySelector('.sobre');
dados.addEventListener('click', function() {
    
  if(dds.style.display === 'none') {
      dds.style.display = 'block';   
     
      ana.style.display = 'none'; 
      list.style.display = 'none';  
      cp.style.display = 'none';
      comp.style.display = 'none';
  } 
  
  else{
     dds.style.display = 'none';
} 
});


var analise = document.getElementById('analise');
var ana = document.querySelector('.analise');
analise.addEventListener('click', function() {
    
  if(ana.style.display === 'none') {
      ana.style.display = 'block';   
     
      dds.style.display = 'none'; 
      list.style.display = 'none';  
      cp.style.display = 'none';
      comp.style.display = 'none';
  } 
  
  else{
     ana.style.display = 'none';
} 
});

var lista = document.getElementById('lista');
var list = document.querySelector('.lista');
lista.addEventListener('click', function() {
    
  if(list.style.display === 'none') {
      list.style.display = 'block'; 
     
      ana.style.display = 'none';  
      dds.style.display = 'none'; 
      cp.style.display = 'none';
      comp.style.display = 'none';
  } 
  
  else{
     list.style.display = 'none';
} 

});

var cmp = document.getElementById('compras');
var comp = document.querySelector('.compras');
cmp.addEventListener('click', function() {
    
  if(comp.style.display === 'none') {
      comp.style.display = 'block'; 
     
      ana.style.display = 'none';  
      list.style.display = 'none';
      dds.style.display = 'none'; 
      cp.style.display = 'none';
  } 
  
  else{
     comp.style.display = 'none';
} 

});


var cup = document.getElementById('cupom');
var cp = document.querySelector('.cupons');
cup.addEventListener('click', function() {
    
  if(cp.style.display === 'none') {
      cp.style.display = 'block'; 
     
      ana.style.display = 'none';  
      list.style.display = 'none';
      dds.style.display = 'none'; 
      comp.style.display = 'none';
  } 
  
  else{
     cp.style.display = 'none';
} 

});