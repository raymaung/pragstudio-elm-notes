import Graphics.Element exposing (..)
import Keyboard
import Mouse

type alias Model = Int

initialModel: Model
initialModel = 0

model: Signal Model
model =
  Signal.foldp update initialModel Mouse.clicks


-- UPDATE
update: a -> Model -> Model
update event model =
  model + 1


-- VIEW
view: Model -> Element
view model =
  show model

main: Signal Element
main =
  --Signal.map show model
  Signal.map view model