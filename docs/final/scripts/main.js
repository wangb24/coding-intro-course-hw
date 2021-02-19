function addNewInput() {
    let input = document.getElementById("inputTable"),
        inputValue = document.getElementsByClassName("userInput"),
        tempInput=[]
    let template = " <tr><td colspan=\"5\" class=\"centering\"><input type=\"text\" class=\"userInput\" onclick=\"newInput()\" /></td></tr>"
    for (let i=0; i<inputValue.length; i++){
        tempInput[tempInput.length] = inputValue[i].value
    }
    input.innerHTML = input.innerHTML + template
    for (let i=0; i<tempInput.length; i++){
        inputValue[i].value = tempInput[i]
    }
    document.getElementById("Result").innerHTML = ""
}

function pick() {
    const input = document.getElementsByClassName("userInput"),
        display = document.getElementById("Result")
    let inputStr = [], result
    for (let i=0; i < input.length; i++){
        if (input[i].value !== ""){
            inputStr[inputStr.length] = input[i].value
        }
    }
    if (inputStr.length < 2){
        alert("Please enter at least 2 values!")
        return null
    }
    result = inputStr[randomInt(inputStr.length)]
    clickedTimes += 1
    if (clickedTimes === 5){
        storedChoice = result
        display.innerHTML = `You should pick "${result}"`
    }else if (clickedTimes > 5){
        result = storedChoice
        display.innerHTML = `You have to pick something, Just pick "${result}"!`
    }else {
        display.innerHTML = `You should pick "${result}"`
    }
}