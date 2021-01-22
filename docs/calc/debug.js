function debug(what){
    let debugMsg=""
    let p = document.getElementById("numPad")
    switch (what){
        case 1:
            for(i=0; i<numCount; i++){
                debugMsg = debugMsg + num[i] + sign[i]
            }
            alert(debugMsg)
            break
        default:
            alert("No input!")
            break
    }
}
