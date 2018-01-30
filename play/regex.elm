module Main exposing (..)

import Html
import Regex


pattern =
    Regex.regex "\\d\\d:\\d\\d (a\\.m\\.|p\\.m\\.)"


string =
    """
 On July 16, 1969, the massive Saturn V rocket
 lifted off from NASA's Kennedy Space Center at
 09:32 a.m. EDT. Four days later, on July 20, Neil
 Armstrong and Buzz Aldrin landed on the Moon.
 """


main =
    string
        |> Html.text
