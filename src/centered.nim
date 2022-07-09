import std/terminal
import std/strutils
import std/os

const
  test: array[9, string] = [
    "000000000000000000000000",
    "000000000000000000000000",
    "000000000000000000000000",
    "000000000000000000000000",
    "000000000000000000000000",
    "000000000000000000000000",
    "000000000000000000000000",
    "000000000000000000000000",
    "000000000000000000000000",
  ]

hideCursor()


while true:


  var
    a: int = 0


  let
    x: int = terminalWidth()
    y: int = terminalHeight()


  eraseScreen()
  setCursorPos(0, 0)

  let
    d: int = int(y / 2) - int(test.len / 2)

  while a < d:
    inc a
    echo ""


  for i in test:
    echo i.center(x)

  sleep(1)


