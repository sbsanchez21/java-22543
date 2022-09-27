console.log("Ingreso al jssss")

//varibles debilemente tipado
var edad = 32
console.log("edad:" + edad)
edad = 35
console.log(`edad: ${edad}`) //alt+96 
// edad = prompt("ingrese edad")
// let estaLloviendo = true

let pi = 3.14
console.log(pi)
pi = "Rorberto"
console.log(pi)


// operaciones
let a=3
let b=4
console.log(a+b)

let nombre = "Juan"
let apellido = "Suarez"
console.log(nombre + apellido)
console.log(a + apellido)

// concatenacion
console.log("Bienvenido " + nombre + " " + apellido + " a nuestra página")
console.log(`Bienvenido ${nombre} ${apellido} a nuestra página`) //alt + 96


// operaciones artiméticas
let c=5
let d=4
console.log(`suma ${c+d}`)
console.log(`resta ${c-d}`)
console.log(`suma ${c*d}`);
console.log(`suma ${c/d}`);

// comparación
let n=5
let x=6
let y="5"
console.log(n==x)
console.log(n==y)
console.log(n!=y)
console.log(n>x)
console.log(n<x)
console.log(n>=x)
console.log(n>=y)
console.log(n==y)  //true 5=="5"
console.log(n===y) //false 5==="5"

console.log(true==1)
console.log(true===1)

// operadores lógicos
let usu 
let pass 
// usu=prompt("Ingrese su usuario")
// pass=prompt("INgrese su pass")

//and
if (usu=="san@gmail.com" && pass=="123") {
    console.log("Bienvenido a la página")
} else {
    console.log("usu o pass incorrectos")
}


let estaLloviendo
let hayPronosticoLluvia
estaLloviendo = false 
hayPronosticoLluvia = false

//or
if (estaLloviendo || hayPronosticoLluvia) {
    console.log("llevar paragüas")
} else {
    console.log("No llevar paragüas")
}

// not
if (!estaLloviendo) {
    console.log("lll")
}


// estrcuturas de control
if (true) {
    // si true
}

if (true) {
    // true
} else {
    // false
}

edad = 80
if (edad <= 18) {
    console.log("Niño o joven")
} else if(edad > 18 && edad < 70) {
    console.log("adulto")
} else {
    console.log("anciano")
}

// switch
let nroMes = 4
switch (nroMes) {
    case 1:
        console.log("Enero")
        break;
    case 2:
        console.log("Febrero")
        break;

    case 3:
        console.log("Marzo")
        break;
    
    
    default:
        console.log("No existe el mes")
        break;
}

// iterador
for (let i = 0; //inicializa i=0
    i < 4; //corta cuando esto da false
    i++) //incrementa 1
    {
    console.log(i)
}

// var let const
if (true) {
    var z = 3333 //alcance global
    
    let t = 4 //alcance local
}

console.log(z)
// console.log(t)

let mes=22
while (mes<=12) {
    console.log(`mes: ${mes}`)
    mes++
}

mes=4
do {
    console.log(`mes: ${mes}`)
    mes++
} while (mes<=12);