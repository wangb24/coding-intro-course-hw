function diff(num1, num2){
    return Math.abs(num1 - num2)
}

function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
}

function notSame(num1, num2, num3){
    return num1 !== num2 && num2 !== num3 && num3 !== num1
}