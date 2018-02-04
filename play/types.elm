module TypeSystem exposing (..)

import Html


double =
    let
        multiplier =
            2

        scores =
            [ 316, 320, 312, 370, 337, 318, 314 ]
    in
        List.map (\x -> x * multiplier) scores


triple =
    let
        multiplier =
            3

        scores =
            [ 316, 320, 312, 370, 337, 318, 314 ]
    in
        List.map (\x -> x * multiplier) scores



{- fordExplorer = Car "Ford" "Explorer" 2007 -}


type alias Car =
    { make : String, model : String, year : Int }


findCarModel : List Car -> List String
findCarModel cars =
    List.map .model cars



{- .model
   car
-}


cars =
    [ Car "Ford" "Explorer" 2007
    , Car "Chevy" "Volt" 2016
    ]


main =
    findCarModel cars
        |> toString
        |> Html.text
