// array simula daots de una base de datos
let lenguajes=["java","javascript","jquery","php","python","c","c++","haskell","angular","react"]


function mostrarSugerencias() {
    //filtra los lenguajes
    let arrayFiltrado=lenguajes.filter(buscarTexto)
    //muestra el array filtrado
    document.getElementById("msj").innerHTML=arrayFiltrado

}

function buscarTexto(lenguaje) {
    //obtiene el texto ingresado por el usuario
    let q=document.getElementById("q").value 
    console.log(q)

    // let encontro=lenguaje.indexOf(q)!=-1
    // return encontro
    //verifica que el elemento contenga el texto ingresado por usuario
    // todo: buscar que comience con el texto ingresado por usu
    // return lenguaje.indexOf(q)!=-1
    return lenguaje.indexOf(q)==0
}


function mostrarSugerenciasAbreviado() {
    document.getElementById("msj").innerHTML=lenguajes.filter(buscarTexto)

}

function buscarTextoAbreviado(lenguaje) {
    return lenguaje.indexOf(document.getElementById("q").value )!=-1
}