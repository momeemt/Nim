import strutils
stdout.write "input number: "
let inputNumber: int = stdin.readLine.parseInt
for i in countdown(inputNumber, 0):
  echo $i