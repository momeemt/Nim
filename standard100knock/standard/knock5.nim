import strutils
stdout.write "input 1st number: "
let firstNumber: int = stdin.readLine.parseInt
stdout.write "input 2nd number: "
let secondNumber: int = stdin.readLine.parseInt
echo "和: " & $(firstNumber + secondNumber)
echo "差: " & $(firstNumber - secondNumber)
echo "積: " & $(firstNumber * secondNumber)
echo "商: " & $(firstNumber / secondNumber) & ", 余り: " & $(firstNumber mod secondNumber)
