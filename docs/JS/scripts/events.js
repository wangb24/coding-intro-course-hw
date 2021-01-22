let text1 = document.getElementById("fourTitle")
let tInput = document.getElementById("fourTextBox")
let btn4 = document.getElementById("fourBtn")

function fourScript() {
    text1.innerHTML = tInput.value
    tInput.value = ""
}

btn4.addEventListener("click", fourScript, false)
