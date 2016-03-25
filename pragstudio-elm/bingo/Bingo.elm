module Bingo where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String exposing (toUpper, repeat, trimRight)

import StartApp.Simple

-- MODEL

newEntry phrase points id =
  {
    phrase = phrase,
    points = points,
    wasSpoken = False,
    id = id
  }

initialModel =
  {
    entries =
      [
        newEntry "Doing Agile" 200 2,
        newEntry "In the Cloud" 300 3,
        newEntry "Future-Proof" 100 1,
        newEntry "Rock-Star Ninja" 400 4
      ]
  }

-- UPDATE

type Action
  = NoOp
    | Sort
    | Delete Int

update action model =
  case action of
    NoOp -> model

    Sort ->
      {model | entries = List.sortBy .points model.entries }

    Delete id ->
      let
        remainingEntries =
          List.filter (\e -> e.id /= id ) model.entries
      in
        { model | entries = remainingEntries }

-- VIEW

title message times =
  message ++ " "
    |> toUpper
    |> repeat times
    |> trimRight
    |> text

pageHeader =
  h1 [ id "logo", class "classy" ] [ title "bingo!" 3 ]


pageFooter =
  footer []
    [
      a [ href "https://pragmaticstudio.com" ]
        [ text "The Pragmatic Studio"]
    ]

entryItem address entry =
  li []
    [
      span [class "phrase"] [text entry.phrase],
      span [class "points"] [text (toString entry.points) ],
      button
        [class "delete", onClick address (Delete entry.id)]
        []
    ]

entryList address entries =
  let
    entryItems = (List.map (entryItem address) entries)
  in
    ul [] entryItems

view address model =
  div [ id "container"]
      [ pageHeader,
        entryList address model.entries,
        button
          [ class "sort", onClick address Sort] [text "Sort"],
        pageFooter
      ]

-- WIRE IT ALL TOGETHER
main =
  StartApp.Simple.start
    { model = initialModel,
      view = view,
      update = update
    }
