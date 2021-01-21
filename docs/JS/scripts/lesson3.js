
function lesson3() {
    let a = prompt("input")
    let b = !isNaN(a)
    alert("Type of input is: " + typeof a + "\n If it's number:  " + b);
}

function lesson3s2(){
    let a = []
    let msg = ""
    let n=0
    while (true){
        let temp = prompt("Numbers here")
        if (isNaN(temp) || temp === "" || temp === null){
            break
        }
        a[n] = temp
        n ++
    }
    for (i = 0; i < a.length; i++) {
        msg += "The "+(i+1)+"th number is: "+a[i] + "<br>";
    }
    document.getElementById("three1").innerHTML = msg;
}