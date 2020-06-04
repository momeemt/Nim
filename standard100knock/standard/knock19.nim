import strutils
var arr: array[5, int]
for i in 0..4:
  stdout.write "input number: "
  arr[i] = stdin.readLine.parseInt
for x in arr:
  echo $x
