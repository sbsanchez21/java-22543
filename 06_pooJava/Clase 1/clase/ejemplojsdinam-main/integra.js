var body = document.body
var cont = 0;

function agregar(){
    var lengInput = document.getElementById("nombre").value.length
    console.log(lengInput)

    if (lengInput>0) {
        let btn = document.getElementById("btn")
        btn.style.display="block"
        
    } else {
        btn.style.display="none"
    }

    

}
