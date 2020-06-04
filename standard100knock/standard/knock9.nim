import strutils
stdout.write "input number: "
let inputNumber: int = stdin.readLine.parseInt
if inputNumber > 0:
  echo "positive"
elif inputNumber == 0:
  echo "zero"
else:
  echo "negative"