module Main exposing (..)

import Html


range arg1 arg2 =
    List.range arg1 arg2


reverse list =
    List.reverse [ 1, 2, 3, 4 ]


preprend list newItem =
    newItem :: list


part arg =
    List.unzip arg


filtering arg =
    List.filter isEven arg


isEven num =
    if num % 2 == 0 then
        True
    else
        False


mapping =
    let
        guardians =
            [ "Star-lord", "Groot", "Gamora", "Drax", "Rocket" ]

        lengths =
            List.map String.length guardians
    in
        List.filter (\x -> x < 6) lengths


main =
    mapping
        |> toString
        |> Html.text
