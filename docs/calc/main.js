let c = true,
    num=[0],
    numCount=0,
    sign=[],
    numLength=1,
    repeat=false,
    psign,
    calc = false

function updateNum(toAdd){
    let p=document.getElementById("numPad")
    if (calc){
        clearInput()
        calc = false
    }
    if (c && toAdd !== '.'){
        p.value = toAdd
        numLength=1
    }else{
        p.value = p.value+toAdd
        numLength+=1
    }
    c = false
    repeat=false
    p.scrollLeft = p.scrollWidth

}

function calcSign(operator, signStr){
    //accepted operator: p, m, t, d
    let p = document.getElementById("numPad")
    if (calc){
        let tempDisplay = p.value.slice(-numLength),
            tempNumLength = numLength
        clearInput()
        numLength = tempNumLength
        p.value = tempDisplay
        calc=false
    }
    if(!repeat) {
        num[numCount] = Number(p.value.slice(-numLength))
        sign[numCount] = operator
        p.value = p.value + signStr
        psign = signStr
        numCount += 1
        numLength = 0
        repeat = true
    }else{
        sign[numCount-1] = operator
        p.value = p.value.slice(0, -psign.length) + signStr
        psign = signStr
    }
    p.scrollLeft = p.scrollWidth

    c=false
}

function clearInput(){
    let p = document.getElementById("numPad")
    c = true
    num=[0]
    numCount=0
    sign=[]
    numLength=1
    repeat=false
    psign=""
    p.value='0'
    p.scrollLeft = p.scrollWidth

}

function calcResult(){
    let p = document.getElementById("numPad")
    let result
    if (calc){
        let tempDisplay = p.value.slice(-numLength),
            tempNumLength = numLength
        clearInput()
        numLength = tempNumLength
        p.value = tempDisplay
        calc=false
    }
    num[numCount] = Number(p.value.slice(-numLength))
    numCount += 1
    for (i = 0; i < numCount; i++){
        let n = num[i]
        switch (i){
            case 0:
                result = num[0]
                break
            default:
                let s = sign[i-1]
                if (s === 'p'){
                    result += n
                }else if (s === 'm'){
                    result -= n
                }else{}
                break
        }
    }
    numLength= result.toString().length
    p.value = p.value + "=" + result.toString()
    calc = true
    p.scrollLeft = p.scrollWidth

    console.log(result)
}