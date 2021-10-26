let time = 2000,
    currentImageIndex = 0,
    images = document
                .querySelectorAll("#slider img");
    max = images.length;   

function nextImage() {

    images[currentImageIndex]
        .classList.remove("selected")

    currentImageIndex++

    if(currentImageIndex >= max)
        currentImageIndex = 0

    images[currentImageIndex]
        .classList.add("selected")

    if(currentImageIndex == 0){
    
        document.getElementById('texto1').style.opacity = 1;
        document.getElementById('texto2').style.opacity = 0;
        document.getElementById('texto3').style.opacity = 0;
  
    } else if (currentImageIndex == 1){
    
        document.getElementById('texto1').style.opacity = 0;
        document.getElementById('texto2').style.opacity = 1;
    
    }
    else if(currentImageIndex == 2){
    
        document.getElementById('texto2').style.opacity = 0;
        document.getElementById('texto3').style.opacity = 1;

    }
    
}


function start() {
     if(currentImageIndex == 0){
 	document.getElementById('texto1').style.opacity = 1;
        document.getElementById('texto2').style.opacity = 0;  
     }
    setInterval(() => {
        // troca de imagem
        nextImage()
    }, time)
}

window.addEventListener("load", start)
