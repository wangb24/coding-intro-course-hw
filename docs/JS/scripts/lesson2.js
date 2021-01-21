let item1, item2, item3;
let colors;
colors = ['red', 'green', 'blue'];
let click1 = false;


function lesson2() {
    item1 = document.getElementById('twoli1');
    item2 = document.getElementById('twoli2');
    item3 = document.getElementById('twoli3');
    let items = [item1, item2, item3];

    if (!click1) {
        for (let i = 0; i < 3; i++) {
            items[i].textContent = colors[i];
            items[i].style.color = colors[i];
        }
        click1 = true;
    }else{
        for (let i = 0; i < 3; i++) {
            items[i].textContent = 'Item '+ (i+1);
            items[i].style.color = 'black';
        }
        click1 = false;
    }
}

function calcArea(base, height, depth){
    let a = base * height;
    let b = base * height * depth;
    return [a, b];
}

function printArea(){
    let b = prompt('Base', 0);
    let h = prompt('height', 0);
    let d = prompt('depth', 0);
    if (isNaN(b) || isNaN(h) || isNaN(d)){
        alert("at least one of your input is not number")
        return
    }
    let r = calcArea(b, h, d);
    alert('Area or rect is: ' + r[0] + '\nVolume of rect is: ' + r[1]);
}
