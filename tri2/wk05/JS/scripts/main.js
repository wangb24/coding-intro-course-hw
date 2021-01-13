var today = new Date();
var hourNow = today.getHours();
var greeting;

if (hourNow > 18) {
    greeting = "Good Evening";
}else if (hourNow >= 12 && hourNow <= 18){
    greeting = "Good Afternoon";
}else if (hourNow >= 0 && hourNow < 12){
    greeting = "Good Morning";
}else {
    greeting = "Hello World!";
}

function tryIt() {
    let a = document.getElementById("try");
    let b = a.style.display;
    if ('none' === b){
        a.style.display = 'block';
    }else{
        a.style.display = 'none';
    }
}
