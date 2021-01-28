function debugJS(what){
    let debugMsg=""
    let p = document.getElementById("numPad")
    switch (what){
        case 1:
            for(let i=0; i<numCount; i++){
                debugMsg = debugMsg + num[i] + sign[i]
            }
            alert(debugMsg)
            break
        case 31:
            let a = document.getElementsByClassName("btn")
            for (let i=0; i<a.length; i++){
                a[i].disabled = false
            }
            break
        case 32:
            alert("no function in case32")
            break
        case 50:
            let b = eval(prompt("Enter equation: "))
            alert("Answer is: " + b)
            console.log(b)
            return b
        case 99:
            let h = "HELLO WORLD!"
            alert(h)
            console.log(h)
            return h
        default:
            alert("No input!")
            break
    }
}

function showDebugOptions(){
    document.getElementById("debug").style.display = 'block'
    document.getElementById("debugbtn").style.display = 'none'
}
