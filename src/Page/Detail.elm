module Page.Detail exposing
    ( Model
    , Msg(..)
    , init
    , subscriptions
    , update
    , view
    )

import Browser exposing (Document)
import Global exposing (Global)
import Html exposing (..)
import Route



-- MODEL


type alias Model =
    { id : String
    }


init : Global -> String -> ( Model, Cmd Msg, Global.Msg )
init global id =
    ( { id = id }, Cmd.none, Global.none )



-- UPDATE


type Msg
    = NoOp


update : Global -> Msg -> Model -> ( Model, Cmd Msg, Global.Msg )
update global msg model =
    ( model, Cmd.none, Global.none )



-- SUBSCRIPTIONS


subscriptions : Global -> Model -> Sub Msg
subscriptions global model =
    Sub.none



-- VIEW


view : Global -> Model -> Document Msg
view global model =
    { title = "Detail - " ++ model.id
    , body =
        [ h1 [] [ text <| "Detail: " ++ model.id ]
        , a [ Route.href Route.Index ] [ text "Home" ]
        ]
    }
