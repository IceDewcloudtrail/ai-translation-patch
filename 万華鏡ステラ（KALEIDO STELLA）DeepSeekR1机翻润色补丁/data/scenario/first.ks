*first

;初期化
;[iscript]
;localStorage.clear();
;[endscript]


;一番最初に呼び出されるファイル

[title name="Kaleido Stella　DeepSeek-R1机翻润色　by@一瓶冰露"]
[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;フォント変更する記述
[deffont size=25 face=コーポレート明朝 bold=false][resetfont]

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;バックログ削除
[eval exp="tf.system.backlog = []"]

;//////////////////////////////////////
;//////////////////////////////////////
;//////////////////////////////////////
;//////////////////////////////////////


*title

;タイトル画面へ移動
@jump storage="title.ks"

[s]


