var input = document.getElementById("txt")

var _valueTxt = input.value

function adi(){
    var p = document.createElement("p")
    p.innerHTML = input.value 
    document.body.appendChild(p)
}  
