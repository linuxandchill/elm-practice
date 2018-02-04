module Playground exposing (..)

import Html


type alias Person =
    { name : String, age : Int }


printRecord : Person -> Int
printRecord person =
    String.length person.name


main =
    let
        bob =
            Person "Bob" 39
    in
        printRecord bob
            |> toString
            |> Html.text
