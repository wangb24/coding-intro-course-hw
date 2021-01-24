let c = true,
    num = [0],
    numCount = 0,
    sign = [],
    numLength = 1,
    repeat = false,
    psign,
    calc = false

function updateNum(toAdd) {
    let p = document.getElementById("numPad")
    if (calc) {
        clearInput()
        calc = false
    }
    if (c && toAdd !== '.') {
        p.value = toAdd
        numLength = 1
    } else {
        p.value = p.value + toAdd
        numLength += 1
    }
    c = false
    repeat = false
    p.scrollLeft = p.scrollWidth

}

function calcSign(operator, signStr) {
    //accepted operator: p, m, t, d
    let p = document.getElementById("numPad")
    if (calc) {
        let tempDisplay = p.value.slice(-numLength),
            tempNumLength = numLength
        clearInput()
        numLength = tempNumLength
        p.value = tempDisplay
        calc = false
    }
    if (!repeat) {
        num[numCount] = Number(p.value.slice(-numLength))
        sign[numCount] = operator
        p.value = p.value + signStr
        psign = signStr
        numCount += 1
        numLength = 0
        repeat = true
    } else {
        sign[numCount - 1] = operator
        p.value = p.value.slice(0, -psign.length) + signStr
        psign = signStr
    }
    p.scrollLeft = p.scrollWidth

    c = false
}

function clearInput() {
    let p = document.getElementById("numPad")
    c = true
    num = [0]
    numCount = 0
    sign = []
    numLength = 1
    repeat = false
    psign = ""
    p.value = '0'
    p.scrollLeft = p.scrollWidth

}

function calcResult() {
    let p = document.getElementById("numPad")
    let result, got = false
    if (calc) {
        let tempDisplay = p.value.slice(-numLength),
            tempNumLength = numLength
        clearInput()
        numLength = tempNumLength
        p.value = tempDisplay
        calc = false
    }
    num[numCount] = Number(p.value.slice(-numLength))
    sign[numCount] = 'e'
    numCount += 1
    let loopTimes = 0
    let eq = [], aORm = []
    while (!got) {
        console.log('case#: ' + loopTimes)
        switch (loopTimes) {
            case 0:
                let allSigns = ""
                for (let i = 0; i < numCount; i++) {
                    allSigns += sign[i]
                    console.log(i + " " + (sign[i] === 'p' || sign[i] === 'm'))
                    if (sign[i] === 'p' || sign[i] === 'm') {
                        aORm[aORm.length] = i
                        console.log(aORm[aORm.length - 1])
                        console.log(aORm.length)
                    }
                }
                console.log(allSigns)
                if (!allSigns.includes('t') && !allSigns.includes('d')) {
                    loopTimes = 98
                }
                break

            case 1:
                console.log(aORm.length)
                if (aORm.length === 0) {
                    loopTimes = 30
                } else if (aORm.length === 1) {
                    loopTimes = 40
                } else {
                }
                break

            case 31:
                for (let i = 0; i < numCount; i++) {
                    let n = num[i]
                    switch (i) {
                        case 0:
                            result = n
                            break
                        default:
                            let s = sign[i - 1]
                            if (s === 't') {
                                result = result * n
                            } else if (s === 'd') {
                                result = result / n
                            }
                            break
                    }
                }
                got = true
                break

            case 99:
                for (let i = 0; i < numCount; i++) {
                    let n = num[i]
                    switch (i) {
                        case 0:
                            result = num[0]
                            break
                        default:
                            let s = sign[i - 1]
                            if (s === 'p') {
                                result += n
                            } else if (s === 'm') {
                                result -= n
                            } else {
                            }
                            break
                    }
                }
                got = true
                break

        }
        loopTimes += 1
    }
    numLength = result.toString().length
    p.value = p.value + "=" + result.toString()
    calc = true
    p.scrollLeft = p.scrollWidth

    console.log(result)
}

