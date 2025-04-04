*first
;CG開放
;[cg storage="t1.png"]

[cm  ]
[clearfix]
[start_keyconfig]

;/////////////////////////////////////////////////
;/////////////////////////////////////////////////
;/////////////////////////////////////////////////初期設定ここから

;メニューボタンの表示
@showmenubutton

;背景表示
[bg  storage="kuro.png"  time="1000"  ]

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
[bg  storage="ct0.png"  time="1000"  ]

;/////////////////////////////////////////////////
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu2_VP8.webm"  ]

;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;ウエイト
[wait time="3000"]
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[free_layermode  ]

;/////////////////////////////////////////////////
;背景変更
[bg  storage="bg4.png"  time="1000"  ]
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu_VP8.webm"  ]

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

[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
[voconfig sebuf="0" name="tukimi" vostorage="tukimi/{number}.ogg"  number="80"]
[voconfig sebuf="0" name="riko" vostorage="riko/{number}.ogg"  number="122"]
[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="122"]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="247"]
[voconfig sebuf="0" name="mahori" vostorage="mahori/{number}.ogg"  number="92"]
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="129"]

[voconfig sebuf="0" name="enze" vostorage="enze/{number}.ogg"  number="18"]
[voconfig sebuf="0" name="demo" vostorage="demo/{number}.ogg"  number="1"]
[voconfig sebuf="0" name="kaguya" vostorage="kaguya/{number}.ogg"  number="28"]


; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

;/////////////////////////////////////////////////
;万華鏡ステラ/EP7
;■EP7　運命の選択編「さらば美しきこの星よ」
;////////////////////////////////////////////

;/////////////////////////////////////////
;みんなが呼びかけてくる悪夢　最後の夢
#tukimi
「在漆黑的梦境中，你究竟在祈求什么？[p]
#
[stopse  time="1000"  buf="0"  ]
究竟...连我自己也不明白。这到底是真的自己，还是虚假的躯壳。[p]
我的意识逐渐溶解，流淌向深邃的宇宙。[p]
一切都变得无从知晓。一切都无关紧要了。[p]
#kaguya
「你所渴望的...是代价。想要斩断这条诡异的锁链。[p]
#
[stopse  time="1000"  buf="0"  ]
是啊。快告诉我...现在就能让我消失的方法。[p]
能永远摆脱这份煎熬的方法。想要扑灭这持续灼烧、隐隐作痛的伤痕。[p]
若我已不再是我...[p]
#demo
「你究竟是为何而活？[p]
#
[stopse  time="1000"  buf="0"  ]
不知道...现在的我，化作浩瀚宇宙的一分子了。[p]
或许...最初就该保持这样的形态才好。[p]
那样的话，或许就不会陷入这些无谓的苦恼中了。[p]
#enze
「尽管所有人都知道终有一天会迎来终结。[p]
#
[stopse  time="1000"  buf="0"  ]
既然如此，为何哀伤仍会漫上心头？[p]
从银河的尺度望去，我的吐息不过瞬息片刻...[p]
却对每件欢喜伤悲都郑重其事，随之心绪起伏。简直愚不可及...[p]
#riko
「反正注定无法实现。再怎么努力都是徒劳。[p]
#
[stopse  time="1000"  buf="0"  ]
...或许吧。也许真的是这样。[p]
但即便如此仍不愿放弃...想要拼尽全力试试看，难道是错误的吗？[p]
即便明知不可能，即便希望近乎虚无...[p]
自从与她相遇，我变了。就算是徒劳挣扎，也许还能做些什么...开始不愿在终结后徒留懊悔。[p]
#meme
「所谓情感，究竟是什么？为何存在于此？[p]
#
[stopse  time="1000"  buf="0"  ]
这正是我最渴求解开的疑问。[p]
谁能告诉我...维持自我存在的必要性...[p]
我们或许本就是这个黑洞的组成部分，产生意识本身就是种愚蠢。[p]
即便在有限时间内竭尽全力生活，最终也可能一无所留。[p]
毕竟终将消逝殆尽。[p]
#mira
「为何要装作视而不见？明明真相早该了然于心。[p]
#
[stopse  time="1000"  buf="0"  ]
不对。我并非故意视若无睹。[p]
只是...我一直一无所知。从未察觉真相！[p]
毕竟，根本没人告诉我这些啊...[p]
当我步入歧途时，为何无人阻止！[p]
#mahori
「正义对立面亦有可能是另一派的正义。人类不过是各自坚信己方正义而战。[p]
#
[stopse  time="1000"  buf="0"  ]
我却...什么都看不清。唯有坚信自己所作即为正确。[p]
像个盲者般固执前行。只要贯彻自认正确之事，我即是正义。[p]
任谁都休想指手画脚...就让我将正义贯彻到底，在那尽头...[p]
#idea
「其实该通向何方...你应该心知肚明吧？[p]
#
[stopse  time="1000"  buf="0"  ]
啰嗦！[p]
就不能...让我独自静一静吗...[p]
#idea
「注定抵达的未来...皆是殊途同归，归于『虚无』。[p]
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
[free_layermode  ]

;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="ic7.png"  time="1000"  ]

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
[bg  storage="bg5.png"  time="1000"  ]

;BGM流し
[playbgm  time="1000"  loop="true"  storage="two_magnetic.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ

[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="232"]
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="131"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

;/////////////////////////////////////////
;最後の朝　あいさつ　プラネタリウム
终末的黎明，寂静无声。[p]
从德墨尼克教追兵手中逃脱的我们，藏身于天文馆废墟中度过此夜。[p]
若要拯救地球，只剩最后一步。若能达成这个目标，我们就能...[p]
;変更
[chara_mod  name="mira" face="_2-4"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「哟，真守。感觉如何？[p]
[chara_mod  name="mira" face="_1-3"]
#mira
「今日便是决战之时。打起精神来。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈试图缓解我的紧张，如往常般对我展露笑容。能感受到她体贴的心意...[p]
这家伙啊，比起我这男生更显男子气概...温柔却勇敢...虽然偶尔有些粗神经。[p]
意外地也有细腻之处...不禁感慨人果然不可貌相。[p]
这一周因为有了她的陪伴才坚持到现在。她总是帮助我、支持我。真的很感谢。[p]
话说回来，我最后到底该怎么做？看来只能问伊迪雅了。[p]
;変更
[chara_mod  name="idea" face="_1-3"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「早安，真守大人。[p]
#
[stopse  time="1000"  buf="0"  ]
天文馆的门突然打开，伊迪雅出现了。[p]
[chara_mod  name="mira" face="_1-8"]
#mira
「哦...你是怎么找到这里的？[p]
[chara_mod  name="idea" face="_1-5"]
#idea
「因为这里是实现最终目标的场所。[p]
[chara_mod  name="mira" face="_2-6"]
#mira
「什么？在这破地方要做什么？[p]
[chara_mod  name="idea" face="_2-2"]
#idea
「恢复这个设施的电源...仅此而已。[p]
[chara_mod  name="mira" face="_1-7"]
#mira
「恢复...这个还能用？都废弃好几年了吧。[p]
[chara_mod  name="idea" face="_2-3"]
#idea
「是的，可以。只是多年未使用而已。只要把这个断路器打开就好。[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="45.png"  time="1000"  ]
伊迪雅指向的面板上有个巨大的操纵杆。[p]
[bg  storage="45-2.png"  time="1000"  ]
我轻轻将手搭在操纵杆上。[p]
粗糙厚重的钢铁触感。冰冷的金属温度...[p]
想到这是最后的钥匙，紧张的加速了心跳。[p]
[bg  storage="45-3.png"  time="1000"  ]
#idea
「来吧真守大人。这场长达一周的旅程终于要在此刻画下句号了。做好心理准备了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="7sho.ks"  size="17"  target="*1"  text="是啊……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="7sho.ks"  size="17"  target="*1"  text="终于，要结束了……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*1
;//////////////////////////////
[bg  storage="45-4.png"  time="1000"  ]
#idea
「您辛苦了。您将作为地球的救世主受到全世界的赞扬。会成为英雄呢。[p]
#
[stopse  time="1000"  buf="0"  ]
[bg  storage="bg.png"  time="1000"  ]
;選択のとき　ミラの裏切り　説教される
我闭上眼睛，深呼吸。[p]
做最后的决断。拯救地球。[p]
真的...这样就全部结束了。大家都能得救。[p]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  storage="45-5.png"  time="1000"  ]
当我睁开眼睛时，难以置信的景象冲击着视觉神经。[p]
米菈将匕首抵在伊迪雅的脖子上。[p]
[playbgm  time="1000"  loop="true"  storage="dark_nebla.ogg"  ]
;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="248"]
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="137"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
[cg storage="45.png"]
#idea
「米菈大人...您这是什么意思？[p]
[bg  storage="45-6.png"  time="1000"  ]
#mira
「看不出来？要挟人质让你家真守方寸大乱啊。[p]
#idea
「很遗憾，这种程度的小事是不可能动摇真守大人的。[p]
[bg  storage="45-7.png"  time="1000"  ]
#mira
「是吗？地球要是被拯救的话我可是会很困扰呐！[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="7sho.ks"  size="17"  target="*2"  text="米菈……为什么……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="7sho.ks"  size="17"  target="*2"  text="这是什么……意思？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*2
;//////////////////////////////
[bg  storage="45-8.png"  time="1000"  ]
#mira
「好好想想吧真守！要是强行改变本该灭亡地球的命运，那份因果最终要由谁来承担！[p]
[bg  storage="45-7.png"  time="1000"  ]
#mira
「不明白吧...那就告诉你！要是你拉动这个杆子，现在飞向地球的陨石会...[p]
[bg  storage="45-5.png"  time="1000"  ]
#mira
「...坠落在火星上。地球的替代品，将会是火星灭亡啊。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="7sho.ks"  size="17"  target="*3"  text="骗、骗人的吧……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="7sho.ks"  size="17"  target="*3"  text="这怎么可能……！"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*3
;//////////////////////////////
怀着难以置信的心情我慌乱地望向伊迪雅。[p]
[bg  storage="45-9.png"  time="1000"  ]
#idea
「正如所说。陨石轨道将偏移，朝火星而去。[p]
#
[stopse  time="1000"  buf="0"  ]
伊迪雅既不否认，只是机械地点头陈述事实。[p]
[bg  storage="45-11.png"  time="1000"  ]
#mira
「啊哈。这家伙明知如此却还高喊什么拯救地球当救世主。[p]
[bg  storage="45-9.png"  time="1000"  ]
#idea
「...为救地球可以不惜任何牺牲。这都是为了全宇宙的福祉。[p]
#idea
「相比地球，火星生命数量极少。灭亡的火星在数亿年后会重生为崭新星球。即使火星陨灭，对宇宙而言无伤大雅。[p]
[bg  storage="45-7.png"  time="1000"  ]
#mira
「原来是这么回事。现在居住在火星上的生命就只能见死不救是吧。因为地球生命更多，所以火星那点微不足道的牺牲就『无可奈何』了么。终于明白你的企图了...[p]
#idea
「也就是说，作为火星人的你假装配合我们？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="7sho.ks"  size="17"  target="*4"  text="火星人･･･？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="7sho.ks"  size="17"  target="*4"  text="外星人，应该是理论上的存在才对……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*4
;//////////////////////////////
[bg  storage="45-11.png"  time="1000"  ]
#mira
「错了。那个UFO，可是老子坐过来的。[p]
#
[stopse  time="1000"  buf="0"  ]
哎...？[p]
[bg  storage="45-5.png"  time="1000"  ]
#mira
「还不明白吗？[p]
[bg  storage="45-6.png"  time="1000"  ]
#mira
「没错，老子是外星人。从火星漂流过来的。[p]
[bg  storage="45-10.png"  time="1000"  ]
#mira
「为了阻止你们的计划，让地球按预定毁灭，一周前乘坐坠毁的UFO来到这个星球！[p]
[bg  storage="45-6.png"  time="1000"  ]
#mira
「你办得到吗？为了拯救地球，就要牺牲其他星球！只要自己没事就好吗！[p]
[bg  storage="45-9.png"  time="1000"  ]
#idea
「米菈大人，诉诸感情也是徒劳的。真守大人已经下定决心了。[p]
[bg  storage="45-7.png"  time="1000"  ]
#mira
「哼…！那就坚持到底吧。你那建立在牺牲之上的正义...你所谓的和平！[p]
[bg  storage="45-5.png"  time="1000"  ]
#mira
「至今为止，你也无数次践踏过别人的心意啊。[p]
[bg  storage="45-6.png"  time="1000"  ]
#mira
「这就是你哪怕夺取一个人的一生也想换来的未来吗？你是宁可牺牲火星也要拯救地球吗？[p]
[bg  storage="45-8.png"  time="1000"  ]
#mira
「赢不了我的，你绝对战胜不了我的意志。你没能杀掉任何人，而我却有这个觉悟…！[p]
#idea
「真守大人，请不要顾虑我快点…[p]
#mira
「来吧，真守！试着超越我的觉悟吧。[p]
[bg  storage="45-5.png"  time="1000"  ]
#mira
「我将赌上母星的命运与你战斗。你也该抱着将地球命运作为赌注的决心来对抗我！[p]
#
[stopse  time="1000"  buf="0"  ]
喀嚓一声将刀刃抵在伊迪雅脖颈处，在几乎要割断皮肤的危险距离骤然停手。[p]
面带可疑微笑的米菈，连一秒钟都不肯将视线从我身上移开。[p]
我的话･･･[p]

;選択　地球を救う/火星を救う

;///////////////////////////
;選択
;//////////////////////////////
;最後のせんたくし
[glink  color="red"  storage="7sho_happy.ks"  size="25"  target="*first"  text="拯救地球"  x="400"  y="560"  width=""  height=""  _clickable_img=""  ]
[glink  color="red"  storage="7sho_true.ks"  size="25"  target="*first"  text="拯救火星"  x="650"  y="560"  width=""  height=""  _clickable_img=""  ]
[s]
;//////////////////////////////
