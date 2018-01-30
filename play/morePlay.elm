module Playground exposing (..)

import Html


weekday dayInNumber =
    case dayInNumber of
        0 ->
            "Sunday"

        1 ->
            "Monday"

        2 ->
            "Tuesday"

        _ ->
            "Not a day"


main =
    weekday 2
        |> Html.text
