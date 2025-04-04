*0

*music_first
[playbgm  time="1000"  loop="true"  storage="stella_off.ogg"  ]

;変数いじるときはコレ
;[eval exp="sf.TRUE=0"]

*first

[cm]
@bg storage ="JG.png" time= 100
@wait time = 3000

;ムービー
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu_VP8.webm"  ]

;/////////////////////////
;/////////////////////////
;/////////////////////////

*first2
;ここで分岐

;if関数
[if exp="sf.TRUE==1"]
;処理
[jump  storage="title.ks"  target="*2syu"]
[else]
;処理２
[jump  storage="title.ks"  target="*1syu"]
[endif]

[s]

;/////////////////////////
;/////////////////////////

*1syu

@clearstack
@bg storage ="title.png" time=1000
@wait time = 200



[jump storage=title.ks target=*start]
[s]

;/////////////////////////
;/////////////////////////

*2syu

@clearstack
@bg storage ="title2.png" time=1000
@wait time = 200

[jump storage=title.ks target=*start]

[s]
;/////////////////////////
;/////////////////////////
;/////////////////////////

*start 
;コンテンツ
[button x=770 y=380 graphic="title/start.png" target="gamestart"]
[button x=770 y=480 graphic="title/load.png" role="load"]

[button x=600 y=650 graphic="title/cg.png"  target="*cg" ]
[button x=830 y=650 graphic="title/option.png"   role="sleepgame" storage="config.ks"]
[button x=1050 y=650 graphic="title/credit.png"  target="*credit" ]

;テストプレイジャンプボタンON・OFF
;[glink  color="white"  storage="test.ks"  size="17"  target="*first"  text="テストプレイ"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]

[s]
;/////////////////////////
;/////////////////////////
;/////////////////////////////

*gamestart
;BGM消し
[fadeoutbgm time=3000]
;ムービー消し
[free_layermode  ]
;一番最初のシナリオファイルへジャンプする
@jump storage="1_2sho.ks"

;/////////////////////////////

*cg
;ムービー消し
[free_layermode  ]

;バニラとちがう
;[cm  ]
;[clearfix]
;[start_keyconfig]

; second.ks というシナリオファイルの　*start　ラベルへ移動する
[jump storage=cg.ks target=*first]


*credit
;ムービー消し
[free_layermode  ]
;クリア
[cm  ]
[clearfix]
;クレ表示
[bg storage="credit.png" time="100"]
;待機
[l][cm]
;背景戻す
;[bg storage="title.jpg" time="100"]
[layermode_movie name="test" video=a_VP8.webm time=1500 wait=true mode=lighten]
; second.ks というシナリオファイルの　*start　ラベルへ移動する
[jump storage=title.ks target=*first]
