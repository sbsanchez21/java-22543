

function addEvent() {
    let input=document.getElementById("nom1")
    input.setAttribute("onclick","this.value='hola'")

    input.addEventListener("dblclick",changeBg)
}

function changeBg() {
    document.body.className="bg-danger"
}