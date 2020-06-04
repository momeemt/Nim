import strutils
stdout.write "input number: "
let inputNumber: int = stdin.readLine.parseInt.abs
echo "absolute value is " & $inputNumber