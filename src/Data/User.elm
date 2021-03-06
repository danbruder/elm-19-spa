module Data.User exposing (User, userDecoder)

import Json.Decode as JD exposing (Decoder)
import Json.Decode.Pipeline as JDP


type alias UserId =
    Int


type alias User =
    { id : UserId
    , username : String
    , url : String
    }


userDecoder : Decoder User
userDecoder =
    JD.succeed User
        |> JDP.required "id" JD.int
        |> JDP.required "login" JD.string
        |> JDP.required "url" JD.string
