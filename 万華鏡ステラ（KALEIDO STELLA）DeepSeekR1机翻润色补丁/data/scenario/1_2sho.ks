*first
;CG開放
;[cg storage="1.png"]

[cm  ]
[clearfix]
[start_keyconfig]
;/////////////////////////////////////////////////
;みほドリ式タイトル表示

;タイトル表示
;[bg  time="100"  method="crossfade"  storage="t1.png"  ]
;暗転解除
;[mask_off  time="100"  effect="fadeOut"  ]
;ウエイト
;[wait time="200"]
;暗転
;[mask  time="100"  effect="fadeIn"  color="0x000000"  ]
;/////////////////////////////////////////////////
;/////////////////////////////////////////////////
;おことわり
*okotowari

;メニュー非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]

[bg  time="100"  method="crossfade"  storage="kuro.png"  ]

[mask  time="100"  effect="fadeIn"  color="0x000000"  ]
[free layer="0" name="mtext"]
[bg  time="100"  method="crossfade"  storage="okotowari1.png"  ]
[mask_off  time="100"  effect="fadeOut"  ]

;グロテスク
[layopt layer=0 visible=true]
[mtext text="本作品包含部分暴力内容。" layer="0" x="479" y="311" size="30" in_effect="fadeInUp" time="50" color="white" fadeout="false" name="mtext" out_effect="fadeOutUp"]
[mtext text="未满15岁者请勿游玩。" layer="0" x="504" y="369" size="30" in_effect="fadeInUp" time="50" color="white" fadeout="false" name="mtext" out_effect="fadeOutUp"]

[mask  time="10"  effect="fadeIn"  color="0x000000"  ]
[free layer="0" name="mtext"]
[bg  time="10"  method="crossfade"  storage="okotowari2.png"  ]
[mask_off  time="10"  effect="fadeOut"  ]

;フイクション
[layopt layer=0 visible=true]
[mtext text="本故事纯属虚构。" layer="0" x="530" y="307" size="30" in_effect="fadeInUp" time="50" color="white" fadeout="false" name="mtext" out_effect="fadeOutUp"]
[mtext text="与现实存在的一切人物、团体、事件都没有关联。" layer="0" x="320" y="367" size="30" in_effect="fadeInUp" time="50" color="white" fadeout="false" name="mtext" out_effect="fadeOutUp"]

[wait  time="30"  ]

[mask  time="10"  effect="fadeIn"  color="0x000000"  ]
[free layer="0" name="mtext"]
[bg  time="10"  method="crossfade"  storage="okotowari3.png"  ]
[mask_off  time="10"  effect="fadeOut"  ]

;CHARON PRESENTS
[layopt layer=0 visible=true]
[mtext text="CHARON　PRESENTS" layer="0" x="450" y="330" size="30" in_effect="fadeInUp" time="50" color="white" fadeout="false" name="mtext" out_effect="fadeOutUp"]

[wait  time="30"  ]

[mask  time="10"  effect="fadeIn"  color="0x000000"  ]
[bg  time="10"  method="crossfade"  storage="kuro.png"  ]
[free layer="0" name="mtext"]

;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]

;おことわり終了

;/////////////////////////////////////////////////
;/////////////////////////////////////////////////
;/////////////////////////////////////////////////初期設定ここから


;メッセージウィンドウの設定
[position layer="message0" left=0 top=450 width=1280 height=300 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore frame="window.png" margint="80" marginl="20" marginr="30" marginb="30"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=26 x=38 y=500]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;///////////////////////////////

;ロールボタン設定
[button name="role_button" role="auto" graphic="button/auto.png" x=10 y=690] 
[button name="role_button" role="skip" graphic="button/skip.png" x=80 y=690] 
[button name="role_button" role="backlog" graphic="button/backlog.png" x=150 y=690] 
[button x=220 y=690 graphic="button/config.png" role="sleepgame" storage="config.ks" ]

;/////////////////////////////////////////////////
;/////////////////////////////////////////////////
;/////////////////////////////////////////////////初期設定ここまで

;//////////////////////////////////////

;立ち絵設定
;このゲームで登場するキャラクターを宣言

;はてな
[chara_new  name="hatenaidea" storage="chara/demo/1.png" jname="＊＊＊" ]
[chara_new  name="hatenamira" storage="chara/demo/1.png" jname="＊＊＊" ]
[chara_new  name="hatenariko" storage="chara/demo/1.png" jname="＊＊＊" ]
[chara_new  name="hatenamahori" storage="chara/demo/1.png" jname="＊＊＊" ]
[chara_new  name="haha" storage="chara/demo/1.png" jname="母亲" ]
[chara_new  name="教団員" storage="chara/demo/1.png" jname="信徒" ]

;//////////////////////////////////////
;デモ立ち絵
[chara_new  name="demo" storage="chara/demo/1.png" jname="恶魔少女" ]

;キャラクターの表情登録
[chara_face name="demo" face="2" storage="chara/demo/2.png"]
[chara_face name="demo" face="3" storage="chara/demo/3.png"]

;引き
[chara_face name="demo" face="_1" storage="chara/demo/_1.png"]
[chara_face name="demo" face="_2" storage="chara/demo/_2.png"]
[chara_face name="demo" face="_3" storage="chara/demo/_3.png"]
;//////////////////////////////////////
;エンゼ立ち絵
[chara_new  name="enze" storage="chara/enze/1.png" jname="天使少女" ]

;キャラクターの表情登録
[chara_face name="enze" face="2" storage="chara/enze/2.png"]
[chara_face name="enze" face="3" storage="chara/enze/3.png"]

;引き
[chara_face name="enze" face="_1" storage="chara/enze/_1.png"]
[chara_face name="enze" face="_2" storage="chara/enze/_2.png"]
[chara_face name="enze" face="_3" storage="chara/enze/_3.png"]
;//////////////////////////////////////
;イデア立ち絵
[chara_new  name="idea" storage="chara/idea/1-1.png" jname="伊迪雅" ]

;キャラクターの表情登録
[chara_face name="idea" face="1-2" storage="chara/idea/1-2.png"]
[chara_face name="idea" face="1-3" storage="chara/idea/1-3.png"]
[chara_face name="idea" face="1-4" storage="chara/idea/1-4.png"]
[chara_face name="idea" face="1-5" storage="chara/idea/1-5.png"]

[chara_face name="idea" face="2-1" storage="chara/idea/2-1.png"]
[chara_face name="idea" face="2-2" storage="chara/idea/2-2.png"]
[chara_face name="idea" face="2-3" storage="chara/idea/2-3.png"]
[chara_face name="idea" face="2-4" storage="chara/idea/2-4.png"]

;引き
[chara_face name="idea" face="_1-1" storage="chara/idea/_1-1.png"]
[chara_face name="idea" face="_1-2" storage="chara/idea/_1-2.png"]
[chara_face name="idea" face="_1-3" storage="chara/idea/_1-3.png"]
[chara_face name="idea" face="_1-4" storage="chara/idea/_1-4.png"]
[chara_face name="idea" face="_1-5" storage="chara/idea/_1-5.png"]

[chara_face name="idea" face="_2-1" storage="chara/idea/_2-1.png"]
[chara_face name="idea" face="_2-2" storage="chara/idea/_2-2.png"]
[chara_face name="idea" face="_2-3" storage="chara/idea/_2-3.png"]
[chara_face name="idea" face="_2-4" storage="chara/idea/_2-4.png"]
;//////////////////////////////////////
;かぐやひめ立ち絵
[chara_new  name="kaguya" storage="chara/kaguya/1.png" jname="辉夜姬" ]

;キャラクターの表情登録
[chara_face name="kaguya" face="2" storage="chara/kaguya/2.png"]
[chara_face name="kaguya" face="3" storage="chara/kaguya/3.png"]
[chara_face name="kaguya" face="4" storage="chara/kaguya/4.png"]
[chara_face name="kaguya" face="5" storage="chara/kaguya/5.png"]

;引き
[chara_face name="kaguya" face="_1" storage="chara/kaguya/_1.png"]
[chara_face name="kaguya" face="_2" storage="chara/kaguya/_2.png"]
[chara_face name="kaguya" face="_3" storage="chara/kaguya/_3.png"]
[chara_face name="kaguya" face="_4" storage="chara/kaguya/_4.png"]
[chara_face name="kaguya" face="_5" storage="chara/kaguya/_5.png"]
;//////////////////////////////////////
;マホリ立ち絵
[chara_new  name="mahori" storage="chara/mahori/1-1.png" jname="真法理" ]

;キャラクターの表情登録
[chara_face name="mahori" face="1-2" storage="chara/mahori/1-2.png"]
[chara_face name="mahori" face="1-3" storage="chara/mahori/1-3.png"]
[chara_face name="mahori" face="1-4" storage="chara/mahori/1-4.png"]
[chara_face name="mahori" face="1-5" storage="chara/mahori/1-5.png"]
[chara_face name="mahori" face="1-6" storage="chara/mahori/1-6.png"]
[chara_face name="mahori" face="1-7" storage="chara/mahori/1-7.png"]
[chara_face name="mahori" face="1-8" storage="chara/mahori/1-8.png"]
[chara_face name="mahori" face="1-9" storage="chara/mahori/1-9.png"]
[chara_face name="mahori" face="1-10" storage="chara/mahori/1-10.png"]
[chara_face name="mahori" face="1-11" storage="chara/mahori/1-11.png"]
[chara_face name="mahori" face="1-12" storage="chara/mahori/1-12.png"]
[chara_face name="mahori" face="1-13" storage="chara/mahori/1-13.png"]
[chara_face name="mahori" face="1-14" storage="chara/mahori/1-14.png"]


[chara_face name="mahori" face="2-1" storage="chara/mahori/2-1.png"]
[chara_face name="mahori" face="2-2" storage="chara/mahori/2-2.png"]
[chara_face name="mahori" face="2-3" storage="chara/mahori/2-3.png"]
[chara_face name="mahori" face="2-4" storage="chara/mahori/2-4.png"]


[chara_face name="mahori" face="2-5" storage="chara/mahori/2-5.png"]
[chara_face name="mahori" face="2-6" storage="chara/mahori/2-6.png"]
[chara_face name="mahori" face="2-7" storage="chara/mahori/2-7.png"]
[chara_face name="mahori" face="2-8" storage="chara/mahori/2-8.png"]
[chara_face name="mahori" face="2-9" storage="chara/mahori/2-9.png"]
[chara_face name="mahori" face="2-10" storage="chara/mahori/2-10.png"]
[chara_face name="mahori" face="2-11" storage="chara/mahori/2-11.png"]

;引き
[chara_face name="mahori" face="_1-1" storage="chara/mahori/_1-1.png"]
[chara_face name="mahori" face="_1-2" storage="chara/mahori/_1-2.png"]
[chara_face name="mahori" face="_1-3" storage="chara/mahori/_1-3.png"]
[chara_face name="mahori" face="_1-4" storage="chara/mahori/_1-4.png"]
[chara_face name="mahori" face="_1-5" storage="chara/mahori/_1-5.png"]
[chara_face name="mahori" face="_1-6" storage="chara/mahori/_1-6.png"]
[chara_face name="mahori" face="_1-7" storage="chara/mahori/_1-7.png"]
[chara_face name="mahori" face="_1-8" storage="chara/mahori/_1-8.png"]
[chara_face name="mahori" face="_1-9" storage="chara/mahori/_1-9.png"]
[chara_face name="mahori" face="_1-10" storage="chara/mahori/_1-10.png"]
[chara_face name="mahori" face="_1-11" storage="chara/mahori/_1-11.png"]
[chara_face name="mahori" face="_1-12" storage="chara/mahori/_1-12.png"]
[chara_face name="mahori" face="_1-13" storage="chara/mahori/_1-13.png"]
[chara_face name="mahori" face="_1-14" storage="chara/mahori/_1-14.png"]

[chara_face name="mahori" face="_2-1" storage="chara/mahori/_2-1.png"]
[chara_face name="mahori" face="_2-2" storage="chara/mahori/_2-2.png"]
[chara_face name="mahori" face="_2-3" storage="chara/mahori/_2-3.png"]
[chara_face name="mahori" face="_2-4" storage="chara/mahori/_2-4.png"]

[chara_face name="mahori" face="_2-5" storage="chara/mahori/_2-5.png"]
[chara_face name="mahori" face="_2-6" storage="chara/mahori/_2-6.png"]
[chara_face name="mahori" face="_2-7" storage="chara/mahori/_2-7.png"]
[chara_face name="mahori" face="_2-8" storage="chara/mahori/_2-8.png"]
[chara_face name="mahori" face="_2-9" storage="chara/mahori/_2-9.png"]
[chara_face name="mahori" face="_2-10" storage="chara/mahori/_2-10.png"]
[chara_face name="mahori" face="_2-11" storage="chara/mahori/_2-11.png"]


;//////////////////////////////////////
;メメ立ち絵
[chara_new  name="meme" storage="chara/meme/1-1.png" jname="芽萌" ]

;キャラクターの表情登録
[chara_face name="meme" face="1-2" storage="chara/meme/1-2.png"]
[chara_face name="meme" face="1-3" storage="chara/meme/1-3.png"]
[chara_face name="meme" face="1-4" storage="chara/meme/1-4.png"]
[chara_face name="meme" face="1-5" storage="chara/meme/1-5.png"]
[chara_face name="meme" face="1-6" storage="chara/meme/1-6.png"]
[chara_face name="meme" face="1-7" storage="chara/meme/1-7.png"]
[chara_face name="meme" face="1-8" storage="chara/meme/1-8.png"]
[chara_face name="meme" face="1-9" storage="chara/meme/1-9.png"]

[chara_face name="meme" face="2-1" storage="chara/meme/2-1.png"]
[chara_face name="meme" face="2-2" storage="chara/meme/2-2.png"]
[chara_face name="meme" face="2-3" storage="chara/meme/2-3.png"]
[chara_face name="meme" face="2-4" storage="chara/meme/2-4.png"]
[chara_face name="meme" face="2-5" storage="chara/meme/2-5.png"]
[chara_face name="meme" face="2-6" storage="chara/meme/2-6.png"]
[chara_face name="meme" face="2-7" storage="chara/meme/2-7.png"]
[chara_face name="meme" face="2-8" storage="chara/meme/2-8.png"]

;引き
[chara_face name="meme" face="_1-1" storage="chara/meme/_1-1.png"]
[chara_face name="meme" face="_1-2" storage="chara/meme/_1-2.png"]
[chara_face name="meme" face="_1-3" storage="chara/meme/_1-3.png"]
[chara_face name="meme" face="_1-4" storage="chara/meme/_1-4.png"]
[chara_face name="meme" face="_1-5" storage="chara/meme/_1-5.png"]
[chara_face name="meme" face="_1-6" storage="chara/meme/_1-6.png"]
[chara_face name="meme" face="_1-7" storage="chara/meme/_1-7.png"]
[chara_face name="meme" face="_1-8" storage="chara/meme/_1-8.png"]
[chara_face name="meme" face="_1-9" storage="chara/meme/_1-9.png"]

[chara_face name="meme" face="_2-1" storage="chara/meme/_2-1.png"]
[chara_face name="meme" face="_2-2" storage="chara/meme/_2-2.png"]
[chara_face name="meme" face="_2-3" storage="chara/meme/_2-3.png"]
[chara_face name="meme" face="_2-4" storage="chara/meme/_2-4.png"]
[chara_face name="meme" face="_2-5" storage="chara/meme/_2-5.png"]
[chara_face name="meme" face="_2-6" storage="chara/meme/_2-6.png"]
[chara_face name="meme" face="_2-7" storage="chara/meme/_2-7.png"]
[chara_face name="meme" face="_2-8" storage="chara/meme/_2-8.png"]
;//////////////////////////////////////
;ミラ立ち絵
[chara_new  name="mira" storage="chara/mira/1-1.png" jname="米菈" ]

;キャラクターの表情登録
[chara_face name="mira" face="1-2" storage="chara/mira/1-2.png"]
[chara_face name="mira" face="1-3" storage="chara/mira/1-3.png"]
[chara_face name="mira" face="1-4" storage="chara/mira/1-4.png"]
[chara_face name="mira" face="1-5" storage="chara/mira/1-5.png"]
[chara_face name="mira" face="1-6" storage="chara/mira/1-6.png"]
[chara_face name="mira" face="1-7" storage="chara/mira/1-7.png"]
[chara_face name="mira" face="1-8" storage="chara/mira/1-8.png"]
[chara_face name="mira" face="1-9" storage="chara/mira/1-9.png"]
[chara_face name="mira" face="1-10" storage="chara/mira/1-10.png"]

[chara_face name="mira" face="2-1" storage="chara/mira/2-1.png"]
[chara_face name="mira" face="2-2" storage="chara/mira/2-2.png"]
[chara_face name="mira" face="2-3" storage="chara/mira/2-3.png"]
[chara_face name="mira" face="2-4" storage="chara/mira/2-4.png"]
[chara_face name="mira" face="2-5" storage="chara/mira/2-5.png"]
[chara_face name="mira" face="2-6" storage="chara/mira/2-6.png"]
[chara_face name="mira" face="2-7" storage="chara/mira/2-7.png"]

;引き
[chara_face name="mira" face="_1-1" storage="chara/mira/_1-1.png"]
[chara_face name="mira" face="_1-2" storage="chara/mira/_1-2.png"]
[chara_face name="mira" face="_1-3" storage="chara/mira/_1-3.png"]
[chara_face name="mira" face="_1-4" storage="chara/mira/_1-4.png"]
[chara_face name="mira" face="_1-5" storage="chara/mira/_1-5.png"]
[chara_face name="mira" face="_1-6" storage="chara/mira/_1-6.png"]
[chara_face name="mira" face="_1-7" storage="chara/mira/_1-7.png"]
[chara_face name="mira" face="_1-8" storage="chara/mira/_1-8.png"]
[chara_face name="mira" face="_1-9" storage="chara/mira/_1-9.png"]
[chara_face name="mira" face="_1-10" storage="chara/mira/_1-10.png"]

[chara_face name="mira" face="_2-1" storage="chara/mira/_2-1.png"]
[chara_face name="mira" face="_2-2" storage="chara/mira/_2-2.png"]
[chara_face name="mira" face="_2-3" storage="chara/mira/_2-3.png"]
[chara_face name="mira" face="_2-4" storage="chara/mira/_2-4.png"]
[chara_face name="mira" face="_2-5" storage="chara/mira/_2-5.png"]
[chara_face name="mira" face="_2-6" storage="chara/mira/_2-6.png"]
[chara_face name="mira" face="_2-7" storage="chara/mira/_2-7.png"]
;//////////////////////////////////////
;リコ立ち絵
[chara_new  name="riko" storage="chara/riko/1-1.png" jname="璃光" ]

;キャラクターの表情登録
[chara_face name="riko" face="1-2" storage="chara/riko/1-2.png"]
[chara_face name="riko" face="1-3" storage="chara/riko/1-3.png"]
[chara_face name="riko" face="1-4" storage="chara/riko/1-4.png"]
[chara_face name="riko" face="1-5" storage="chara/riko/1-5.png"]
[chara_face name="riko" face="1-6" storage="chara/riko/1-6.png"]
[chara_face name="riko" face="1-7" storage="chara/riko/1-7.png"]

[chara_face name="riko" face="2-1" storage="chara/riko/2-1.png"]
[chara_face name="riko" face="2-2" storage="chara/riko/2-2.png"]
[chara_face name="riko" face="2-3" storage="chara/riko/2-3.png"]
[chara_face name="riko" face="2-4" storage="chara/riko/2-4.png"]
[chara_face name="riko" face="2-5" storage="chara/riko/2-5.png"]
[chara_face name="riko" face="2-6" storage="chara/riko/2-6.png"]
[chara_face name="riko" face="2-7" storage="chara/riko/2-7.png"]
[chara_face name="riko" face="2-8" storage="chara/riko/2-8.png"]
[chara_face name="riko" face="2-9" storage="chara/riko/2-9.png"]

;引き
[chara_face name="riko" face="_1-1" storage="chara/riko/_1-1.png"]
[chara_face name="riko" face="_1-2" storage="chara/riko/_1-2.png"]
[chara_face name="riko" face="_1-3" storage="chara/riko/_1-3.png"]
[chara_face name="riko" face="_1-4" storage="chara/riko/_1-4.png"]
[chara_face name="riko" face="_1-5" storage="chara/riko/_1-5.png"]
[chara_face name="riko" face="_1-6" storage="chara/riko/_1-6.png"]
[chara_face name="riko" face="_1-7" storage="chara/riko/_1-7.png"]

[chara_face name="riko" face="_2-1" storage="chara/riko/_2-1.png"]
[chara_face name="riko" face="_2-2" storage="chara/riko/_2-2.png"]
[chara_face name="riko" face="_2-3" storage="chara/riko/_2-3.png"]
[chara_face name="riko" face="_2-4" storage="chara/riko/_2-4.png"]
[chara_face name="riko" face="_2-5" storage="chara/riko/_2-5.png"]
[chara_face name="riko" face="_2-6" storage="chara/riko/_2-6.png"]
[chara_face name="riko" face="_2-7" storage="chara/riko/_2-7.png"]
[chara_face name="riko" face="_2-8" storage="chara/riko/_2-8.png"]
[chara_face name="riko" face="_2-9" storage="chara/riko/_2-9.png"]
;//////////////////////////////////////

;//////////////////////////////////////
;疾風リコ立ち絵
[chara_new  name="sriko" storage="chara/sriko/1.png" jname="疾风RICO" ]

;キャラクターの表情登録
[chara_face name="sriko" face="2" storage="chara/sriko/2.png"]
[chara_face name="sriko" face="3" storage="chara/sriko/3.png"]
[chara_face name="sriko" face="4" storage="chara/sriko/4.png"]
[chara_face name="sriko" face="5" storage="chara/sriko/5.png"]
[chara_face name="sriko" face="6" storage="chara/sriko/6.png"]
[chara_face name="sriko" face="7" storage="chara/sriko/7.png"]
[chara_face name="sriko" face="8" storage="chara/sriko/8.png"]
[chara_face name="sriko" face="9" storage="chara/sriko/9.png"]

;引き
[chara_face name="sriko" face="_1" storage="chara/sriko/_1.png"]
[chara_face name="sriko" face="_2" storage="chara/sriko/_2.png"]
[chara_face name="sriko" face="_3" storage="chara/sriko/_3.png"]
[chara_face name="sriko" face="_4" storage="chara/sriko/_4.png"]
[chara_face name="sriko" face="_5" storage="chara/sriko/_5.png"]
[chara_face name="sriko" face="_6" storage="chara/sriko/_6.png"]
[chara_face name="sriko" face="_7" storage="chara/sriko/_7.png"]
[chara_face name="sriko" face="_8" storage="chara/sriko/_8.png"]
[chara_face name="sriko" face="_9" storage="chara/sriko/_9.png"]
;//////////////////////////////////////
;ツキミ立ち絵
[chara_new  name="tukimi" storage="chara/tukimi/1-1.png" jname="月观" ]

;キャラクターの表情登録
[chara_face name="tukimi" face="1-2" storage="chara/tukimi/1-2.png"]
[chara_face name="tukimi" face="1-3" storage="chara/tukimi/1-3.png"]
[chara_face name="tukimi" face="1-4" storage="chara/tukimi/1-4.png"]
[chara_face name="tukimi" face="1-5" storage="chara/tukimi/1-5.png"]
[chara_face name="tukimi" face="1-6" storage="chara/tukimi/1-6.png"]
[chara_face name="tukimi" face="1-7" storage="chara/tukimi/1-7.png"]
[chara_face name="tukimi" face="1-8" storage="chara/tukimi/1-8.png"]
[chara_face name="tukimi" face="1-9" storage="chara/tukimi/1-9.png"]

[chara_face name="tukimi" face="2-1" storage="chara/tukimi/2-1.png"]
[chara_face name="tukimi" face="2-2" storage="chara/tukimi/2-2.png"]
[chara_face name="tukimi" face="2-3" storage="chara/tukimi/2-3.png"]

;引き
[chara_face name="tukimi" face="_1-1" storage="chara/tukimi/_1-1.png"]
[chara_face name="tukimi" face="_1-2" storage="chara/tukimi/_1-2.png"]
[chara_face name="tukimi" face="_1-3" storage="chara/tukimi/_1-3.png"]
[chara_face name="tukimi" face="_1-4" storage="chara/tukimi/_1-4.png"]
[chara_face name="tukimi" face="_1-5" storage="chara/tukimi/_1-5.png"]
[chara_face name="tukimi" face="_1-6" storage="chara/tukimi/_1-6.png"]
[chara_face name="tukimi" face="_1-7" storage="chara/tukimi/_1-7.png"]
[chara_face name="tukimi" face="_1-8" storage="chara/tukimi/_1-8.png"]
[chara_face name="tukimi" face="_1-9" storage="chara/tukimi/_1-9.png"]

[chara_face name="tukimi" face="_2-1" storage="chara/tukimi/_2-1.png"]
[chara_face name="tukimi" face="_2-2" storage="chara/tukimi/_2-2.png"]
[chara_face name="tukimi" face="_2-3" storage="chara/tukimi/_2-3.png"]

;//////////////////////////////////////
;///////////////////////////////
;//////////////////////////////////////
;//////////////////////////////////////
;//////////////////////////////////////

;１章
;万華鏡ステラ/EP1.EP2
;■EP1　出会い編「宇宙人がやってきた！」
;■カレイドステラ　清書

;////////////////////////////////////////////ボイス設定
; [voconfig]
; #ねこ、#カラス、に反応して音声の連番ファイルを再生する〈設定〉を行います。
; この時点では〈設定〉だけです。

[voconfig sebuf="0" name="hatenaidea" vostorage="idea/{number}.ogg"  number="1"]
[voconfig sebuf="0" name="hatenamira" vostorage="mira/{number}.ogg"  number="1"]

;ideaファイルの1.oggから再生する。

[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="27"]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="5"]
[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="1"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで


;////////////////////////////////////////////アイキャッチ
;ウインドウ消去
@layopt layer=message0 visible=false
;メニュー非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="ct6.png"  time="1000"  ]

[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu2_VP8.webm"  ]

;/////////////////////////////////////////////////

;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;ウエイト
[wait time="3000"]
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]

[free_layermode  ]

;/////////////////////////////////////////////////
;アニメ
[layermode_movie  mode="screen" speed="1"  volume="100"  loop="true"  time="10"  wait="true"  video="hosi_VP8.webm"  ]

;背景表示
[bg  storage="bg2.png"  time="1000"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ

;ウインドウ表示
@layopt layer=message0 visible=true
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]

#
本补丁为机翻补丁，完成于2025.4.4，仅在GitHub留档。
当您拿到补丁时，本作的人工汉化已经有佬在做了，或者已经做好了。[p]
在b站搜万华镜星星即可检索到本作汉化进度。
如果您不着急玩本作，请等待人工汉化补丁。[p]

;1.宇宙のプロローグ星の歌。宇宙を旅するUFO。不気味か神秘のＢＧＭ

;BGM
[playbgm  time="1000"  loop="true"  storage="redstar.ogg"  ]
#hatenaidea
「这是属于我们的未来的故事。[p]
#hatenaidea
「在不久的将来，可能会发生的所有事情。[p]
#hatenaidea
「银河虽远，却近在咫尺…只要伸手就能触及那遥远的世界。[p]
#hatenaidea
「历经漫长岁月，我们此刻正漫步于无尽星海之中。[p]
#hatenaidea
「你吸气，呼气。[p]
#hatenaidea
「即使在这一瞬间，银河也有千万光年的时间流逝。[p]
#hatenaidea
「每个人看似渺小的痛苦，每个生命微不足道的消亡。[p]
#hatenaidea
「那微小的幸福、小小的悲伤甚至呐喊…都不过是浩瀚银河的一粒尘埃。[p]
#hatenaidea
「你眼中所见的星光，也早已跨越了数亿年的岁月。[p]
#hatenaidea
「因此才显得如此美丽。[p]
#hatenaidea
「执着于在世间镌刻存在过的证明，今日依旧吞吐着生命的气息。[p]
#hatenaidea
「心中怀揣着建构在某物之上的正义。[p]
#hatenaidea
「心向未知的未来，早已明了的未来。[p]
#hatenaidea
「于是他们终将缓缓步入死亡。[p]
#hatenaidea
「无论过程如何殊途，终至相同归处。[p]
#hatenaidea
「挣扎、痛苦、在苦闷的尽头与命运搏斗。[p]
#hatenaidea
「即便知晓终会湮灭于银河黑暗之中…明知所有情感终将归于虚无。[p]
#hatenaidea
「就算…不过星辰中小小的片段。[p]
#hatenaidea
「可是若真如此的话…[p]
#hatenaidea
「那么他们的精神，究竟栖息于何处呢…？[p]
#
[stopse  time="1000"  buf="0"  ]

;////////////////////////////////////////////アイキャッチ
;ウインドウ消去
@layopt layer=message0 visible=false
;メニュー非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;ムービー消し
[free_layermode  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="ic1.png"  time="1000"  ]

;/////////////////////////////////////////////////
[layermode_movie  mode="screen"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="waku_VP8.webm"  ]
;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;ウエイト
[wait time="3000"]
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[free_layermode  ]

;/////////////////////////////////////////////////
;背景変更
[bg  storage="bg1.png"  time="1000"  ]

;BGM流し
[playbgm  time="1000"  loop="true"  storage="wakudance.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ

;////////////////////////////////////////////
;2.始まりのシーン。家の中。メメがTVを見て、現場に行きたいという。
;テレビのニュースみてる妹
;UFOが主人公の住む街に墜落。
;「宇宙人が侵入した可能性」
;どのテレビ局も、この話題で持ち切りだ。

#
夏日，屋外艳阳高照，热得连空气都在摇曳。[p]
在冷气十足的凉爽房间里，我懒散地窝在沙发摆弄掌机。[p]
想来这种无所事事的状态最让人安心吧。[p]
这种难熬的天气，还是宅在家里虚度时光最舒服。[p]
什么都不考虑，什么也不做，只是默默地呼吸、进食。…活脱脱漫画里废柴的日常。[p]
暑假还剩最后一周，炙热的夏日就要结束，天气即将转凉。[p]
酷暑的最后一搏，虽说想早点熬过这段时间，但又奇怪地希望它不要结束。[p]
差不多该开始写作业了，要不然会被骂吧…真希望能找到不用写作业的法子。[p]
不用写作业根本不可能啊，不过要是有谁能替我搞定就好了。[p]
现实点考虑应该找作业代写，但学生的那点零花钱付得起吗？[p]
逃避现实的话，要是明天学校着火就能暂时不用上学，地球毁灭的话这些烦恼也都会消失～之类的。[p]
发现自己总在不知不觉祈求些不可能发生的妄想。[p]
;変更
[chara_mod  name="meme" face="_1-8"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「哥哥哥哥，快看快看！[p]
#
[stopse  time="1000"  buf="0"  ]

妹妹「芽萌」朝我喊着却没转身，似乎正兴致勃勃盯着发出嘈杂声响的电视画面。[p]
唉…小孩子真是无忧无虑啊，什么都不用想。[p]
我却要为下周开始的校园生活怎么熬而烦恼…满脑子这些焦虑。[p]
就算用游戏来转移注意力，那些念头还是会突然袭来，逃也逃不掉。[p]
真想能回到像芽萌那么小的时候。那时候还能傻傻想着未来梦想，尚不知现实为何物…[p]
;変更
[chara_mod  name="meme" face="_1-5"]
#meme
「喂喂，超厉害耶。是UFO啦！」[p]
#
[stopse  time="1000"  buf="0"  ]

UFO。[p]
最近频繁听到这个词。现在街头巷尾都在谈论这个话题。无论大人小孩都嚷嚷着UFO、UFO、UFO⋯⋯真是无聊透顶。[p]
说到UFO⋯⋯就是外星人乘坐的交通工具吧。那种银色圆盘状、带着圆形舷窗的东西。标准的造型。[p]
不知怎的，听说有UFO坠落在我居住的这座城镇。[p]
虽然没亲眼见到，也不知道真假。但媒体闹得这么沸沸扬扬，该不会是真的吧？[p]
各大电视台的新闻节目全都被关于『外星人』的独家报道占据了。[p]
⋯⋯那是几天前的事。[p]
在那个滴雨未落的深夜，整个小城被耀眼的光芒和轰鸣声包围。[p]
当时我还以为是雷电在轰响就没在意⋯⋯没想到早晨打开电视竟看到如此惊人的事态。[p]
就连向来怠惰的本地报社记者们也早早发出了号外。[p]
附近的商店开始搞UFO坠落纪念促销，餐饮店推出带有『外星人』『UFO』字样的限定菜单。[p]
到最后连镇长都得意忘形，听说要打着『UFO降临之町』的旗号搞振兴项目。[p]
昨天新闻说警方已完成对坠落UFO内部的调查。[p]
据说UFO已经损毁，内部没有生命反应，坊间开始传言外星人或许早已潜入地球。[p]
;変更
[chara_mod  name="meme" face="_2-4"]
#meme
「芽萌～真想见见外星人小姐呀～外星人小姐到底长什么样呢？」[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌对未曾谋面的未知生命体两眼放光。[p]
喂喂⋯⋯外星人可是那种长者苍白细长瘆人的身体，眼睛像用巨大勺子挖出来的玩意。就像奥特〇里的那些怪物。不，或许更像假面〇士里的？[p]
一点都不可爱啊⋯⋯真搞不懂大家为什么还能这么兴致勃勃。[p]
而且搞不好它们还会用那种恐怖身躯谋划着屠杀我们。要是搞地球侵略的话就更糟了。[p]
绝对不该欢迎这种东西吧⋯⋯当街被掳走都不奇怪。要是被洗脑了，还不知道会发生什么呢。[p]
光是想想就毛骨悚然。要我说就该尽早把这群东西赶出地球。[p]
再说了，动画里常见的美少女外星人肯定是杜撰的。大家幻想过头了吧。[p]
;変更
[chara_mod  name="meme" face="2-6"]
#meme
「哎～哎～哥哥有在听吗～？[p]
#
[stopse  time="1000"  buf="0"  ]
我呆望着游戏画面随便应和。要是搭理这种状态的芽萌，绝对会没完没了。[p]
凭借多年练就的装傻技巧，漂亮地避开麻烦事⋯⋯好，没露馅没露馅。[p]
;変更
[chara_mod  name="meme" face="1-7"]
#meme
「真是的！哥哥肯定没在听我说话吧～！[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯露馅了。怎么会！我苦练多年的装傻技巧明明⋯⋯连敷衍的回应都做了，附和也没落下啊。[p]
难道芽萌随着成长开始能看穿我的行为了？虽是妹妹却不容小觑啊⋯⋯[p]
;変更
[chara_mod  name="meme" face="2-5"]
#meme
「我说！芽萌想去看看UFO嘛！！哥哥也一起去嘛！[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
⋯⋯哈啊。[p]
我就知道。毕竟是她嘛，多少有这种预感。[p]
不想去。倒不如说怎么可能去啊。暑假都要结束了求放过⋯⋯作业还没动呢，就让我安安静静打会游戏吧。拜托了。[p]
况且，UFO的坠落现场……现在应该处于严格警戒状态下，一般人是禁止进入的吧。[p]
就算去了，也看不到UFO机体本身不是吗？怎么想都是白跑一趟的。[p]
;変更
[chara_mod  name="meme" face="1-8"]
#meme
「呐？哥哥也一起去嘛！？对吧对吧！？肯定会去的吧！？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*1"  text="反正又看不到，去了也是白去"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*1"  text="想在家里玩游戏"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*1
;//////////////////////////////
况且外面这么热……要从开着空调的房间出去，除非是疯了。[p]
比起去看外星生物的奇怪交通工具，待在舒服的房间里打游戏绝对开心多了。[p]
到底是怎样的动力驱使她的呢。小孩子的好奇心真是可怕。[p]
;変更
[chara_mod  name="meme" face="2-7"]
#meme
「哼，人家知道啦！那芽萌就一个人去好了！[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌气呼呼地扭过头，把手搭在粉色包包上。[p]
她是认真的。真的要独自踏上这段旅途的样子。[p]
唉。果然会变成这样…麻烦死了。[p]
⋯⋯[p]
真是的。这么小的妹妹，怎么可能让她单独出门。[p]
不能让我重要的妹妹身处险境。[p]
父母不在期间，身为哥哥的我有看护她的义务。[p]
我只好不情愿地陪着任性耍脾气的芽萌前往坠落现场。[p]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="bg7.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="mellow_night.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;3.現場へ向かう。自己紹介。楽しそうなメメ。
不出所料，外面闷热得像蒸桑拿。汗珠不受控制地从毛孔里涌出，身体里的水分正在飞速流失。[p]
糟糕，真是糟糕…在外头待久可能真的会中暑…必须留神才行。[p]
;変更
[chara_mod  name="meme" face="_1-4"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「喔~饮料水真好喝！[p]
#
[stopse  time="1000"  buf="0"  ]
把自动贩卖机买的饮用水递给芽萌后，她朝气蓬勃地一口气喝完。[p]
瓶装水以肉眼可见的速度下降。[p]
没等我开口，瓶子就空了。[p]
……唉呀，本来还想讨一口喝的。算了。[p]
今年好像是四年一遇的酷暑吧？奥运年么，肯定错不了。[p]
听说地球每隔四年就要经历一次极度炎夏与寒冬，不知道是哪个古代的传说。[p]
所以说才讨厌这个季节出门…会被晒化的吧喂。[p]
啊，对哦。要是在这中暑倒下而死的话，作业也可以不用写…还能永远不用上学呢。[p]
⋯⋯[p]
…靠我在想什么啊…该不会被热傻了吧。[p]
带着这种沮丧的念头，我追赶着活力十足到处乱跑的芽萌。[p]
;変更
[chara_mod  name="meme" face="_2-2"]
#meme
「哥——哥——快点快点！外星人小姐要逃跑咯——！[p]
#
[stopse  time="1000"  buf="0"  ]
我的好妹妹啊。别担心，根本不存在什么外星人…[p]
肯定是哪个好事者恶作剧罢了。虽然不知道具体是谁搞的。[p]
虽然不像芽萌那么热衷，但要说对UFO的好奇多少还是有的。不过这次的事件不可能有真货吧。[p]
……话说回来，小孩子到底哪来这么多精力？蹦蹦跳跳转瞬间就能窜出老远，拼命追赶都跟不上。[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
而我却这么萎靡…啊莫非…这是我老了的征兆？[p]
或者说，我本身就是极度缺乏活力的人…恐怕还是后者吧。[p]
唉，反正…我打出生就是败犬组。从基因上就被设定成了废材，现在再怎么努力也没救了。[p]
;自己紹介
我的名字是星海真守。高中生。[p]
比我小两岁的妹妹，芽萌。还是小学生。[p]
母亲目前在都市单身赴任。父亲是船员暂时不会回家。[p]
暑假期间，我和芽萌两个人留守看家。[p]
做饭洗衣都交给芽萌，我每天过着游手好闲的颓废生活。[p]
父母已经给了我们生活费，再奢侈些也没关系吧。[p]
没有父母在身边的生活太惬意了。就算邋邋遢遢，熬夜到很晚也不会被骂。[p]
也没人会用白眼看我。[p]
⋯⋯[p]
这个样子要是能永远持续下去就好了...[p]
只剩下一个礼拜就要结束了啊。[p]
真不想回到那个日常。不想去学校...[p]

;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="bg6.png"  time="1000"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;4.現場にて。ミラと再会。
走到UFO坠落现场附近时，挤得水泄不通的人群堵住了道路。[p]
芽萌蹦蹦跳跳的，拼命想看清里面的情况。[p]
;変更
[chara_mod  name="meme" face="_1-7"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「真是的，完全看不到嘛！[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌鼓着脸颊气呼呼的。[p]
看吧，我早说会这样的。早就料到会是这种状况了。[p]
待会买兔子商标的胡萝卜冰激凌哄哄她吧。[p]
不过这个镇上原来有这么多人吗？...都快怀疑自己是不是记错了。[p]
...啊，对了。应该不全都是本地人。这些人是从全国各地特意赶来这个乡下小镇看热闹的吧。[p]
吵吵嚷嚷的围观群众...看来他们也进不去很焦急呢。大家都迫切想亲眼看看UFO。[p]
电视台的摄制组也不少。...不过要是UFO是真的，确实是条大新闻啦。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*2"  text="走吧，芽萌"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*2"  text="这不是我们可以进去的地方哦"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*2
;//////////////////////////////
;変更
[chara_mod  name="meme" face="_2-6"]
#meme
「怎么这样...芽萌好想看看外星人小姐啊...太遗憾啦。[p]
#
[stopse  time="1000"  buf="0"  ]
也没办法啊。[p]
毕竟虽然坠落在这种萧条的小镇，但毕竟是UFO坠落这种世纪大新闻...国家肯定要慎重对待。[p]
警卫们时刻警惕着可疑人物。要是被盯上会很麻烦。还是别惹事比较好。[p]
...回去吧。果然白跑一趟。[p]
我牵着垂头丧气的芽萌挤出人群。[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
#hatenamira
「...啊。[p]
#
[stopse  time="1000"  buf="0"  ]
经过时，有人发出声音。[p]
;変更
[chara_mod  name="mira" face="_1-8"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
回头看见一个发色鲜艳的女生。[p]
#hatenamira
「真守...你是真守对吧？[p]
#
[stopse  time="1000"  buf="0"  ]
这是现在城里流行的穿搭吗？斜搭在肩上的针织衫很显眼。太暴露了。[p]
像是朋克风又带点性感...真搞不懂什么风格。现在的年轻人穿得都太不像话了。[p]
;変更
[chara_mod  name="mira" face="_1-4"]
#hatenamira
「哟，好久不见！最近还好吗？看，是我啊！[p]
#
[stopse  time="1000"  buf="0"  ]
她熟络地拍着我的肩膀，像是男生间确认友情般的动作。[p]
看来她认识我。[p]
但是...是谁啊？我有这种朋友吗？[p]
;変更
[chara_mod  name="meme" face="_1-8"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「啊！！是姐姐！[p]
#
[stopse  time="1000"  buf="0"  ]
...芽萌好像反应过来了。[p]
等等，不对劲啊。我不记得有这种男孩子气又张扬的女性朋友...真的不认识。[p]
;変更
[chara_mod  name="mira" face="_1-6"]
#hatenamira
「哈？你不会忘了吧？[p]
#
[stopse  time="1000"  buf="0"  ]
她不满地哼着鼻子看我，感觉像被不良少女纠缠...[p]
;変更
[chara_mod  name="mira" face="_2-7"]
#mira
「我是米菈啊。鲸田米菈。搞什么，居然忘了？太差劲了吧。以前经常一起玩的啊。[p]
;変更
[chara_mod  name="meme" face="_2-4"]
#meme
「米菈姐姐！芽萌一直好好记着哦！诶嘿！[p]
#
[stopse  time="1000"  buf="0"  ]
･･･米菈。[p]
以这句话为线索，试图探寻记忆。[p]
;星空フラッシュバック
⋯⋯[p]
啊。说起来，小学的时候可能有叫这个名字的朋友…？[p]
都是多少年前的事了，就算不记得也没办法吧。[p]
气氛…是这样的吗？感觉好像应该更文静些才对。[p]
是所谓的改变形象吧。又或是，多年未见时光改变了她…[p]
;変更
[chara_mod  name="mira" face="_1-9"]
#mira
「可算想起来了。真是的，竟然忘记挚友的名字！[p]
#
[stopse  time="1000"  buf="0"  ]
不不，我什么时候和她成为挚友了？完全不记得有过这种关系…[p]
小时候的我可是孤僻到交不到朋友的那种人哦。唯一肯陪伴玩耍的只有可爱的妹妹。[p]
如果是关系亲密到挚友的程度，通常看到脸应该就能立即想起来的。[p]
;変更
[chara_mod  name="meme" face="_1-5"]
#meme
「太好了呀！又能大家一起玩啦！[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌像小兔子般蹦蹦跳跳地表达喜悦。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*kar"  text="芽萌，是不是太高兴了？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*kar"  text="芽萌，别因为高兴就太闹腾了"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*kar
;//////////////////////////////
;変更
[chara_mod  name="meme" face="_1-2"]
#meme
「诶嘿嘿～才没有那回事呢～！[p]
#
[stopse  time="1000"  buf="0"  ]
装得老成，其实还是小孩子。真是的，所以说芽萌啊…不好好看着可不行。[p]
;変更
[chara_mod  name="mira" face="_1-8"]
#mira
「真守啊，你小子…[p]
;変更
[chara_mod  name="mira" face="_2-6"]
#mira
「不，没什么。[p]
#
[stopse  time="1000"  buf="0"  ]
突然察觉保安正朝我们投来锐利的视线。[p]
不妙。是不是动静闹得太大了…[p]
不会被怀疑然后被警察带走吧？突然不安起来。[p]
;変更
[chara_mod  name="mira" face="_2-4"]
#mira
「嘛，在这儿站着说话也不太好…稍微走走吧。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈立刻解围，我便接受了这个提议。[p]
也是，说说话的话，或许能回想起关于米菈的事。[p]
我们快步离开了现场。[p]

;////////////////////////////////////////////アイキャッチ
;ウインドウ消去
@layopt layer=message0 visible=false
;メニュー非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="ic.png"  time="1000"  ]

;/////////////////////////////////////////////////

;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;ウエイト
[wait time="3000"]
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]

;/////////////////////////////////////////////////
;背景変更
[bg  storage="bg7.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="wakudance.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ

;5.自宅へ戻る途中、道にイデアが落ちている。
;変更
[chara_mod  name="mira" face="_2-1"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
;変更
[chara_mod  name="meme" face="_2-5"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「嘿嘿～虽然没见到外星人小姐，但是能再见到米菈姐姐诶！今天真是超幸运日！芽萌超级开心～！[p]
;変更
[chara_mod  name="mira" face="_2-3"]
#mira
「哈哈，芽萌还是那么夸张啊～我也完全没想到会遇到你们俩。好怀念啊。大家都还好吗？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*3"  text="嗯，大概吧……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*3"  text="还算可以吧……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*3
;//////////////////////////////
任由她们叙旧，我在旁随意附和。[p]
实在难以介入对话。她们熟悉我，我对她们却一无所知…[p]
遗憾现在的我只能挤出生硬的笑容。[p]
;変更
[chara_mod  name="mira" face="_1-10"]
#mira
「哦？怎么啦真守？没精打采的～中暑啦？行行行！待会姐姐给你做顿提振精神的午饭！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈眨着眼，右手弯曲展示肱二头肌。[p]
哇…这家伙作为女生力量感十足…不会是有在健身吧。明明是女孩子。[p]
说起来为什么要用『オレ(俺)』自称…这种男性化的说话方式也令人感到违和。[p]
;変更
[chara_mod  name="meme" face="_1-3"]
#meme
「呐呐，难道说可以吃到米菈姐姐的亲手做的料理？好棒！也教教、也教教芽萌嘛！[p]
;変更
[chara_mod  name="mira" face="_2-5"]
#mira
「哦，包我身上！[p]
#
[stopse  time="1000"  buf="0"  ]
明明才刚重逢，两人却如此亲昵。仿佛多年的空白期根本不存在。曾经关系一定非常好吧。[p]
至于我，可能是因为记忆模糊，无法随意插话。那个…米菈，到底是怎样的女生来着…[p]
拼命追索记忆却毫无头绪。鲸田米菈，鲸田米菈…嗯，头开始痛了。[p]
…算了，没必要勉强回忆。适当应和对话就没问题吧。[p]
;変更
[chara_mod  name="meme" face="_2-1"]
#meme
「哎呀。那边掉了什么东西吗？[p]
#
[stopse  time="1000"  buf="0"  ]
突然，芽萌指向道路前方。[p]
;変更
[chara_mod  name="mira" face="_2-7"]
#mira
「那个…是什么啊？[p]
#
[stopse  time="1000"  buf="0"  ]
确实像布料又像扫帚…虽然看起来像团毛发但确实有个大型物体倒在那里。[p]
驻足凝视后发现那其实是个人类。[p]
;変更
[chara_mod  name="meme" face="_1-8"]
#meme
「嗯～是抹布吗？[p]
;変更
[chara_mod  name="mira" face="_1-4"]
#mira
「不，不对。看起来像是裙带菜！好吃的裙带菜啊！我超喜欢的，头发还能长长。[p]
#
[stopse  time="1000"  buf="0"  ]
不不不怎么看都是人啊！？！你们俩该不会中暑烧坏脑子了吧？[p]
总…总之得快点救人！[p]
我冲过去抱起了倒地的人。[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="1.png"  time="1000"  ]
[cg storage="1.png"]
;イデアたん
倒在地上的是位穿着奇特服装的女性。[p]
#mira
「啊、呜哇！？是人吗！抱歉真守，我还以为是裙带菜…[p]
#meme
「她没事吧！？这位小姐…可能是因为太热才晕倒的。[p]
#
[stopse  time="1000"  buf="0"  ]
她全身都被汗水浸透了。[p]
这种气温下也在所难免，可能是脱水导致的。[p]
#mira
「总之不能就这么放着不管，赶紧带去凉快的地方吧。[p]
#
[stopse  time="1000"  buf="0"  ]
幸好这里离家很近。[p]
我们决定先把她带回家。[p]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="bg1.png"  time="1000"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;6.自宅にて。看病完了。懐かしいねーという話をする。自由研究の万華鏡。
我们三人合力，总算将这位女士扛回家安置在了沙发上。[p]
;変更
[chara_mod  name="mira" face="_1-9"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「哈啊…[p]
#
[stopse  time="1000"  buf="0"  ]
看起来瘦弱的米菈意外地有力气…基本是她背着过来的，我和芽萌只是在旁边帮忙。[p]
反观身为男人的我如此无力，实在难堪。[p]
她应该有在锻炼吧…轻轻松松背个大活人，连表情都没变，虽然流了汗却看不出疲惫。[p]
事到如今只能请教一下怎么让我这个废柴一夜变身了，得找机会问问她的训练方法。[p]
;変更
[chara_mod  name="meme" face="_1-8"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「好～特别的衣服呀这位姐姐。芽萌也想穿这样的～[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌羡慕地看着那套服装。[p]
;変更
[chara_mod  name="mira" face="_1-1"]
#mira
「看着像某个民族的，这家伙从哪里来的？[p]
#
[stopse  time="1000"  buf="0"  ]
这种装扮确实与现代社会大相径庭。[p]
像是修女的过膝白色连衣裙。[p]
耳边戴的地球造型大耳环…真担心耳垂会被扯疼，简直不像地球产的饰品。[p]
这种天气还围着冬用围巾，让人怀疑她是不是故意想中暑。[p]
这身打扮像现代流行的角色扮演。还不知道COS的是哪个角色呢？[p]
最近动画里没见过类似的服装，难道是原创角色？[p]
或者说这是哥特洛丽塔风？据说这类穿搭既能彰显个性也是『请看着我』的偶像应援方式。可能在某些圈子里正流行这么穿？[p]
…虽然这么想但实际可能全是误会，说不定只是惩罚游戏。[p]
;変更
[chara_mod  name="meme" face="_2-6"]
#meme
「先把空调打开吧，才开了一会儿窗户就闷成这样了。[p]
#
[stopse  time="1000"  buf="0"  ]
说着芽萌按下了空调开关。[p]
房间瞬间凉爽，这就是现代科技啊…明知对身体不好却欲罢不能。[p]
这个夏天空调绝对算是必需品吧。就算用上电风扇，吹来的也只是热风罢了。[p]
;変更
[chara_mod  name="mira" face="_1-5"]
#mira
「喔——！！！凉爽、太凉爽了！喂真守！这房间太棒了！这就是所谓的空调吗！太厉害了！[p]
#
[stopse  time="1000"  buf="0"  ]
真是大惊小怪...难道你家没有装空调吗...米菈。在这么热的地方住在没冷气的房子里简直是地狱啊。最近的房产连装空调都已经是标配了哦。[p]
搞不好，米菈是在贫困的环境里长大的･･･突然觉得她有点可怜了。[p]
;変更
[chara_mod  name="meme" face="_1-4"]
#meme
「这样，搞定！[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌将冰毛巾敷在蓝发女子额头上，轻轻吹了口气。[p]
年纪虽小却很会照顾人，完全看不出是小学生，真是能干。[p]
...这些事情她究竟是从哪儿学来的。说不定在女性的基因里，天生就被刻画着慈爱之心吧。即便真是如此，我妹妹也实在是个了不起的孩子。[p]
多亏了她我才能每天都过得悠闲自在，真的非常感激。只要芽萌在身边，我什么都不用做啊…[p]
我一边想着这些依赖人的念头，一边坐在椅子上闭目面对着黑暗。[p]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="bg24.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="GAS.ogg"  ]

[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu2_VP8.webm"  ]

;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;精神世界　短い夢を見る。

这里是烈焰翻腾的星球。[p]
在大气层遥不可及的彼方，能望见蓝色希望之星。[p]
漫长旅途的最后，你终于抵达了那里。[p]
付出难以估量的痛苦与众多牺牲之后，你获得了新的生命。[p]
你，从此诞生在那里。[p]
#hatenaidea
「现在，你看见这幅星空映入眼帘了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
曾经熊熊燃烧的星体，最终化作了平凡的星辰。[p]
待火焰熄灭之日，终将蜕变成无边无际的荒芜大地。[p]
你觉得这颗星球上是否存活着生命？[p]
多数人的答案恐怕是否定的吧，人们至今为止都认为这个星球上没有生命存在。[p]
究竟是谁亲眼确认过这种情况呢？[p]
明明连这颗星球的一丁点事情都不知道。[p]
薛定谔的猫被关在箱子里时，无法判断它的生死。[p]
在揭开箱盖确认猫咪生死之前，它既是活着的也是死去的。[p]
#hatenaidea
「人类只相信自己亲眼所见之物。因此，绝对这种事根本不可能存在。[p]
#
[stopse  time="1000"  buf="0"  ]
你所未见的领域，浩瀚无垠。意味着有无限未知数存在。[p]
唯有当你降落在这片土地，用双眼亲自见证之后，一切才会揭晓。[p]
或许在这片土地上，栖息着与人类极其相似的生物。[p]
可能拥有与人类相当的智力、技术与能力，只是躲藏在我们看不见的暗处。[p]
怀着这样的希望展开探索之后，转眼已过几度寒暑。[p]
这颗星球上，至今仍未发现生命存在。[p]
同时我们也明白了，这里并不具备生物生存所需的环境。[p]
仅凭带回的数据资料，大概连我的存在都无法认知吧。[p]
若在未来的某天当地球面临毁灭时，人类试图舍弃故土迁徙至此的话...[p]
这将不仅关乎你个人，更会成为撼动整个宇宙的大事件。[p]
世界和银河的齿轮将开始转动。[p]
围绕着你这把钥匙，各方势力将展开争夺，直至最终彼此交融合而为一的时刻到来。[p]
#hatenaidea
「所有生命在终焉之际都会向往那一刻...[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;ムービー消し
[free_layermode  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="kuro.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="mellow_night.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;カレイドスコープの模様。メメの自由研究、万華鏡をみる。ミラとイデアも興味津々。
#meme
「超厉害啊。[p]
#mira
「看什么呢？[p]
#
[stopse  time="1000"  buf="0"  ]
好像稍微打了一会儿盹。听着两个元气十足的声音，我的意识瞬间清醒起来。[p]
;背景変更
[bg  storage="2-2.png"  time="1000"  ]
[cg storage="2.png"]
#meme
「这是万华镜哦。米菈姐姐！[p]
[bg  storage="2.png"  time="1000"  ]
#mira
「哦，好怀念啊！我小时候也做过万华镜！没想到还挺简单的呢。[p]
#
[stopse  time="1000"  buf="0"  ]
好像做了一个奇怪的梦。像是宇宙旅行之类的梦境。[p]
听到了类似摇篮曲的怀旧歌声。[p]
就像有什么想要诉说一般。仿佛有人直接在向我脑中低语似的。[p]
和最近玩的游戏内容有些相似。那是以宇宙和银河为舞台的作品。说不定是被那游戏影响了呢。[p]
不行啊，连梦里都会出现这些...果然不能太沉迷游戏。看来我比想象中还要投入。[p]
虽然这么想着，还是会继续玩游戏吧。毕竟，现实根本不值得看啊...游戏更有趣呢。[p]
#mira
「超厉害！太漂亮了吧！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈发出欢呼声。[p]
[bg  storage="2-4.png"  time="1000"  ]
#meme
「嘿嘿~对吧对吧~！[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌开心地回答。这两家伙关系也太好了吧。打瞌睡的我完全被排除在外嘛。不过也罢...[p]
[bg  storage="2-5.png"  time="1000"  ]
#mira
「看着这个就像误入了异世界。仿佛在星海之中，在宇宙之中漂泊似的...[p]
#meme
「明明放进去是一样的东西，为什么景色完全不同呢？[p]
[bg  storage="2-7.png"  time="1000"  ]
#mira
「为什么呢。我脑子笨搞不懂啦。真守应该知道吧？[p]
#
...喂，为什么要突然扯上我啊。[p]
[bg  storage="2-2.png"  time="1000"  ]
#meme
「快看快看哥哥！这是我手工课做的万华镜！[p]
#
[stopse  time="1000"  buf="0"  ]
说着把一个小圆筒递给我。[p]
不过终于也有人来找我搭话了。看来我还没完全变成空气呢...太好了。没被排挤真是太好了。有点开心。[p]
...会这样想本身就不太妙吧。说到底还是没法融入对话。[p]
所以才会在学校交不到朋友。每次分组都会剩下我。啊，连假日都在想这种事，真是太讨厌自己了。[p]
⋯⋯[p]
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="false"  video="garasu_VP8.webm"  ]
[bg  storage="bg4.png"  time="1000"  ]
上一次看万华镜是几年前了呢。[p]
透过窥孔看去，六个面的几何图案正在闪烁。[p]
深处透进来的阳光刺得人目眩。[p]
试着慢慢转动筒身，里面的珠片随着移动变幻着图纹。[p]
虽说构造简单，作为小学生暑假作业已经很优秀了。[p]
在班里肯定会成为焦点吧。真好啊，芽萌这么手巧什么都会。[p]
万华镜的结构，看似复杂实则简单。[p]
把几面镜子放进纸筒，底端放入珠子之类的小物件，两端打孔固定就行。[p]
一端的透光孔引入光亮，透过另一端的窥孔就能看到多重映射的图案。[p]
晃动筒身时材料位移，画面也随之渐变。[p]
简单的机械装置，却能投射亿万种画面。只要看上一眼，万华镜就能带我去往陌生世界。那个明暗交织、色彩斑斓的异界。[p]
⋯⋯[p]
我们初见万华镜，已是多年前的旧事了。[p]
妈妈去仙台出差时买的伴手礼，带回来送给了我们。[p]
据说仙台有专门的万华镜美术馆，收藏着各种类型的展品。[p]
妈妈送的那个是专业级产品，透明油液里漂浮着亮片和星辰月牙形的金属箔。[p]
光是端详外侧就能看到闪闪发光的美丽景象。[p]
比起自然光，用日光灯等人工光源照看会更显得璀璨。[p]
仅有一只的那个玩具最初总与芽萌争抢，有次我甚至打了芽萌来独占它。为此还被母亲责备过呢。[p]
对了，说起来那个万华镜...放到哪里了呢。...应该是搬家的时候弄丢了吧？[p]
;ムービー消し
[free_layermode  ]
[bg  storage="2-3.png"  time="1000"  ]
#mira
「哈哈哈。不过这种形状真的让我想到筒状羊羹啊。[p]
#
[stopse  time="1000"  buf="0"  ]
筒状羊羹...竟然能想起这种怀念的老物件啊。[p]
继海带之后又聊起食物的米菈。这家伙难道肚子饿了吗...？[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*4"  text="比起玩，更在意吃的东西啊……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*4"  text="总想着吃的东西呢"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*4
;//////////////////////////////
[bg  storage="2-5.png"  time="1000"  ]
#mira
「吵死了！正在长身体的时候嘛！不行吗。[p]
#
[stopse  time="1000"  buf="0"  ]
筒状羊羹是在比卫生纸卷心小一两圈的圆筒里填满普通羊羹，边推边用线切块食用的特色零食。那可是北海道有名的伴手礼哦。[p]
虽然内馅是普通羊羹，但用线切块的过程就很有趣呢。可以切成超薄片，或故意切成厚块。以前在奶奶家常吃到，那时胃还小一次吃不完一整根。[p]
[bg  storage="2-6.png"  time="1000"  ]
#meme
「啊哈哈哈！米菈姐姐还是老样子这么馋嘴啊～[p]
#
芽萌发出欢快的笑声。[p]
#mira
「啊可恶...说吃的都说饿了！我来准备午饭吧。[p]
#
[stopse  time="1000"  buf="0"  ]
;背景変更
[bg  storage="bg1.png"  time="1000"  ]
;変更
[chara_mod  name="mira" face="_1-10"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
米菈突然按住肚子摇摇晃晃走向厨房。果然饿坏了吧...[p]
;変更
[chara_mod  name="meme" face="_1-4"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「好～芽萌也要帮忙～[p]
[chara_mod  name="mira" face="_2-5"]
#mira
「哦，谢啦。[p]
#
[stopse  time="1000"  buf="0"  ]
今天的午饭会是...？[p]
芽萌就算了，像米菈这么粗枝大叶的女生做饭，真让人有点不安呢...[p]
神明保佑，只要不是无法下咽的东西就好。[p]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="3-2.png"  time="1000"  ]
[cg storage="3.png"]

;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;7.お腹すいたし飯にしよう。イデア目覚める。突然の地球滅亡宣告。
片刻后米菈端着拉面碗雀跃而来。[p]
#mira
「久等啦！我特制活力担担面！加了超多大蒜既提神又能防中暑！来！你们俩都给老子使劲吃！[p]
#
[stopse  time="1000"  buf="0"  ]
「咚」地摆在桌上的竟是摆盘精致的担担面。麻酱打底的香辣汤汁堪称夏日绝品面食。[p]
难以想象这么精致的菜品出自粗鲁的她之手，扑鼻香气令人不自主吞咽。[p]
#meme
「哥哥，米菈姐姐超会做饭的！帮忙时芽萌学到好多呢！[p]
[bg  storage="3.png"  time="1000"  ]
#mira
「哼哼！厉害吧？这可是米菈大人亲手做的，要感恩戴德啊真守！[p]
#
[stopse  time="1000"  buf="0"  ]
但...万一尝了觉得难吃怎么办？[p]
毕竟有些东西光摆盘漂亮，味道难以恭维呢...还是谨慎为妙。这般想着战战兢兢尝了一口。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*5"  text="･･･！？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*5"  text="好、好吃！"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*5
;//////////////////////////////
好...好好吃！[p]
与米菈粗俗的言辞和轻浮外貌形成反差的美味。[p]
谢天谢地是能入口的食物...[p]
[bg  storage="3-3.png"  time="1000"  ]
#mira
「喂真守，你小子绝对在想'这家伙这么粗鲁肯定不行'吧？全写脸上了喂！[p]
#
[stopse  time="1000"  buf="0"  ]
...暴露了。完全暴露了。为什么啊！这家伙是会读心术吗？[p]
#meme
「米菈姐姐，超级好吃哦！下次芽萌也可以照着做一样的吗？[p]
[bg  storage="3-2.png"  time="1000"  ]
#mira
「噢，没问题！因为芽萌很可爱啊～是特别的！[p]
#meme
「真的！太好了最喜欢米菈姐姐啦～！[p]
[bg  storage="3.png"  time="1000"  ]
#mira
「嘿嘿，别害羞嘛。[p]
#
[stopse  time="1000"  buf="0"  ]
;背景変更
[bg  storage="bg1.png"  time="1000"  ]
看着两人的互动，我感到有些寂寞。[p]
啊啊真是的，为什么这两人明明是初次见面却能这么亲密啊。[p]
啊。不对，不是初次见面...只是重逢而已吗？[p]
我自己几乎没有记忆...我们以前真的这么要好吗？[p]
只有我被排除在外，感觉像是被大家丢下了一样。[p]
结果...我无论在哪里，都是孤零零一个人啊。[p]
⋯⋯[p]
还依稀记得父母曾在我年幼时说过的话。[p]
虽然已经是多年前的事，但据说在我小时候发生过一起事件。[p]
说是正好像今年这样炎热的季节。[p]
似乎唯独那时候的记忆完全缺失了。[p]
...所以才会怎么也想不起关于米菈的事吧。[p]
当时到底发生了什么。为何会忘记呢...[p]
每当试图回想那时的事，头就会像要裂开般疼痛。[p]
偶尔会浮现零碎的记忆碎片。但分不清那是最近发生的事，还是很久以前的经历。[p]
正这样追溯着过往...不知不觉我的面碗已经空了。[p]
咦...？我明明只吃了一口啊。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*6"  text="我的担担面呢？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*6"  text="我的那份，是不是被谁偷吃了？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*6
;//////////////////////////////
;変更
[chara_mod  name="meme" face="_1-5"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「哇哦，超厉害！哥哥一定是觉得超好吃！居然连汤都喝光光啦～！[p]
;変更
[chara_mod  name="mira" face="_1-8"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「喂喂，这玩笑开得有点大。是你吃的吧？要添饭啊～？真没办法...等等，我的怎么也空了！？[p]
#
[stopse  time="1000"  buf="0"  ]
米菈的碗似乎也空了。从神情来看不像串通好的说谎。[p]
;変更
[chara_mod  name="meme" face="_1-8"]
#meme
「哎哎哎哎哎！？我的碗怎么不见啦～？[p]
#
[stopse  time="1000"  buf="0"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
芽萌的海碗也不见了。[p]
背后传来吸溜吸溜的声音。战战兢兢回头，眼前出现震撼的光景...[p]
;変更
[chara_mod  name="idea" face="_1-1"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
本应在沙发上沉睡的女生，正在呼噜呼噜地嗦着担担面。[p]
;BGM
[playbgm  time="1000"  loop="true"  storage="two_magnetic.ogg"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*6_5"  text="醒过来了吗？･･･！"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*6_5"  text="我、我的担担面……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*6_5
;//////////////////////////////
;変更
[chara_mod  name="meme" face="_1-1"]
#meme
「啊咧。姐姐醒了？已经没事了吗？[p]
;変更
[chara_mod  name="idea" face="_1-3"]
#hatenaidea
「非常美味。这个食物叫什么名字呢？[p]
#
[stopse  time="1000"  buf="0"  ]
面无表情的女生用平淡语气说着。完全不在意嘴角沾着的红油...[p]
;変更
[chara_mod  name="meme" face="_1-6"]
#meme
「那可是大家的担担面。全部吃掉的话芽萌会哭鼻子哦。[p]
;変更
[chara_mod  name="mira" face="_1-7"]
#mira
「喂！是你偷吃了我的吧？抢人食物仇深似海啊！[p]
;変更
[chara_mod  name="idea" face="_1-4"]
#hatenaidea
「非常抱歉，因为这香味实在诱人。那个...[p]
;変更
[chara_mod  name="meme" face="_1-5"]
#meme
「啊。姐姐，我叫芽萌～这边是哥哥真守。他总是宅在家里就知道玩游戏──啊哈哈！[p]
#
[stopse  time="1000"  buf="0"  ]
「等一下！我的妹妹别乱爆料啊。跟初次见面的人不要多嘴。[p]
;変更
[chara_mod  name="mira" face="_2-1"]
#mira
「我是米菈。和真守、芽萌都是自幼相识。[p]
;変更
[chara_mod  name="idea" face="_2-4"]
#hatenaidea
「真守大人，芽萌大人，米菈大人...是各位救了在下吗。万分感谢。而且还享用了餐食，不知该如何报答这份恩情。[p]
;変更
[chara_mod  name="meme" face="_1-2"]
#meme
「谢礼什么的不用啦～姐姐平安无事就好！[p]
#
;変更
[chara_mod  name="mira" face="_2-7"]
#mira
「汝究竟是何人？...速速道来。[p]
#
[stopse  time="1000"  buf="0"  ]
演示完自我介绍后，米菈露出不悦的表情发问。与先前开朗活泼的印象截然不同，此刻她的神情异常凝重。[p]
;変更
[chara_mod  name="idea" face="_2-1"]
#idea
「我是伊迪雅。这颗星球的守护者。[p]
;変更
[chara_mod  name="meme" face="_2-8"]
#meme
「星球的...守护者？咦？难道是、外星人小姐？！[p]
;変更
[chara_mod  name="idea" face="_2-2"]
#idea
「是的。用你们的语言来说，外星人...这个称呼是正确的。[p]
#
[stopse  time="1000"  buf="0"  ]
面对意料之外的发言，芽萌兴奋地两眼放光。[p]
;変更
[chara_mod  name="meme" face="_1-3"]
#meme
「太厉害了！！！真的是外星人小姐吗？！看呀看呀哥哥！我就说外星人真的存在嘛ー！[p]
#
[stopse  time="1000"  buf="0"  ]
外星人·...莫非是前几天乘坐坠毁UFO来的家伙？[p]
开玩笑吧，居然真的有外星人·...完全不像奥特○曼啊。到底是谁说的外星人是长着杀人级别的可疑姿态的家伙。[p]
不，也可能只是个自称外星人的电波女。毕竟外表完全和我们人类一样啊。美少女外星人只是幻想...只存在于动画里才对。[p]
;変更
[chara_mod  name="mira" face="_1-1"]
#mira
「...那么，那个外星人小姐来地球干什么呢？[p]
;変更
[chara_mod  name="idea" face="_1-2"]
#idea
「我因这颗星球大限将至而前来此处。一周之后，这个地球将迎来灭亡之时，我正是为阻止此事而被派来的。[p]
;変更
[chara_mod  name="meme" face="_2-8"]
#meme
「地球要...[p]
;変更
[chara_mod  name="mira" face="_1-6"]
#mira
「灭亡...？[p]
#
[stopse  time="1000"  buf="0"  ]
米菈和芽萌呆呆地张着嘴，一副不明所以的样子。[p]
估计我的表情也和她们差不多。简直就像在说'这家伙在胡扯什么'。[p]
;変更
[chara_mod  name="mira" face="_1-5"]
#mira
「哈哈哈哈笑！一周后地球就要灭亡？！别在这胡咧了。哈哈，真是个离谱的神经病！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈夸张地大笑起来。[p]
任何人都会想笑的吧。这种玩笑太露骨反而很无趣啊...[p]
;変更
[chara_mod  name="idea" face="_1-1"]
#idea
「并非虚言。确有其事。我们的星象观测仪可不存在一丝一毫的误差。[p]
#
[stopse  time="1000"  buf="0"  ]
伊迪雅完全不在意被取笑，仍维持中性表情继续陈述着。[p]
看来是这种电波系的啊...[p]
;変更
[chara_mod  name="idea" face="_1-5"]
#idea
「一周后...不，准确来说约168小时后，这个地球就将崩毁。[p]
;変更
[chara_mod  name="meme" face="_2-6"]
#meme
「怎、怎么办啊！？地球毁灭的话，大家都会死的对吧？[p]
;変更
[chara_mod  name="mira" face="_1-7"]
#mira
「冷静点芽萌。喂，要怎么才能得救？你应该是知道方法才来的吧？[p]
#
[stopse  time="1000"  buf="0"  ]
米菈安抚着因电波女发言而慌张的芽萌。[p]
;変更
[chara_mod  name="idea" face="_2-4"]
#idea
「是的，没有问题。要阻止崩毁的话...[p]
#
[stopse  time="1000"  buf="0"  ]
话音稍顿，她的目光缓缓转向我这边...继而开口说道：[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;変更
[chara_mod  name="idea" face="default"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「星海真守大人。需要借助您的力量。请您将力量借予我。[p]
#
[stopse  time="1000"  buf="0"  ]
原本以为又是些不着边际的瞎话，自始至终都当耳旁风听着...结果突然被指名道姓，吓了一激灵。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*7"  text="哈！？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*7"  text="为什么是我･･･！？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*7
;//////////////////////////////
;変更
[chara_mod  name="idea" face="1-5"]
#idea
「若能以特定角度局部牵引地球的未来走向，便可避过这场灭顶之灾。而具备此等力量的唯一人选...正是您。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
完全搞不明白。[p]
喂喂喂喂，说什么呢。到底在讲什么啊。这什么原理啊。[p]
脑海里乱作一团，塞满了难以理解的词汇。[p]
;変更
[chara_mod  name="idea" face="1-2"]
#idea
「来吧真守大人。请问做好成为救世主的觉悟了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
别开玩笑了。我...当救世主？[p]
⋯⋯[p]
当时的我，完全没有想到。[p]
她那一席话竟会成为撼动宇宙的起始...[p]

;////////////////////////////////////////////
;色々非表示
@layopt layer=message0 visible=false
;メニュー非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]
;////////////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="kuro.png"  time="1000"  ]
;////////////////////////////////////////////
;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;BGM
[playbgm  time="1000"  loop="false"  storage="two_magnetic2.ogg"  ]
;OP動画
[movie storage="OP_VP8.webm" skip=true ]

;8.OP
;////////////////////////////////////////////
;■EP2　立ち上がり編「その眼に星は見えているか？」
;////////////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="ct5.png"  time="1000"  ]
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu2_VP8.webm"  ]

;/////////////////////////////////////////////////

;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;ウエイト
[wait time="3000"]
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[free_layermode  ]

;/////////////////////////////////////////////////
;背景変更
[bg  storage="8.png"  time="1000"  ]
[cg storage="8.png"]

[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu2_VP8.webm"  ]

;BGM流し
[playbgm  time="1000"  loop="true"  storage="dark_nebla.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ

;1.プロローグ悪夢 ビッグバン

生命，究竟从何而来。[p]
背负着怎样的使命。又被赋予了何种意义而诞生于世。[p]
在虚无意志的驱使下，背负着残酷命运，茫然不知该向何处前行...[p]
生命的起源，本就是宇宙的开端。[p]
从一场大爆炸开始，万物始现。[p]
虚无之处诞生星辰，星海蔓延。[p]
浩瀚星海逐渐扩展至辽阔规模。[p]
无人观察这番景象。[p]
多数星辰至今仍在熊熊燃烧，热量似乎要焚尽万物。[p]
其中一颗行星失去热量，最终被汪洋覆盖。[p]
这正是海洋形成之时。[p]
汪洋中孕育出微观生命体。[p]
生物在进化与退化循环中逐渐接近理想形态。[p]
最终他们获得了智慧。[p]
这个种族乃猿类延伸——人族。[p]
他们聪慧到可以预知并操控星辰命运。[p]
人类并不追求成为至善存在。[p]
人人持有自我意识，开始任性妄为。[p]
世界平衡逐渐崩塌，土地缓缓走向崩毁。[p]
生物自身最本真的渴望，竟如此轻易地被遮蔽。[p]
犹如将珍贵之物深藏于不可触及之地。[p]
不知不觉间他们沦为全宇宙的笑柄。[p]
自以为掌控寰宇，却永远意识不到自身丑恶。[p]
是谁在独占欲望？[p]
已无法验证真相。[p]
此目再难见证真实。[p]
在迷惘中继续在宇宙徘徊，依循因果定律踏上注定的征途。[p]
此刻你正于此地，遐想着遥远星际。[p]
;////////////////////////////////////////////アイキャッチ
;ウインドウ消去
@layopt layer=message0 visible=false
;メニュー非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;ムービー消し
[free_layermode  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="ic2.png"  time="1000"  ]

;/////////////////////////////////////////////////
[layermode_movie  mode="screen"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="waku_VP8.webm"  ]

;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;ウエイト
[wait time="3000"]
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[free_layermode  ]

;/////////////////////////////////////////////////
;背景変更
[bg  storage="4.png"  time="1000"  ]
[cg storage="4.png"]

;BGM流し
[playbgm  time="1000"  loop="true"  storage="GAS.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ
;2.イデアがこれからやることの説明。２人に後押しされるもマナコ拒否。
#idea
「是啊...该从何说起呢。[p]
#
[stopse  time="1000"  buf="0"  ]
自她说出『星海真守是救世主』后，客厅弥漫着莫名的紧张感。[p]
哈啊...好尴尬啊，我最怕这种被注视的感觉了...别都盯着我看啊...[p]
她灼灼的目光直射而来。这股压迫感...我如坐针毡，缓缓移开视线。[p]
;変更
[chara_mod  name="meme" face="_1-1"]
;変更
[chara_mod  name="mira" face="_1-1"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「哥哥是...救世主？那个...救世主是什么呀？[p]
#idea
「是，星海真守大人确是救世主。背负着拯救此星宿命的生命。[p]
[chara_mod  name="mira" face="_1-6"]
#mira
「为何选中真守？况且怎知一周后灭亡？依据呢？[p]
#idea
「此星孕育过剩生命。芸芸众生索求和平又渴望混沌...在红尘碾轧中伴着绝望进化。原本渴求安宁的生命意识，已被严重污染。[p]
#idea
「终至所有生灵皆怀抱『毁灭地球』之愿。渴求解脱痛苦、怨恨存活、祈盼终结生命...[p]
#idea
「地球毁灭就好。末日降临才妙…最好突发灾变令星球崩毁。这些被污染的思念虽微小零散，[p]
#idea
「但...经岁月积淀堕落的精神凝聚成庞然恶愿——我们称之为『破灭星河之愿』。[p]
[chara_mod  name="meme" face="_1-6"]
#meme
「人类的意识会摧毁地球吗？[p]
[chara_mod  name="mira" face="_1-8"]
#mira
「现实真可能如此？全是些摸不着头脑的事啊。[p]
#idea
「是的。而且这种现象近年已经成长到能在宇宙规模造成影响･･･甚至改变了太阳系的轨道。现在有颗巨大陨石正在接近地球。一周之后･･･这颗陨石就会以撕裂地球的态势撞击下来。[p]
[chara_mod  name="meme" face="_2-8"]
#meme
「哎哎哎？！陨石君要掉到地球上了吗！？怎么办啊哥哥！我们得赶快逃啊——！[p]
#idea
「没用的。只要还在这颗地球上，逃到哪里结果都一样･･･随着陨石的坠落，包括人类在内的地球生物都会灭绝吧。[p]
[chara_mod  name="mira" face="_2-7"]
#mira
「喂等等。为什么国家不公开这件事？气象厅和相关专家应该早就发现了吧。[p]
#idea
「这个啊。人类的考量方式恕我难以理解。或许是为了避免恐慌才刻意隐瞒？[p]
[chara_mod  name="mira" face="_1-9"]
#mira
「･･･一想到要是我没在这里，直到最后时刻还懵然无知地活着...就后背发凉啊…[p]
[chara_mod  name="meme" face="_1-6"]
#meme
「难道要在我们不知道的时候，芽萌和大家突然死掉吗？不要这样嘛…[p]
[chara_mod  name="mira" face="_1-10"]
#mira
「你说的拯救具体要怎么搞？[p]
#idea
「我们将采用蝴蝶效应来偏移陨石轨道。[p]
[chara_mod  name="meme" face="_1-8"]
#meme
「蝴蝶…阿菲克特…？[p]
#idea
「这个时代也被称为蝴蝶效应。就像沙漠里蝴蝶振翅能引起丛林风暴那样･･･只要真守大人采取特定行动，就能间接拯救这颗星球。[p]
#idea
「很简单。消弭负面情绪就能拯救地球。不需要逐个拯救每个生命。所有发生在人类身上的事象都是环环相扣的。[p]
#idea
「这颗陨石的坠落追根究底也是蝴蝶振翅所生。只不过是各种人类与生物愿望具象化的结果。既然如此，只需要掀起逆向风浪引发相反结局即可。[p]
#idea
「我最清楚您最低限度该做什么了，真守大人。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*8"  text="拜托别人嘛"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*8"  text="为什么偏偏是我呢？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*8
;//////////////////////////////
#idea
「只有您能使这个法则成立。其他人需要360天的工作，换成您只要5天就能完成。完全能赶在陨石撞击之前･･･[p]
#
[stopse  time="1000"  buf="0"  ]
「不不，你说一周･･･我的暑假也只剩最后一周了吧。[p]
「这可是我宝贵的暑假啊！谁会跟这种电波女玩救助游戏啊？连暑假作业都没写完呢，哪有闲工夫陪你们折腾。[p]
「是真是假都还没分清，就要我听信来历不明的家伙说的鬼话行动？[p]
「再说了･･･正常人都会觉得是骗局吧？而且为什么偏偏选我？简直荒诞。彻头彻尾的怪谈。全是谜团。这种荒唐事怎么可能让人信服。[p]
「突然说『明天世界毁灭』谁会信？开什么宇宙级玩笑。[p]
「全世界的预言家都失败过无数次。每次都高喊『地球要完』，每次都引发全球恐慌，信徒事后追悔莫及。总得有人担责任吧？预言者们就这样赔上了自己的未来。[p]
「这女人肯定也在耍我们玩。[p]
「毕竟从古至今，地球不都稳稳承载着我们吗？[p]
「在我出生前，几万年、几亿年前的远古时代都是如此･･･[p]
「…结果现在。[p]
「就这么轻飘飘地、毫无缘由地，说什么一周后就世界毁灭…这女人到底在扯什么？[p]
「还让我这个外行人来力挽狂澜？凭什么。不可能的。绝对不可能。」[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*9"  text="我、我･･･"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*9"  text="･･････"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*9
;//////////////////////////////
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="4-2.png"  time="1000"  ]
#mira
「喂，真守！你还在犹豫什么啊！这个没出息的家伙！只能去做了不是吗！我们的地球变成怎样都无所谓吗！？[p]
#
[stopse  time="1000"  buf="0"  ]
当我支支吾吾不知所措时，米菈用充满气势的声音责问着我。[p]
;背景変更
[bg  storage="4-3.png"  time="1000"  ]
#meme
「就是啊，哥哥！必须去做！因为地球就要消失了啊！？一切都完蛋了呀！？[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌也跟着附和。[p]
喂，为什么这些家伙会盲目相信那个电波女的话啊。真是蠢得可以。[p]
这不可能吧。从常理来考虑…[p]
;背景変更
[bg  storage="bg1.png"  time="1000"  ]
;変更
[chara_mod  name="idea" face="2-2"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
;万華鏡を手に取るイデア
#idea
「哎呀，这是…[p]
#
[stopse  time="1000"  buf="0"  ]
她突然像是想起什么似的拿起了万华镜。[p]
#meme
「伊迪迪，这可是芽萌的自由研究课题哦。叫做万华镜！从这个洞口看进去的话，能看到小小的宇宙呢！[p]
#
[stopse  time="1000"  buf="0"  ]
电波女露出格外惊讶的表情，轻轻地把眼睛凑近了窥视孔。[p]
[chara_mod  name="idea" face="2-3"]
#idea
「…这个构造。和世界的形态十分相似呢。[p]
#idea
「明明是同样的素材，却因为摇晃的角度、速度，每一秒都能看到完全不同的风景。其中的道理，和我们所在这颗星球上是一样的。根据转动筒身的方式，呈现出千变万化的景象…迎接无数结局的世界…[p]
#
[stopse  time="1000"  buf="0"  ]
她面无表情地解说着，凝视着万华镜中的世界。[p]
这番解说是说给谁听的，我完全不明白。也不想要明白…[p]
[chara_mod  name="idea" face="default"]
#idea
「真守大人，难道不想看看吗？这颗星球的未来。梦想的延续…[p]
#
[stopse  time="1000"  buf="0"  ]
她将视线转向我之后，露出诡异的微笑说道。[p]
[chara_mod  name="idea" face="1-3"]
#idea
「就像这个万华镜一样，想将群星最璀璨的瞬间永远定格…不这么觉得吗。[p]
#idea
「我可是知道的哦。永远让地球这颗星球持续闪耀的方法。还有，运转星辰的诀窍…[p]
#
[stopse  time="1000"  buf="0"  ]
;////////////////////////////////////////////アイキャッチ
;ウインドウ消去
@layopt layer=message0 visible=false
;メニュー非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="ic.png"  time="1000"  ]
;/////////////////////////////////////////////////
;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;ウエイト
[wait time="3000"]
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;/////////////////////////////////////////////////
;背景変更
[bg  storage="bg2.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="mellow_night.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ
;3.家を出てきたマナコ。救世主いやがる。物思いにふける。過去のことを思い出す。
米菈、芽萌，还有那个叫伊迪雅的电波女。[p]
被这三个人硬塞着莫名其妙的使命，感到窒息的我不由自主地冲出了家门。[p]
大家都太任性了。[p]
一次来三个…真是蠢到家了。我受够了！[p]
什么救世主啊…为什么非得是我。[p]
我才不管呢。那么重大的责任，谁会接受啊…绝对不要。肯定是拒绝啊。[p]
地球要毁灭就随它去吧。那种事，和我没关系。[p]
倒不如说，真希望明天不要来…这个世界上渴望死去的人随处可见不是吗。肯定是那些人的念想太强烈了…才让一周后会有陨石坠落什么的。[p]
就算我按那家伙说的去做避免了灭亡…本质上什么都没改变。[p]
打从开始地球就需要推倒重来啊。人类已经走到无法挽回的地步了。所谓灭亡，不就是这么回事吗？[p]
全部重置，从头再来。…这才是神明作出的选择不是吗？[p]
为什么我们人类非要违背这个意志不可啊。完全搞不懂。这就是命运啊。是逃脱不了的宿命啊。[p]
跑到腿软的我咒骂着，坐上了公园的秋千。[p]
⋯⋯[p]
用悬空的双腿轻轻摆动。[p]
锁链晃动着，发出吱呀吱呀的声响。[p]
这样待着，简直像个耍脾气的小孩子。以前被骂得发火跑出家门时，也是这样子颓丧地看夕阳吧。[p]
想起了小时候的事。[p]
和总是顶撞大人的我不同，芽萌是个乖孩子。[p]
无论何时何地都保持着『乖孩子』的形象。从不违背父母的教诲。[p]
这么想来，或许愚蠢的那个一直是我吧。[p]
真矫情啊...也许吧。我究竟是从什么时候开始扭曲的呢？[p]
『只要从某个角度局部改写地球的未来轨迹，就能避开毁灭结局』[p]
说这么轻巧。地球的未来...要是这么简单就能改变，那个女人自己出手不就好了？[p]
『而具备这种能力的唯一人选...就是您啊』[p]
说到底你是什么人啊。说的话完全莫名奇妙。[p]
突然出现在我们面前，说什么我是救世主。还声称积累善行就能引发蝴蝶效应。[p]
这种不切实际的理论，闻所未闻，根本不可能存在。[p]
『喂真守！发什么愣呢！你这花岗岩脑袋！必须去做啊！难道要眼睁睁看着地球毁灭吗！？』[p]
...无所谓了。地球会不会毁灭现在已经不重要了。跟我没关系。反正早晚都要毁灭的。[p]
『不是啦哥哥！必须做啊！不然地球会消失的！？一切都要终结了！？』[p]
...没关系的。那个女人跟我非亲非故。刚认识也说不上关系多好，完全没有义务帮她的理由。凭什么非要我为别人做什么不可啊。[p]
在这个一直压迫我的世界里，我从没感受到什么值得感恩的东西。[p]
没什么好感激的。不可能的。...正好相反，我怀恨在心。为什么我就必须活得这么悲惨？[p]
米菈也好，芽萌也罢。都在极度亢奋地相信那个外星女的话...说到底她们压根觉得和自己无关，纯粹在享受这场闹剧吧。[p]
厌倦了太平日子，想找点刺激变化。于是发现现实背后不为人知的一面，就想玩英雄扮演游戏而已。[p]
再说为什么非要现在啊？[p]
还剩一周...我的暑假也只剩一周了。作业都还没写完，还有好多游戏想玩啊。[p]
意思是让我把剩下的暑假全部献出来拯救地球吗？[p]
这种荒唐事...[p]
妈的...光是回想起来就要抓狂了。[p]
⋯⋯[p]
;4.こんなところにいたのか。ミラに連れられて壊れたプラネタリウムへ。
当我低着头沉默凝视地面时，毫无掩饰意图的脚步声"咔咔"地由远及近。[p]
...谁啊。该不会是警察吧？我难道要被辅导了吗？[p]
;変更
[chara_mod  name="mira" face="2-1"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「...原来你在这儿。[p]
#
[stopse  time="1000"  buf="0"  ]
我扬起瘪嘴的脸，看到米菈站在跟前。[p]
[chara_mod  name="mira" face="1-6"]
#mira
「芽萌很担心哦。太阳下山还没回来，正疑惑你在干什么呢。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*10"  text="这跟你没关系吧"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*10"  text="别管我了"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*10
;//////////////////////////////
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="5.png"  time="1000"  ]
[cg storage="5.png"]
她为难地皱着眉，在旁边的秋千上坐下。[p]
#mira
「别太钻牛角尖啦。你应该明白的...这件事上根本没法逃避...[p]
#
[stopse  time="1000"  buf="0"  ]
是想...胁迫我吗？[p]
我対米菈知之甚少。但对方却对我了如指掌。[p]
世上还有这么令人不快的存在吗？[p]
摆出老友的架子自来熟地接近，最后却用善意的武器来胁迫我。逼我扛起莫名其妙的责任。[p]
不...说是要把我引向正道。什么是正...多管闲事。太自以为是了。[p]
既然声称是挚友，就请试着理解我的心情啊...求你了。[p]
这份想要就此堕落、沉入泥沼的心情...[p]
[bg  storage="5-2.png"  time="1000"  ]
#mira
「呐。还没整理好心情对吗？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*11"  text="这不是理所当然的吗？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*11"  text="这……跟我没关系呀"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*11
;//////////////////////////////
[bg  storage="5-3.png"  time="1000"  ]
#mira
「...[p]
#
[stopse  time="1000"  buf="0"  ]
我闭目长叹。此刻的她莫名透着股不同往日的沉稳。[p]
不同于往日粗线条又聒噪的印象。此刻她的面容看起来竟是意外的成熟。[p]
那份冷静从容的作派与刚才判若两人。[p]
[bg  storage="5-4.png"  time="1000"  ]
#mira
「跟我来，真守。带你去个好地方。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈这样说着便笑了起来，起身迈步前行。[p]
⋯⋯[p]
反正闲着也是闲着，无奈之下就决定跟着她走了。[p]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="bg9.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="redstar.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;5.星の話。ミラの説得。
;変更
[chara_mod  name="mira" face="2-2"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「･･･就是这里。[p]
#
[stopse  time="1000"  buf="0"  ]
被米菈带来的地方是座穹顶建筑。[p]
在关闭之前，曾是有些名气的小型天文馆。[p]
边境之地竟有天象仪，刚开馆时因为新奇热闹过一阵子，但客流渐稀经营困难终告关闭。在当地是著名的创业失败案例。在这种乡下小镇也是无可奈何吧。[p]
如今成了华丽废墟，有小混混聚集地的传闻，偶尔也有流浪汉栖身的流言。早已是无人问津的场所。[p]
[chara_mod  name="mira" face="2-2"]
#mira
「啊，天文馆啊。虽然听说数年前就废弃了。咱们相遇那会儿，还在运转吧？[p]
#
[stopse  time="1000"  buf="0"  ]
米菈刻意用夸张的语气这么说着。[p]
我至今仍未忆起关于她的任何事，这事实像根刺扎得我心慌意乱，但我却要强装镇定。[p]
[chara_mod  name="mira" face="1-10"]
#mira
「哈，姑且进来吧。门开着呢。[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="bg5.png"  time="1000"  ]
带着戏谑的笑，她推开了门扉。[p]
建筑内部与往昔无二。若说变化，便是角落堆积多年的尘埃吧。再加上，除了我们空无一人。虽然...这在情理之中。[p]
米菈手法娴熟地用火柴点亮提灯后，大剌剌地瘫坐在空椅上。[p]
･･･为什么这里有提灯？是她的私人物品不成？该不会...这家伙一直住这里吧？[p]
#mira
「你也坐啊。这椅子，意外不错呢。[p]
#
[stopse  time="1000"  buf="0"  ]
;背景変更
[bg  storage="6.png"  time="1000"  ]
[cg storage="6.png"]
在她的催促下，我也入座了。[p]
这椅子的舒适度，确实超出我对废弃之物的想象。[p]
落座瞬间，身体便松弛下来。想必是为让观星者专注而特制的款式吧。[p]
米菈舒展双腿，甚是放松的模样。[p]
#mira
「这里，看不见星辰呢。[p]
[bg  storage="6-5.png"  time="1000"  ]
#mira
「･･･但并非如此。只要阖眼，你定能目睹。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈闭目斜靠椅背，如仰望星空般将紧握的拳举向穹顶。[p]
[bg  storage="6-4.png"  time="1000"  ]
#mira
「宇宙无尽延展，众生皆为星屑。我们的基因镌刻着银河碎片。[p]
#
[stopse  time="1000"  buf="0"  ]
她缓慢张开五指，掌心向天托举。[p]
[bg  storage="6-6.png"  time="1000"  ]
#mira
「･･･我啊，渴望拯救诞生自己的星球...[p]
#
[stopse  time="1000"  buf="0"  ]
睁眼时已换上肃穆神情。[p]
那非比寻常的气场，竟透着些许怀念。[p]
⋯⋯[p]
果然，我和米菈...[p]
[bg  storage="6.png"  time="1000"  ]
#mira
「与君相遇的，这颗星辰也...[p]
#
[stopse  time="1000"  buf="0"  ]
或许我们曾像这般对话。[p]
关于星辰，关于未来。[p]
[bg  storage="6-2.png"  time="1000"  ]
#mira
「你啊…其实根本记不清我吧？[p]
#
[stopse  time="1000"  buf="0"  ]
她咯咯直笑，分明在戏弄我。[p]
如此精准的吐槽令我心头一紧。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="11_5"  text="被发现了？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*11_5"  text="你怎么知道的？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*11_5
;//////////////////////////////
[bg  storage="6-6.png"  time="1000"  ]
#mira
「懂的懂的。毕竟…这副冷谈态度任谁都会如此。[p]
#
[stopse  time="1000"  buf="0"  ]
原来早被看穿了啊。[p]
或许该一开始就直说完全不记得了。[p]
我懊悔地移开视线，尴尬得手足无措。[p]
[bg  storage="6.png"  time="1000"  ]
#mira
「一点都…想不起来吗？当镇上的小鬼们喊着''外星人"欺负我时，可是你来解救我的。[p]
#
[stopse  time="1000"  buf="0"  ]
难以置信。真发生过这种事？[p]
虽不似谎言，但我不该是这般勇敢之人。[p]
一直逃避着、逃避着…持续逃个不停。因为总是背过脸去躲起来啊。[p]
『窝囊废』这个词还真是适合我。这或许不仅是在说过去…现在也是。[p]
[bg  storage="6-3.png"  time="1000"  ]
#mira
「你这家伙很弱啊。被小屁孩们揍得落花流水呢。明明主动去帮忙，结果反过来被干掉。我当时就想这家伙真是傻透了。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈开朗却带着些许寂寞，咬紧牙关编织着话语。[p]
她更适合元气满满的笑脸。会认为她这么严肃说话不太搭调…这样的我是不是很蠢呢。[p]
[bg  storage="6-6.png"  time="1000"  ]
#mira
「不过即便如此…我当时还是很开心啊。那时候，你的背影显得比任何人都伟岸…[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*12"  text="我只是个没用的人罢了･･･"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*12"  text="我可不是那种会让人憧憬的人"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*12
;//////////////////////////////
从小时候开始就这样了。连鼓起微小的勇气都很困难，是个在人前露面两个膝盖就会立刻打颤的胆小鬼。[p]
所以才会被父母彻底嫌弃了啊。不被爱的人，怎么可能去爱别人呢。[p]
#mira
「没那回事哦。…我一直，都在追逐着那个背影。想着自己也要变得同样强大。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
流淌而过的是短暂的沉默。[p]
[bg  storage="6.png"  time="1000"  ]
#mira
「喂，要拯救这颗星球吗…？[p]
#
[stopse  time="1000"  buf="0"  ]
啪的一声，她在昏暗的空中抛出一颗光球。[p]
它在空中弹跳着，反复折射后抵达我所在的位置。[p]
就像是把隐秘的小愿望抛向神明那样。[p]
我只是目送着那颗愿望轻轻落在地面。既不去接住，更不愿拾取。[p]
[bg  storage="6-4.png"  time="1000"  ]
#mira
「说过这世界像是万华镜什么的…那家伙，这样讲过对吧。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈忽然轻声低语，仿佛记起了什么。[p]
#mira
「关于这点嘛，或许那家伙也没完全说错。[p]
[bg  storage="6-6.png"  time="1000"  ]
#mira
「假如有个想去的终点，却不知道通往那里的道路，就会迷路吧？搞不好永远都到不了。反过来，要是知道道路的话，走最短路线就能抵达目的地了。[p]
[bg  storage="6.png"  time="1000"  ]
#mira
「虽然难以置信，但那家伙…是知道让地球迎来被拯救结局的世界运转方式的。[p]
#mira
「这种事普通人类怎么可能懂啊？那家伙到底是什么来头？真是外星人吗？感觉怎么都很可疑啊。[p]
[bg  storage="6-5.png"  time="1000"  ]
#mira
「…暂时先照那家伙说的做如何？验证下他的话是否真实。中途要是发现不对劲，随时开溜不就好了？[p]
#mira
「等到那时候再做判断，应该也不迟吧？不行么？[p]
#mira
「我想要弄清楚那家伙的真实身份。还有…他到底想让你做什么。[p]
[bg  storage="6-6.png"  time="1000"  ]
#mira
「不会让你独自面对的啦。我……奉陪到底哦。[p]
#
[stopse  time="1000"  buf="0"  ]
这句话还有后续。[p]
救我时的你绝对没问题。…是打算这么接下去说吧？[p]
你就这样独自拥抱着连我都不记得的那个勇敢的自己。[p]
我的过去…以及现在的我…你都愿意去相信。[p]
但是如今的我…[p]
;背景変更
[bg  storage="kuro.png"  time="1000"  ]
;メメの死フラッシュバック
是个失败者。[p]
拼命想逃离周遭的目光。此刻也浑身浸泡在不幸中，期盼着灭亡。[p]
被无法直视的现实所逼迫，移开视线的懦夫。命运开的玩笑…[p]
既无法创造价值，也没有存在的意义，只会不断作茧自缚的充满劣等感的废物。[p]
;メメの死フラッシュバックおわり
;背景変更
[bg  storage="6.png"  time="1000"  ]
…可是。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*13"  text="和米菈一起的话………"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="1_2sho.ks"  size="17"  target="*13"  text="和你一起的话，说不定会顺利一些。"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*13
;//////////////////////////////
[bg  storage="6-3.png"  time="1000"  ]
#mira
「谢啦，真守。[p]
#
[stopse  time="1000"  buf="0"  ]
她有些害羞地笑了。[p]
[bg  storage="6-2.png"  time="1000"  ]
#mira
「我们现在可算是命运共同体啦。就算地狱尽头…我也会陪你闯过去。[p]
#
看到少女露出与平日不符的腼腆神情，我心中泛起莫名的涟漪。[p]
我啊...认识你。[p]
[stopse  time="1000"  buf="0"  ]
;////////////////////////////////////////////アイキャッチ
;ウインドウ消去
@layopt layer=message0 visible=false
;メニュー非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]
;//////////////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="ic.png"  time="1000"  ]

;/////////////////////////////////////////////////

;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;ウエイト
[wait time="3000"]
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]

;/////////////////////////////////////////////////
;背景変更
[bg  storage="7.png"  time="1000"  ]
[cg storage="7.png"]

[layermode_movie  mode="screen"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="hosi_VP8.webm"  ]

;BGM流し
[playbgm  time="1000"  loop="true"  storage="stella_off.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ

;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="57"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
;6.翌朝、決意を決めるマナコ。星の海　UFOの墜落現場にひとりのイデア
覆盖苍穹的星之海洋。[p]
站在家门前等候的，竟是那个女孩。[p]
藏青长发随风飘扬，雪白裙裾轻轻翻飞。[p]
#idea
「...真守大人。[p]
#
[stopse  time="1000"  buf="0"  ]
不待我回应，她仿佛知晓一切般，径直向我投来目光。[p]
[bg  storage="7-3.png"  time="1000"  ]
#idea
「看来您已做好觉悟，接受成为救世主的宿命。[p]
#
[stopse  time="1000"  buf="0"  ]
未及应答，伊迪雅轻执我的手莞尔一笑。[p]
[bg  storage="7-2.png"  time="1000"  ]
#idea
「来吧，与我共睹这未来...[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
她早已预见了所有。[p]
就连我终将接受救世主宿命之事。[p]
未来就像掌中纹路般清晰可见，方能如此从容自若。[p]
坚信我定能拯救地球。[p]
纵然前途未卜，心间萦绕不安，但若跟随她定能扭转乾坤...就连这样的想法都油然而生。[p]
虽然姗姗来迟...但，这便是我们征程的开端。[p]
赌上星辰命运的战斗物语。[p]
开创未来的传奇物语。[p]

;ムービー消し
[free_layermode  ]
[vostop]

;次の章へ飛ぶ
[jump  storage="3sho.ks"  target="*first"  ]

;体験版に飛ぶ
;[jump  storage="1_2sho.ks"  target="*trial"  ]

[s]
;//////////////////////////////////////
;//////////////////////////////////////
;//////////////////////////////////////


;////////////////////////////////////////////体験版
*trial
;退場
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="3000"  method="crossfade"  storage="bg.png"  ]

体验版到此结束！[r]
感谢您的游玩！[p]

@layopt layer=message0 visible=false

;非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]

;BGM消し
[stopbgm  time="2000"  fadeout="true"  ]
;ウエイト
[wait time="3000"]
;タイトルへ
[jump  storage="first.ks"  target="*first"  ]

[s]
;////////////////////////////////////////////体験版
