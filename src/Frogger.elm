module Frogger exposing(..)

import Html exposing(..)

type Msg 
    = NoOp
    | Another

type alias Model = Int

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NoOp ->
      ( model, Cmd.none )
    
    Another ->
        ( model, Cmd.none )
    
  
view : Model -> Html Msg
view model =
    div [] [ text "Hello Frogger" ]


main : Program Never Model Msg
main =
  Html.program
    { init = (0, Cmd.none)
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


      