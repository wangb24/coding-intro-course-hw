let today = new Date();
let hourNow = today.getHours();
let greeting;
let clickTimes = 0;

function hello() {
    if (hourNow > 18) {
        greeting = "Good Evening";
    } else if (hourNow >= 12 && hourNow <= 18) {
        greeting = "Good Afternoon";
    } else if (hourNow >= 0 && hourNow < 12) {
        greeting = "Good Morning";
    } else {
        greeting = "Hello World!";
    }
}

function tryIt() {
    hello();
    document.getElementById('try').innerHTML = greeting;
    let a = document.getElementById("try");
    let b = a.style.display;
    if ('none' === b){
        a.style.display = 'block';
    }else{
        a.style.display = 'none';
    }
    clickTimes += 1;
    document.getElementById('count').textContent = "you clicked " + clickTimes + " times."
}
