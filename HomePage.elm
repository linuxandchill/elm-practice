module BeginningElm exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view model =
    div [ class "jumbotron" ]
        [ h1 [] [ text "Welcome" ]
        , p []
            [ text "Dunder Miffin "
            , strong [] [ text ("DMI") ]
            , text " is a microcaldkfjklasdj fa;ljsdf klajsdf"
            ]
        ]


main =
    view "dummy model"
