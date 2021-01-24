function debugJS(what){
    let debugMsg=""
    let p = document.getElementById("numPad")
    switch (what){
        case 1:
            for(i=0; i<numCount; i++){
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
            let result
            num[numCount] = Number(p.value.slice(-numLength))
            sign[numCount] = 'e'
            numCount += 1
            for (let i=0; i<numCount; i++){
                let n = num[i]
                switch (i){
                    case 0:
                        result = n
                        break
                    default:
                        let s = sign[i-1]
                        if (s === 't'){
                            result = result * n
                        }else if (s === 'd'){
                            result = result / n
                        }
                        break
                }
            }
            console.log(result)
            clearInput()
            return result
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
