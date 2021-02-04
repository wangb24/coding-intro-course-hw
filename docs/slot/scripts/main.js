let pt, dis = [7,7,7]

function roll() {
    let r = true, which = 0
    document.getElementById("roll").disabled = true;
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

    document.getElementById("roll").disabled = false
}

function determinPt(){
    let ab = diff(num[0], num[1]),
        bc = diff(num[1], num[2]),
        ca = diff(num[2], num[0])

}

function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
}
