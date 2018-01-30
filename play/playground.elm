module Playground exposing (..)

import Html


speed distance time =
    distance / time


time startTime endTime =
    endTime - startTime


escapeEarth velocity speed fuelStatus =
    let
        escapeVelocityInKmPerSec =
            11.186

        orbitalSpeedInKmPerSec =
            7.67

        whereToLand fuelStatus =
            if fuelStatus == "low" then
                "Land on droneship"
            else
                "Land on launchpad"
    in
        if velocity > escapeVelocityInKmPerSec then
            "Bye bitch"
        else if speed == orbitalSpeedInKmPerSec then
            "Stay"
        else
            whereToLand fuelStatus


add x y =
    x + y


whereToPark speed =
    case speed of
        7.67 ->
            "low earth orbit"

        3.8 ->
            "medium"

        3.07 ->
            "high"

        _ ->
            "no parking"


main =
    whereToPark 7.67
        |> Html.text



{--
    3
        |> add 4
        |> toString
        |> Html.text
--}
{--
        --}
