/**
 * queryselector permite seleccionar elementos de 
 * el archivo html mediante css selector
 */

document.getElementById("mensaje1")
document.querySelector("#mensaje1")

document.getElementsByClassName("text-center")
document.querySelectorAll(".text-center") //devuelve todos los elementos que tengan clase text-center
document.querySelector(".text-center") //devuelve el primer  elementos que tengan clase text-center
document.querySelector(".text-center.bg-info") 
document.querySelector(".text-center.bg-danger") //devuelve div mensaje2
document.querySelectorAll(".text-center.bg-danger") //devuelve div mensaje2 mensaje3
document.querySelectorAll(".text-center.bg-danger.p-4") //devuelve div  mensaje3