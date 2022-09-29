let a=4
let b=5
console.log(`a+b=${a+b}`)

// función no se ejecuta por si misma hay que llamarla
function sumar() {
    console.log(`función sumar: a+b=${a+b}`)
}
//llamando a la función
sumar()
sumar()
b=15
sumar()
a=66
sumar()
a="Juan"
sumar()

// funciones con parámetros
function restar(a,b) {
    console.log(`a=${a}`)
    console.log(`b=${b}`)
    console.log(`función restar: a-b=${a-b}`)
}
restar(6,4)
restar(8,9)

function raizCuadrada(x) {
    console.log(x)
    let result=Math.sqrt(x)
    console.log(`Raíz cuadrada de ${x}=${result}`)
    document.getElementById("msjRaiz").innerHTML=`Raíz cuadrada de ${x}=${result}`
}

raizCuadrada(16)
raizCuadrada(33)

// function con return
function multiplicar(a,b) {
    return a*b
}

let result=multiplicar(5,3)
console.log(result+5)

function calcularSueldo(categoria) {
    switch (categoria) {
        case "A":
            break;

        case "B":
            break;            
    
        default:
            break;
    }

    if (categoria=="A") {
        return 50000
    } else if(categoria=="B") {
        return 70000
    } else {
        return 90000
    }


}

let sueldo=calcularSueldo("A")
let premios=5000
let sueldoTotal=sueldo+premios
console.log(sueldoTotal)

sueldo=calcularSueldo("C")
premios=3000
sueldoTotal=sueldo+premios
console.log(sueldoTotal)

// función flecha
function dividir(a,b) {
    return a/b
}
console.log(dividir(10,3))

let dividirFlecha= (a,b) => a/b
console.log(dividirFlecha(5,2))

