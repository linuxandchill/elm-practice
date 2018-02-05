module RippleCarryAdder exposing (..)

import Bitwise


andGate a b =
    Bitwise.and a b


orGate : Int -> Int -> Int
orGate a b =
    Bitwise.or a b


inverter : Int -> Int
inverter a =
    case a of
        0 ->
            1

        1 ->
            0

        _ ->
            -1


type alias AdderRecord =
    { carry : Int, sum : Int }


halfAdder : Int -> Int -> AdderRecord
halfAdder a b =
    let
        d =
            orGate a b

        e =
            andGate a b |> inverter

        sumDigit =
            andGate d e

        carryOut =
            andGate a b
    in
        { carry = carryOut, sum = sumDigit }


fullAdder : Int -> Int -> Int -> AdderRecord
fullAdder a b carryIn =
    let
        firstResult =
            halfAdder b carryIn

        secondResult =
            halfAdder a firstResult.sum

        finalCarry =
            orGate firstResult.carry secondResult.carry
    in
        { carry = finalCarry, sum = secondResult.sum }


rippleCarryAdder ( a3, a2, a1, a0 ) ( b3, b2, b1, b0 ) carryIn =
    let
        firstResult =
            fullAdder a0 b0 carryIn

        secondResult =
            fullAdder a1 b1 firstResults.carry

        thirdResult =
            fullAdder a2 b2 secondResults.carry

        finalResults =
            fullAdder a3 b3 thirdResults.carry
    in
        { carry = finalResult.carry
        , sum3 = finalResult.sum
        , sum2 = thirdResults.sum
        , sum1 = secondResult.sum
        , sum0 = firstResult.sum
        }
