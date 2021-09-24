discard """
  output: '''11
22
33
3
2
3
3
15
(oa: [1, 3, 4])'''
  targets: "c cpp"
"""

{.experimental: "views".}

proc take(a: openArray[int]) =
  echo a.len

proc main(s: seq[int]) =
  var x: openArray[int] = s
  for i in 0 .. high(x):
    echo x[i]
  take(x)

  take(x.toOpenArray(0, 1))
  let y = x
  take y
  take x

main(@[11, 22, 33])

var x: int

proc foo(x: var int): var int =
  once: x = 42
  return x

var y: var int = foo(x)
y = 15
echo foo(x)
# bug #16132

# bug #18690

type
  F = object
    oa: openarray[int]

let s1 = @[1,3,4,5,6]
var test = F(oa: toOpenArray(s1, 0, 2))
echo test
