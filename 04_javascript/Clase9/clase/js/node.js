document.children


let cont=1
function addInputCli() {
    cont++
    let input=document.createElement("input")
    input.setAttribute("type","text")
    input.setAttribute("id",`cli${cont}`)
    input.setAttribute("class","form-control ")
    input.setAttribute("placeholder",`Cliente ${cont}` )

    let btn=document.createElement("button")
    btn.setAttribute("id",`btn${cont}`)
    btn.setAttribute("class","btn btn-primary mb-3")
    btn.setAttribute("onclick",`delInput('cli${cont}','btn${cont}')`)
    let texto=document.createTextNode("Eliminar")
    btn.appendChild(texto)

    let clientes=document.querySelector("#clientes")
    clientes.appendChild(input)
    clientes.appendChild(btn)
   
}

function delInput(idInput, idBtn) {
    cont--
    let input=document.getElementById(idInput)
    let btn=document.getElementById(idBtn)

    let clientes=document.querySelector("#clientes")
    clientes.removeChild(input)
    clientes.removeChild(btn)
}