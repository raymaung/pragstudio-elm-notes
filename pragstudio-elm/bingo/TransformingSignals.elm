import Graphics.Element exposing (..)
import Mouse
import Window
import Keyboard


area: (Int, Int) -> Int
area (w, h) =
  w * h

windowArea: Signal Int
windowArea =
  Signal.map area Window.dimensions

main: Signal Element
main =
  Signal.map show windowArea