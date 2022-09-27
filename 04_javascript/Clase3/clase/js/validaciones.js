
function validarUsu() {
    console.log("ingreso a validarusu")

    let usu=document.getElementById("usu").value
    console.log(usu)

    if (usu.length==0) {
        console.log("usus vacío")
        document.getElementById("mensaje").innerHTML="El usuario no puede estar vacío"
    // } else if(usu.indexOf("@")==-1 && usu.indexOf(".com")) { //indexOf busca @, sino la encuentra devuelve -1
    } else if(usu.indexOf("@")==-1) { //indexOf busca @, sino la encuentra devuelve -1
        console.log("usus NO vacío, sin @")
        document.getElementById("mensaje").innerHTML="El usuario debe contener un @"
    } else if(usu.indexOf("codoACodo.edu.ar")==-1) {
        document.getElementById("mensaje").innerHTML="El usuario debe tener dominio codoACodo.edu.ar"
    } else {
        document.getElementById("mensaje").innerHTML="Usuario correcto"
        document.getElementById("mensaje").className="bg-info m-2"
    }


}


function fortalezaPass() {
    console.log("forta")
    let pass=document.getElementById("pass").value

    if (pass.length<=4) {
        document.getElementById("fortaleza").innerHTML="Fortaleza Baja"
        document.getElementById("fortaleza").className="bg-danger text-center"
    } else if(pass.length>4 && pass.length<=8) {
        document.getElementById("fortaleza").innerHTML="Fortaleza Media"
        document.getElementById("fortaleza").className="bg-warning text-center"
    } else {
        document.getElementById("fortaleza").innerHTML="Fortaleza Alta"
        document.getElementById("fortaleza").className="bg-info text-center"
    }
}