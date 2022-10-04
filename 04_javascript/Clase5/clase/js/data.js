let a=4
let b=5
console.log(`a+b=${a+b}`)

// función no se ejecuta por si misma hay que llamarla
function sumar() {
    console.log(`función sumar: ${a}+${b}=${a+b}`)
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
    console.log(`función restar: ${a}-${b}=${a-b}`)
}
restar(6,4)
restar(8,9)

function raizCuadrada(x) {
    if (x<0) {
        document.getElementById("msjRaiz").innerHTML=`La raíz cuadrada de valores negativos No Existe`
        document.getElementById("msjRaiz").className="bg-danger my-2 rounded px-2 text-center"
        
    } else {
        console.log(x)
        let result=Math.sqrt(x)
        console.log(`Raíz cuadrada de ${x}=${result}`)
        document.getElementById("msjRaiz").innerHTML=`Raíz cuadrada de ${x}=${result}`
            
    }
}

raizCuadrada(16)
raizCuadrada(33)

// function con return
function multiplicar(a,b) {
    return a*b
}

let result=multiplicar(5,3)
console.log(result+5)

// uso de una función con parámetros y devolución de valores
function calcularSueldo(categoria) {
    // switch (categoria) {
    //     case "A":
    //         break;

    //     case "B":
    //         break;            
    
    //     default:
    //         break;
    // }

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

let dividirFlecha=(a,b)=>a/b
dividirFlecha(5,2)

let sumaFlecha=(a,b)=>a+b
sumaFlecha(2,3)

let raizFlecha=(x)=>Math.sqrt(x)

let calcularSueldoFlecha=(categoria)=>{
    if (categoria=="A") {
        return 50000
    } else if(categoria=="B") {
        return 70000
    } else {
        return 90000
    }
}

//Función anónima
let raiz=function(a) {
    return Math.sqrt(a);
};
raiz(a)



/** Array
 * variable especial puede contener más de un valor a la vez
*/
let sueldo1=50000
let sueldo2=60000
let sueldo3=70000
let sueldo4=80000
let sueldo5=90000

sueldo1+=sueldo1*10/100
sueldo2+=sueldo2*10/100
sueldo3+=sueldo3*10/100
sueldo3+=sueldo3*10/100
sueldo3+=sueldo3*10/100
sueldo3+=sueldo3*10/100
sueldo3+=sueldo3*10/100

let sueldos=[50000,60000,70000,80000,90000,100000]
sueldos[0] //accedo al sueldo en el índice 0 50000
sueldos[4] //accedo al sueldo en el índice 4 90000
sueldos[0]=55000 //modifico el valor en el índice 0

for (let i = 0; i < sueldos.length; i++) {
    console.log(sueldos[i])
    sueldos[i]+=sueldos[i]*10/100
    console.log(`sueldo amumentado ${sueldos[i]}`)
}

// array propiedades y métodos
sueldos.length //long de un array
console.log(sueldos)
sueldos.sort() //ordena el array y lo modifica
console.log(sueldos)
sueldos.pop() //sacar el último elemento
console.log(sueldos)
sueldos.push(777777)
console.log(sueldos)
sueldos.push(88888)
console.log(sueldos)
console.log(sueldos.indexOf(77000))
console.log(sueldos.indexOf(1234))

// matriz
let butacas=[
    ["A1","A2","A3"], //fila A
    ["B1","B2","B3","B4"], //fila b
    ["C1","C2","C3"] //fila C
]

console.log(butacas[2][0])
console.log(butacas)
butacas[1][1]="ddd"
console.log(butacas)

for (let i = 0; i < butacas.length; i++) {
    console.log(butacas[i])
    for (let j = 0; j < butacas[i].length; j++) {
        console.log(`indices i:j ${i}:${j}`)
        console.log(butacas[i][j])
        
    }
}

// for of, for each java, php, py
let edades=[23,12,23,22,56,89]
for (edad of edades) {
    console.log(edad)
}

for(fila of butacas) {
    console.log(fila)
    for(but of fila) {
        console.log(but)
    }
}

let butacasOcupadas=[
    [
        ["A1",true],
        ["A2",false],
        ["A3",true]
    ], //fila A
    [
        ["B1",true],
        ["B2",false],
        ["B3",true]
    ] //fila A
]