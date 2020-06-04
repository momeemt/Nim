import strutils
while true:
  stdout.write "input number: "
  let inputNumber: int = stdin.readLine.parseInt
  if inputNumber == 0:
    break
