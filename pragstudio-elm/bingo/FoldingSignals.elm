import Graphics.Element exposing (..)
import Keyboard
import Mouse


keyPressedCount: Signal Int
keyPressedCount =
  Signal.foldp (\_ count -> count + 1) 0 Keyboard.presses

mouseClickCount: Signal Int
mouseClickCount =
  Signal.foldp (\_ count -> count + 1) 0 Mouse.clicks


main: Signal Element
main =
  --Signal.map show keyPressedCount
  Signal.map show mouseClickCount