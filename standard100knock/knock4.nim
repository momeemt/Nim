import strutils
stdout.write "input number: "
let inputNumber: int = stdin.readLine.parseInt
let result: int = inputNumber * 3
echo "your number: " & $result