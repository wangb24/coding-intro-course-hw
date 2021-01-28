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
    let eq = [], eqf, aORm = [], si = []
    while (!got) {
        // console.log('case#: ' + loopTimes)
        switch (loopTimes) {
            case 0:
                let allSigns = ""
                for (let i = 0; i < numCount; i++) {
                    allSigns += sign[i]
                    // console.log(i + " " + (sign[i] === 'p' || sign[i] === 'm'))
                    if (sign[i] === 'p' || sign[i] === 'm') {
                        aORm[aORm.length] = i
                    }
                }
                // console.log(allSigns)
                if (!allSigns.includes('t') && !allSigns.includes('d')) {
                    loopTimes = 98
                }
                break

            case 1:
                // console.log(aORm.length)
                if (aORm.length === 0) {
                    loopTimes = 30
                // } else if (aORm.length === 1) {
                //     loopTimes = 40
                } else {
                    loopTimes = 54
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

            // case 41:
            //     console.log(aORm[0])
            //     for (let i = 0; i <= aORm[0]; i++) {
            //         if (i === aORm[0]) {
            //             si[0] = sign[i]
            //         }
            //         if (i === 0) {
            //             eq[0] = num[i]
            //         } else {
            //             if (sign[i - 1] === 't') {
            //                 eq[0] = eq[0] * num[i]
            //                 console.log('times')
            //             } else if (sign[i - 1] === 'd') {
            //                 eq[0] = eq[0] / num[i]
            //                 console.log('division')
            //             }
            //         }
            //         console.log(eq[0])
            //     }
            //     for (let i = aORm[0] + 1; i < numCount; i++) {
            //         if (i === aORm[0] + 1) {
            //             eq[1] = num[i]
            //         } else {
            //             if (sign[i - 1] === 't') {
            //                 eq[1] = eq[1] * num[i]
            //             } else if (sign[i - 1] === 'd') {
            //                 eq[1] = eq[1] / num[i]
            //             }
            //         }
            //         console.log(eq[1])
            //     }
            //     if (si[0] === 'p') {
            //         result = eq[0] + eq[1]
            //     } else if (si[0] === 'm') {
            //         result = eq[0] - eq[1]
            //     }
            //
            //     got = true
            //     break

            case 51:
                alert("unable to solve this yet\n still working on it")
                got = true
                window.location.reload()
                break

            case 55:
                let len = aORm.length, lenRel = aORm.length-1
                for (let i = 0; i < len; i++) {
                    switch (i) {
                        case 0:
                            for (let j = 0; j <= aORm[i]; j++) {
                                if (j === aORm[i]) {
                                    si[0] = sign[j]
                                }
                                if (j === 0) {
                                    eq[0] = num[j]
                                } else {
                                    if (sign[j - 1] === 't') {
                                        eq[0] = eq[0] * num[j]
                                    } else if (sign[j - 1] === 'd') {
                                        eq[0] = eq[0] / num[j]
                                    }
                                }
                            }
                            // console.log(eq[0] +' '+ si[0])

                            for (let j = aORm[lenRel] + 1; j < numCount; j++){
                                if (j === aORm[lenRel] + 1){
                                    eqf = num[j]
                                } else {
                                    if (sign[j-1] === 't'){
                                        eqf = eqf * num[j]
                                    }else if (sign[j-1] === 'd'){
                                        eqf = eqf / num[j]
                                    }
                                }
                            }
                            // console.log('eqf: '+eqf)
                            break

                        default:
                            let eql = eq.length
                            for (let j = aORm[i-1]+1; j <= aORm[i]; j++){
                                if (j === aORm[i]){
                                    si[eql]=sign[j]
                                }
                                if (j === aORm[i-1]+1){
                                    eq[eql]=num[j]
                                }else {
                                    if (sign[j-1] === 't'){
                                        eq[eql] = eq[eql] * num[j]
                                    }else if (sign[j-1] === 'd') {
                                        eq[eql] = eq[eql] / num[j]
                                    }
                                }
                            }
                            // console.log("eq["+eql+']: '+eq[eql])
                            break
                    }
                }
                for (let i = 0; i < eq.length; i++){
                    switch (i){
                        case 0:
                            result = eq[0]
                            break
                        default:
                            // console.log(si[i-1])
                            if (si[i-1] === 'p'){
                                result += eq[i]
                            }else if (si[i-1] === 'm'){
                                result -= eq[i]
                            }
                            break
                    }
                }
                if (si[si.length-1] === 'p'){
                    result += eqf
                }else if (si[si.length-1] === 'm'){
                    result -= eqf
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

    // console.log("result: " + result)
}

function whenPageLoad(){
    let urla = window.location.search
    let searcha = new URLSearchParams(urla)
    if (Boolean(searcha.get("debug")) === true){
        showDebugOptions()
    }
    if (Boolean(searcha.get("td")) === true){
        debugJS(31)
    }
    if (searcha.has("hello") === true){
        alert("Hello world!")
    }
}
