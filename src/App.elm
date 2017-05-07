module App exposing (..)

import Html exposing (Html, text, div, img, video, source, p, h1, h3, section, ul, li)
import Html.Attributes exposing (attribute, src, type_, id, alt)


type alias Model =
    { message : String }

type alias ContactPerson =
    { title : String
    , phonenr :  String
    , email : String
    , name : String
    }
init : ( Model, Cmd Msg )
init =
    ( { message = "This will be the header" }, Cmd.none )


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ div [ id "hero" ]
            [ video videoAttributes
                [ source
                    [ type_ "video/mp4"
                    , src "http://annevo.com/video/annevo_1.mp4"
                    ]
                    []
                , source
                    [ type_ "video/webm"
                    , src "http://annevo.com/video/annevo_1.webm"
                    ]
                    []
                ]
            ]
        , div [] [ text model.message ]
        , contactView
        ]


videoAttributes : List (Html.Attribute msg)
videoAttributes =
    [ attribute "muted" "true"
    , attribute "autoplay" "true"
    , attribute "loop" "true"
    , attribute "preload" "auto"
    , attribute "playsinline" "true"
    ]


contactView : Html Msg
contactView =
    div []
        [ h1 [] [ text "Contact" ]
        , section []
            [ ul []
                [ li []
                    [ img
                        [ src "http://annevo.com/img/contact/jonathan.gif"
                        , attribute "dynsrc" "http://annevo.com/img/contact/jonathan.gif"
                        , attribute "loop" "infinite"
                        , alt "Jonathan Åström"
                        ]
                        []
                    , h3 [] [ text "Jonathan Åström" ]
                    , p [] [text "CEO"]
                    ]
                ]
            ]
        ]

contacts : List (ContactPerson) -> Html Msg
contacts contactPersons =
    ul [] []

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
