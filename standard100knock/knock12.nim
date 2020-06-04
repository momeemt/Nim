import strutils
stdout.write "inport number: "
let inputNumber: int = stdin.readLine.parseInt
for _ in 1..inputNumber:
  echo "Hello World!"