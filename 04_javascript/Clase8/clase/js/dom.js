console.log(document)
console.log(document.body)
console.log()

let p=document.getElementById("parrafo")
p.onmouseover=resaltar 
p.onmouseleave=opacar

function resaltar() {
    p.style.backgroundColor="lightblue"
}

function opacar() {
    p.style.backgroundColor="lightgray"
}


function incFontSize() {
    document.body.className="fs-3"
}

function changeBgColor() {
    //cambio el fondo con css
    document.body.style.backgroundColor="lightblue"

    //cambio el fondo utilizando una clase de bootsttrap
    // document.body.className="bg-info"
}

function showMessage() {
    // muestra el mensaje
    let mensaje=document.getElementById("mensaje")
    // console.log(mensaje)
    mensaje.innerHTML="Bienvenidos a mi primer DOM"
    mensaje.className="text-center fs-4 bg-success p-3 m-1 rounded "

    //modifica el boton su comportamiento y su estilo
    let btnMensaje=document.getElementById("btnMensaje")
    btnMensaje.innerHTML="Ocultar Mensaje"
    btnMensaje.className="btn btn-success m-2"
    btnMensaje.onclick=hideMessage
}

function hideMessage() {
    // oculta el mensaje
    let mensaje=document.getElementById("mensaje")
    // console.log(mensaje)
    mensaje.innerHTML=""
    mensaje.className=""

    //modifica el boton su comportamiento y su estilo
    let btnMensaje=document.getElementById("btnMensaje")
    btnMensaje.innerHTML="Mostrar Mensaje"
    btnMensaje.className="btn btn-warning m-2"
    btnMensaje.onclick=showMessage    
}

function changeBtnStyle() {
    let botones=document.getElementsByTagName("button")
    // console.log(botones)
    for (let i = 0; i < botones.length; i++) {
        botones[i].className="btn btn-danger m-2"
        
    }

    //buscar por nombre de clase
    let tagsCenter=document.getElementsByClassName("text-center")
    console.log(tagsCenter)
    for (let i = 0; i < tagsCenter.length; i++) {
        tagsCenter[i].className="text-start"
        
    }
}

var ventana
function openWin() {
    ventana=window.open("ventana.html","", "width=500, height=300");
}

function closeWin() {
    ventana.close()
}

function moveWin() {
    ventana.moveBy(100,100);
    ventana.focus()
}