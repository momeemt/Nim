import strutils
stdout.write "input number: "
let inputNumber: int = stdin.readLine.parseInt
for i in countup(0,inputNumber,2):
  echo $i