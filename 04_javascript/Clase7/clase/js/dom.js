console.log(document)
console.log(document.body)
console.log(document.body.children)
console.log(document.getElementById("msjInicio"))

function cambiarMsj() {
    document.getElementById("msjInicio").innerHTML="Bienvenido Roberta Sanchez"    
}

function cambiarEstilo() {
    document.getElementById("msjInicio").style.backgroundColor="lightcoral"
    document.getElementById("msjInicio").style.color="blue"
    document.getElementById("msjInicio").style.borderRadius="5px"
    document.getElementById("msjInicio").style.padding="1rem"
}
