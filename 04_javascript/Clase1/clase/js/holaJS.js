// //código js
// //ejemplo de lógica con js
// var ok = confirm("Es mayor de edad?"); //si aceptar ok=true, cancelar ok=false

// if (ok) {
//     //ejemplo html dinámico
//     document.write("<div style='background-color: lightblue;'>Bienvenido a la página</div>");
// } else {
//     //ejemplo html dinámico
//     document.write("<div style='background-color: red;'>Usted es menor de edad, NO puede ingresar a la página</div>");
// }


var edad = prompt("Ingrese su edad"); //edad = valor ingresad x usuario
console.log("edad: " + edad);

if (edad >= 18) {
    console.warn("entro al true");
    document.write("<div style='background-color: lightblue;'>Bienvenido a la página</div>");
} else {
    console.error("entro al else");
    document.write("<div style='background-color: red;'>Usted es menor de edad, NO puede ingresar a la página</div>");
}