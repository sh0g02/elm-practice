module Main exposing (Msg(..), main, update, view)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



-- 画面に何を表示するかを記載
-- アプリケーションをinitで初期化
-- viewで、全ての画面を表示
-- ユーザからの入力をupdate関数に渡す


main =
    Browser.sandbox { init = 0, update = update, view = view }



-- MODEL


type alias Model =
    Int



-- アプリケーションに関する情報を全てくまなくデータとして表現できるようにすること


init : Model
init =
    0



-- update関数は以下のように定義されている2つのメッセージを受け取る可能性があります。


type Msg
    = Increment
    | Decrement
    | Reset
    | Increment10



-- msgを引数に受けて、modelを返す


update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            init

        Increment10 ->
            model + 10



-- view関数はmodelを引数として受け取り、Htmlを出力
-- 各ボタンにonClickハンドラーがあることに注目してください。クリックするとメッセージを生成するということです。


view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        , div [] []
        , button [ onClick Reset ] [ text "Reset" ]
        , div [] []
        , button [ onClick Increment10 ] [ text "+10" ]
        ]
