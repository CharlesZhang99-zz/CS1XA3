module SvgAnimation exposing (..)

import Html as Html
import Platform.Cmd as Cmd
import Platform.Sub as Sub
import Svg exposing (..)
import Svg.Attributes exposing (..)
import Keyboard as Key
import Mouse exposing (..)

--MODEL
type alias Model = {
        position : { x : Int, y : Int }
                   }

init = ({ position = {x = 0, y = 0}},Cmd.none)


--UPDATE
type Msg = MouseMsg Mouse.Position

update : Msg -> Model -> (Model,Cmd.Cmd Msg)
update (MouseMsg pos) model = ({ position = {x = pos.x, y = pos.y} },Cmd.none)

view : Model -> Html.Html Msg
view model = let
      posX = toString model.position.x
      posY = toString model.position.y
    in svg [width "45%",height "70%"]
       [ellipse [cx posX,cy posY, rx "20" , ry "10", fill "blue"] [] ]

subscriptions : Model -> Sub Msg
subscriptions model =  Mouse.moves MouseMsg

{- Main -}
main : Program Never Model Msg
main = Html.program
       {init = init,
        update = update,
        view   = view,
        subscriptions = subscriptions }
