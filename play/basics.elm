module Main exposing (..)

import Html


len str =
    String.length str


combine str1 str2 =
    str1 ++ str2


join str1 str2 =
    String.join " " [ "Lions" "and" "tigers" ]



-- anonymous function--
--isValid = \char -> char /= '-'--


main =
    len "house"
        |> toString
        |> Html.text
