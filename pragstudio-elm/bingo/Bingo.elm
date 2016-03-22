module Bingo where

import Html
import String

main =
  "Bingo!"
    |> String.toUpper
    |> String.repeat 3
    |> Html.text