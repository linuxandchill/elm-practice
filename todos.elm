module Todos exposing (..)

import Html exposing (..)


type Visibility
    = All
    | Completed
    | Active


type alias Task =
    { task : String, completed : Bool }


feed : Task
feed =
    { task = "Feed Dog", completed = False }


walk : Task
walk =
    { task = "walk", completed = True }


tasks : List Task
tasks =
    [ feed, walk ]


keep : Visibility -> List Task -> List Task
keep visibility tasks =
    case visibility of
        All ->
            tasks

        Active ->
            List.filter (\task -> not task.completed) tasks

        Completed ->
            List.filter (\task -> task.completed) tasks


main =
    keep All tasks
        |> List.map (\x -> x.task)
        |> toString
        |> Html.text
