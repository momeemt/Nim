import strutils, algorithm
stdout.write "input number: "
let inputNumber: int = stdin.readLine.parseInt
var arr: array[10, int]
fill(arr, inputNumber)
for x in arr:
  echo $x