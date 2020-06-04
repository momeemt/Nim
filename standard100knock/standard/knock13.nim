import strutils
stdout.write "input number: "
let inputNumber: int = stdin.readLine.parseInt
for i in 0..inputNumber:
  echo $i