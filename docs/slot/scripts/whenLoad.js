function whenLoad(){
    let a = window.location.search
    let aa = new URLSearchParams(a)
    let c = document.cookie
    initialize()
    update()

    displayRule()
    console.log('it works')
    document.cookie = "read = true"
}

function initialize() {
    pt = 100
    dis = [7,7,7]
}

function update() {
    let d = document.getElementsByClassName("display")
    let p = document.getElementById('points')
    for (let i=0; i < d.length; i++){
        d[i].value = dis[i]
    }
    p.value = pt + ' point'
}

function displayRule() {
    let rule = "Rules: \n" +
        "Each spin cost 5 points\n" +
        "When 3 numbers are the same: you got 50 points \n" +
        "When 3 numbers are the same and they are all 0 or 7: you got 100 points \n" +
        "When 2 numbers are the same: you got 20 points \n" +
        "When 3 numbers are next to each other: you got 10 point"
    alert(rule)
}