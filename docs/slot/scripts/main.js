let pt, dis = [7,7,7]
let confirmMSG = "You have no points left\n" +
    "do you want to add 50 points?"
let msg = ""
function rollIT() {
    let r = true, which = 0
    msg = ""
    if (checkAvailablePt()===false){
        if (confirm(confirmMSG)){
            pt += 50
            update()
        }
        return undefined
    }
    document.getElementById("roll").disabled = true;
    pt -= 5;
    while (r) {
        switch (which) {
            case 0:
                dis[0] = getRandomInt(8)
                dis[1] = getRandomInt(8)
                dis[2] = getRandomInt(8)
                update()
                if (getRandomInt(32) <= 5) {
                    which = 1
                }
                break
            case 1:
                dis[1] = getRandomInt(8)
                dis[2] = getRandomInt(8)
                update()
                if (getRandomInt(32) <= 5) {
                    which = 2
                }
                break
            case 2:
                dis[2] = getRandomInt(8)
                update()
                if (getRandomInt(32) <= 5) {
                    r = false
                }
                break
            default:
                break
        }
    }
    determinPt()
    update()
    document.getElementById("roll").disabled = false
}

function determinPt(){
    let ab = diff(dis[0], dis[1]),
        bc = diff(dis[1], dis[2]),
        ca = diff(dis[2], dis[0]),
        getPt
    let i = ab+bc+ca
    if (i===0 && dis[0]===7) {
        getPt = 500
    }else if(i===0){
        getPt = 100
    }else if(ab===0||bc===0||ca===0){
        getPt = 5
    }else if(i===4 && notSame(dis[0], dis[1], dis[2])){
        getPt = 10
    }else{
        getPt = 0
    }
    pt += getPt
    let netChange = getPt - 5
    if (netChange >= 0){
        msg = "You got " + Math.abs(netChange) + " points!"
    }else {
        msg = "You lost 5 points."
    }
}

function checkAvailablePt() {
    return pt >= 5;
}
