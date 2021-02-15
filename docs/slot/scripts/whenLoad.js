function whenLoad(){
    let a = window.location.search
    let aa = new URLSearchParams(a)
    let c = document.cookie
    initialize()
    update()
    if(!aa.has("dismiss")){
        displayRule()
    }
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
    document.getElementById("msg").innerHTML = msg
}

function displayRule() {
    let rule = "Rules: \n" +
        "Each spin cost 5 points\n" +
        "When 3 numbers are the same: you got 500 points \n" +
        "When 3 numbers are the same and they are all 7: you got 100 points \n" +
        "When 2 numbers are the same: you got 5 points \n" +
        "When 3 numbers are next to each other: you got 10 point"
    alert(rule)
}
