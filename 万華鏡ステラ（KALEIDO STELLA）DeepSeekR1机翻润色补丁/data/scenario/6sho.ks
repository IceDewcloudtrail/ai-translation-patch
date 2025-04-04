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
[bg  storage="ct1.png"  time="1000"  ]

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
[bg  storage="37.png"  time="1000"  ]
[cg storage="37.png"]
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu2_VP8.webm"  ]

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

;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="enze" vostorage="enze/{number}.ogg"  number="1"]
[voconfig sebuf="0" name="demo" vostorage="demo/{number}.ogg"  number="1"]
[voconfig sebuf="0" name="hatenamahori" vostorage="mahori/{number}.ogg"  number="1"]
[voconfig sebuf="0" name="mahori" vostorage="mahori/{number}.ogg"  number="13"]

[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="117"]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="171"]
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="121"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
;/////////////////////////////////////////////////
;万華鏡ステラ/EP6
;■EP6　マホリ編「星を壊す破滅の願い」
;////////////////////////////////////////////
;デモニカ・エンゼのかけあい①　ニルハ的な感じで
镜中摇曳着一簇火焰。[p]
倒映其中的黑色影子，带着令人不快的微笑发问。[p]
#demo
「你究竟是为何而活？[p]
#
[stopse  time="1000"  buf="0"  ]
如同呢喃。如同歌唱。宛如要将我引诱至幽暗深渊的底部。[p]
#enze
「...[p]
#
[stopse  time="1000"  buf="0"  ]
凝视摇曳的火焰，心情逐渐平静。[p]
这就是所谓的1/f波动现象。通过视觉给予精神安定感的效果。[p]
[bg  storage="37-2.png"  time="1000"  ]
#demo
「为了什么···为了做些什么才诞生于世？[p]
#
[stopse  time="1000"  buf="0"  ]
影子仍在持续发问。趁我心智动摇未定之际，步步紧逼。[p]
死死盯着火焰，拼命运转大脑安定心绪。[p]
[bg  storage="37-3.png"  time="1000"  ]
#demo
「反正终将消逝。为何还要努力？[p]
#
[stopse  time="1000"  buf="0"  ]
刺痛心扉的诘问。这是你一直向我抛来的问题。[p]
直至生命尽头都未能解答的疑问。[p]
#enze
「那是···[p]
#
[stopse  time="1000"  buf="0"  ]
明明尚未想好如何回答，暧昧的措辞却脱口而出。[p]
大脑理当统御万象，却捕捉不到清晰的愿景。[p]
若当真付诸言语，话一出口···便会觉得不再属于自己。[p]
#demo
「回答不出吗？[p]
#
[stopse  time="1000"  buf="0"  ]
沉默后，镜中阴影泛起微不可察的笑意。[p]
若能将自己所思原封不动具象化，何须饱尝此般苦楚。[p]
还是不成。若只是将所思所想照本宣科···那就仍是昔日的自己。依旧无法传递分毫。[p]
#enze
「･･･不明白。但是好害怕···想到自己从这世上消失···真是毛骨悚然。[p]
#
[stopse  time="1000"  buf="0"  ]
哪怕语焉不详也无妨。哪怕无法改变什么。总好过什么都不做。[p]
现在，将心中所想传达出去。[p]
[bg  storage="37-4.png"  time="1000"  ]
#demo
「所以是怕死吗？因为死不掉才活在这里？[p]
#
[stopse  time="1000"  buf="0"  ]
平静的心境被搅乱。[p]
仿佛在无波无澜的湖面投下石块。[p]
#enze
「不对···不是的。我觉得···不是这样[p]
#
[stopse  time="1000"  buf="0"  ]
慌乱中察觉双手正在轻轻颤抖。[p]
立刻按住手腕制止战栗。[p]
[bg  storage="37-3.png"  time="1000"  ]
#demo
「凭什么如此断言。明明连生存意义都没搞清楚。[p]
#
[stopse  time="1000"  buf="0"  ]
果然自己仍是个暧昧的存在。[p]
只要这蜡烛微光熄灭，一切都将结束。[p]
[bg  storage="37-4.png"  time="1000"  ]
#demo
「那不如立刻死掉算了。终究是个无聊的世界。这副躯壳，还是早日舍弃为妙。[p]
#
[stopse  time="1000"  buf="0"  ]
极端来说，她说得没错。[p]
在万物都将回归虚无的世界里，不论做什么···本质都是毫无意义。[p]
若在这日常中找不出存在理由···[p]
#enze
「别再用这种蛊惑的说辞扰乱我···[p]
#
[stopse  time="1000"  buf="0"  ]
不愿想象明天就会消失。[p]
但事实就是这样。自己终将如此选择···[p]
#demo
「哎呀，为何抗拒？妾身不过是想让嫣洁活得更有趣些。[p]
#
[stopse  time="1000"  buf="0"  ]
找不到反驳的言辞和觉悟。再次确认自己只是个说不清存在理由的人偶。[p]
#enze
「妾身···[p]
#
[stopse  time="1000"  buf="0"  ]
欲言又止。[p]
自己不过是把问题不断推延，一味逃避。[p]
对连迎接明日都没准备好的自己说谎···[p]
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
[bg  storage="ic6.png"  time="1000"  ]

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
[bg  storage="bg3.png"  time="1000"  ]
[layermode_movie  mode="screen"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="hosi_VP8.webm"  ]

;BGM流し
[playbgm  time="1000"  loop="true"  storage="redstar.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ
;/////////////////////////////////
;いじめを助ける
这么浑浑噩噩多久了呢。[p]
与父母不和，孤身一人，自怨自艾。[p]
怀着胸口灼痛的烙铁，消极度日。[p]
毫无自信，日复一日徘徊在人生路上。[p]
甚至觉得即便哪天消失也不会有人悲伤。[p]
越是想着必须更加认真，就越是事与愿违令人懊悔。只会更加痛苦[p]
没骨气･･･[p]
你想那么说就说吧[p]
爱与勇气什么的早就消失了。反正根本不会降临到我这里[p]
⋯⋯[p]
无意识地边走边想着事情，又再次徘徊绕远路[p]
反正就算直接回家，也什么好事都不会发生。理所当然[p]
改变心情，试着走走平时没走过的路[p]
无论是热闹的商店街、嘈杂喧嚣的工地现场、还是飘香的汉堡店[p]
「不要—，好可怕。快打倒他们！[p]
传来高亢的叫声[p]
「就是就是！反正你们就是打算杀了我们吧！[p]
在公园里，看到有女孩子被欺负[p]
头被石头砸得血流不止[p]
对孩子们来说打得也太过火了。但是由我来阻止的话･･･[p]
我又不是能拯救谁的人[p]
或许因为施暴方和受虐方都是我不认识的人。这里没有人认识那个愚蠢又窝囊的我[p]
如果我拿出勇气，就能改变吗。我...[p]
这样的话，能不能把至今为止所有的窝囊事全都一笔勾销？[p]
会有所改变吗？能够脱胎换骨吗？就像蜕皮那样，褪下黑色的茧...成为崭新的自己[p]
･･･做不到也没关系[p]
不知为何那时身体自己动了起来[p]
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
[bg  storage="bg.png"  time="1000"  ]
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

;////////////////////////////////////////
;2.過去編各キャラ過去エピソードとか
;マホリの同級生殺害事件。
有铁锈般的气味[p]
眼前有人倒下[p]
并不熟悉的人。虽然认识却不了解，讨厌的人[p]
血珠从我手中握着的剪刀上滴落，坠在地板上[p]
[bg  storage="36.png"  time="1000"  ]
[cg storage="36.png"]
#hatenamahori
「啊...哈[p]
#
[stopse  time="1000"  buf="0"  ]
嘶哑的声音从喉咙深处挤出[p]
想说什么已经记不得了[p]
[bg  storage="36-2.png"  time="1000"  ]
#hatenamahori
「呵呵，啊哈哈！啊哈哈哈哈！[p]
#
[stopse  time="1000"  buf="0"  ]
但是，解脱感[p]
这份感情绝非后悔[p]
一直压抑的东西正在喷涌而出[p]
这就是"快乐"吗？[p]
是吗，这原来就是我长久以来渴望的东西啊･･･[p]
发出尖叫逃跑的人群[p]
用惊恐的表情看着我･･･[p]
是的。现在的我是无敌的。绝不会输给任何人･･･[p]
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
[bg  storage="34.png"  time="1000"  ]
[cg storage="34.png"]

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

;3.接触編 
;---------------------------
;イデア曰く、教祖マホリの仕切る宗教を破壊してくださいとのこと。
;お宅訪問。入会希望者と間違えられる。ぜひ説明会へ。
#meme
「芽萌可是始终伴随哥哥左右喔。虽然可能隔着遥远距离，但就在触手可及之处。即使目不可及，也一定近在咫尺。[p]
#
[stopse  time="1000"  buf="0"  ]
啊，不行...又开始陷入这种情绪了[p]
还没能接受她的去世。是不愿相信吧[p]
明明感觉昨天还在一起[p]
结果其实什么都没发生过，这怎么可能[p]
感受到闭合的眼角有泪水缓缓滑落[p]
有人的指尖温柔地将它拭去[p]
⋯⋯[p]
[bg  storage="bg.png"  time="1000"  ]
;変更
[chara_mod  name="idea" face="default"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
被轻柔地抚摸着头[p]
仿佛被母亲包容万物、宽恕所有的温暖所笼罩[p]
那是曾经拥有过的东西。就像很久很久以前母亲曾为我做的那样[p]
已经多少年没感受过了呢。体会到这种心情...[p]
有人在身边握住我的手。这种深刻的安心感[p]
允许我存在...我可以停留在这里[p]
微微睁开眼睑[p]
[chara_mod  name="idea" face="1-3"]
伊迪雅･･･[p]
为什么非得被你搅乱心绪不可[p]
我一直都在怀疑你，根本没有相信过你[p]
为什么非得被你鼓励不可[p]
为什么，为什么，为什么･･･[p]
这样胡思乱想着，最终我渐渐沉入了梦乡[p]
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
[bg  storage="bg20.png"  time="1000"  ]
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
;次の日
被伊迪雅带着，米菈和我坐在咖啡店的包厢座位[p]
店员很快过来，我们点了饮料。[p]
伊迪雅点了蜜桃红茶，米菈要了苹果汁和蛋糕卷。我则点了咖啡提神。[p]
;変更
[chara_mod  name="mira" face="_1-8"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「真守竟然能喝咖啡！好成熟啊～。[p]
[chara_mod  name="mira" face="_2-5"]
#mira
「我的话不放牛奶和十杯砂糖根本喝不下去。[p]
#
[stopse  time="1000"  buf="0"  ]
不，那绝对是加太多了。糖分超标啦。[p]
米菈该不会只是单纯喜欢吃甜食吧･･･？果然她马上开始往刚送来的蛋糕上狂撒可可粉。[p]
[chara_mod  name="mira" face="_1-4"]
#mira
「对对！就是要这样才过瘾。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈欢闹的样子让人不忍直视。蛋糕已被五彩缤纷的可可粉彻底覆盖，完全看不出原型。[p]
这样下去根本尝不出原本的味道，只有可可粉的味道了吧。莫名替做蛋糕的人感到可怜･･･[p]
;変更
[chara_mod  name="idea" face="_1-1"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「甜蜜的果香･･･原来如此。这就是现代的茶饮啊。[p]
#
[stopse  time="1000"  buf="0"  ]
她轻啜着蜜桃红茶，略显欣喜地呢喃道。[p]
这位究竟是外星人、原始人还是古代人･･･对伊迪雅的成长背景至今仍一无所知。[p]
即使她穿着这种奇装异服，大家也只当是玩角色扮演。依然充满谜团。[p]
[chara_mod  name="mira" face="_1-9"]
#mira
「你这家伙口味真独特。红茶不就是闻个香味嘛。[p]
[chara_mod  name="idea" face="_1-4"]
#idea
「淡淡的甘甜恰到好处刺激鼻腔。即使不加糖也有醇厚的风味。[p]
[chara_mod  name="mira" face="_1-10"]
#mira
「是吗？我还是觉得咖啡牛奶更棒啦。[p]
#
[stopse  time="1000"  buf="0"  ]
听着两人无心的闲聊，[p]
距离任务和暑假结束还剩两天这件事突然涌上心头，这时才想起暑假作业还一个字都没写。[p]
糟了･･･这样下去真的要在虚度中结束假期了。[p]
甚至觉得世界就此毁灭说不定更好。[p]
就在我胡思乱想时，米菈吃完了蛋糕。[p]
[chara_mod  name="idea" face="_1-2"]
#idea
「好了，真守大人･･･[p]
#
[stopse  time="1000"  buf="0"  ]
被伊迪雅凝视着，我不禁咽了咽口水。[p]
她轻轻放下茶杯，平静地开口：[p]
[chara_mod  name="idea" face="_2-2"]
#idea
「请看那位女士。[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="38.png"  time="1000"  ]
[cg storage="38.png"]
顺着她指的方向望去——[p]
穿着黑衣的娇小少女正独自享用巨型芭菲。[p]
#mira
「哇！厉害！我都没见过那种芭菲！呐真守，我能再点一个吗？！[p]
#
[stopse  time="1000"  buf="0"  ]
这种时候还能这么乐，而且明明刚吃完撒满可可粉的蛋糕卷耶･･･[p]
#idea
「今天的目的是『破坏她的宗教』。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
破坏，宗教･･･[p]
她说得这么轻巧･･･但这种事我真的能做到吗？[p]
背脊发凉，仿佛前方有什么糟糕的事在等待･･･[p]
首先那完全是个陌生人，也不清楚她加入的宗教。和璃光那时一样处于绝对不利的境地。[p]
如果是规模很小、只是冠以『宗教』之名的团体该多好･･･只能这样祈祷了。求求你别这么难搞･･･[p]
但从伊迪雅严肃的表情中，丝毫感觉不到这次事件会很轻松的迹象。[p]
#mira
「･･･宗教啊。居然要干涉最棘手的领域，我有不祥的预感。[p]
#
[stopse  time="1000"  buf="0"  ]
先前嬉皮笑脸的米菈此时也换上了认真表情。[p]
听到宗教这个词后，大家都不由自主地紧张起来了吧。[p]
是的･･･我也一样。[p]
前方究竟有怎样的试炼在等待呢･･･[p]
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
[bg  storage="bg17.png"  time="1000"  ]
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
;-----------------------
;変更
[chara_mod  name="idea" face="_2-4"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
;変更
[chara_mod  name="mira" face="_1-1"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#
[stopse  time="1000"  buf="0"  ]
先走出店铺，三人躲在暗处埋伏。这里应该比较容易开始跟踪。[p]
接下来就等她出店时看准时机･･･[p]
#idea
「我只能帮到这里了。[p]
#
[stopse  time="1000"  buf="0"  ]
这样说着准备离开的伊迪雅。[p]
她又要袖手旁观啊。也没给出什么重要提示。正当我垂头丧气时――[p]
[chara_mod  name="idea" face="_2-2"]
#idea
「･･･啊对了，忘记说重要的事了。[p]
#
[stopse  time="1000"  buf="0"  ]
她像是突然想起什么似的转向我们。[p]
[chara_mod  name="idea" face="_1-2"]
#idea
「不需要在意手段。只要能让宗教毁灭就行，要让他们无法东山再起。[p]
[chara_mod  name="mira" face="_1-5"]
#mira
「交给我吧，看老子把他们都揍飞！[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
米菈那句「交给我」･･･真是让人忐忑不安。[p]
但是说不择手段･･･这种说法听起来有点不妙啊。[p]
这么说着的功夫，那个女孩子已经准备出店了。[p]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="182"]
[chara_mod  name="mira" face="_2-7"]
#mira
「･･･跟上，真守。[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="bg17.png"  time="1000"  ]
和米菈两人跟踪那个黑衣女孩。[p]
拼命隐藏气息避免被发现。[p]
米菈熟练地在阴影中穿梭。･･･真是的，这种时候突然变得很可靠反而让人不安啊。[p]
;変更
[chara_mod  name="mira" face="2-1"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「･･･你妹妹后来怎么样了？[p]
#
[stopse  time="1000"  buf="0"  ]
追赶时她突然开口。[p]
⋯⋯[p]
妹妹･･･你记得啊･･･？[p]
[chara_mod  name="mira" face="2-6"]
#mira
「･･･消失了吗。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈垂着眼帘对我说。[p]
[chara_mod  name="mira" face="1-6"]
#mira
「那天在UFO坠落现场见到你时就感觉不对劲了。[p]
[chara_mod  name="mira" face="1-9"]
#mira
「･･･抱歉一直瞒着你。[p]
#
[stopse  time="1000"  buf="0"  ]
･･･这样啊。[p]
原来她早就知道一切，一直在配合我演戏吗。[p]
[chara_mod  name="mira" face="2-6"]
#mira
「至今都没能接受吧？[p]
[chara_mod  name="mira" face="1-7"]
#mira
「痛苦啊悲伤啊全都强行压抑在心里･･･快要崩坏了对吧？[p]
[chara_mod  name="mira" face="1-6"]
#mira
「当时除了这么做･･･已经别无选择了啊。[p]
#
[stopse  time="1000"  buf="0"  ]
说得没错。那时的我临近崩溃･･･所以逃避了现实。[p]
[chara_mod  name="mira" face="default"]
#mira
「但我觉得那样也不错，所以就什么也没问。[p]
[chara_mod  name="mira" face="1-6"]
#mira
「说着等到能坦然接受的那天自然就会说出口。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se1"  text="我，应该怎么说……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se1"  text="谢谢……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se1
;//////////////////////////////
[chara_mod  name="mira" face="1-10"]　
#mira
「哈哈哈！严肃个什么劲儿啊！我们是朋友吧！别在意那些啦！[p]
#
[stopse  time="1000"  buf="0"  ]
结束沉重话题后，我们重新振作继续跟踪。[p]
[chara_mod  name="mira" face="2-7"]
#mira
「挺会藏尾巴的啊这家伙･･･[p]
#
[stopse  time="1000"  buf="0"  ]
[bg  storage="bg10.png"  time="1000"  ]
等她转过拐角我们稍作停留后继续跟上。[p]
但转过弯就跟丢了她的踪影。[p]
奇怪。去哪里了？这条路上不应该有小巷才对･･･难道。[p]
[chara_mod  name="mira" face="_1-7"]
#mira
「･･･可恶，跟丟了？！[p]
#hatenamahori
「下午好呀。[p]
#
[stopse  time="1000"  buf="0"  ]
身后传来陌生的声音。[p]
;変更
[chara_mod  name="mahori" face="_1-2"]
;立ち絵表示
[chara_show  name="mahori"  time="1000"  wait="true" reflect="false"  ]
[chara_mod  name="mira" face="_1-8"]
#mira
「･･･！[p]
#
[stopse  time="1000"  buf="0"  ]
刚才的女孩正盯着我们露出可疑微笑。[p]
[chara_mod  name="mahori" face="_1-5"]
#hatenamahori
「不用鬼鬼祟祟跟着我也不会逃跑的哦。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*sentaku"  text="为、为什么你会……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*sentaku"  text="什･･･！？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*sentaku
;//////////////////////////////
[chara_mod  name="mahori" face="_1-8"]
#hatenamahori
「哎呀･･･刚刚开始就一直像小老鼠一样跟着人家对吧？[p]
#
[stopse  time="1000"  buf="0"  ]
什么啊，还以为没被发现呢。[p]
看来她早就识破了。现在该怎么办･･･[p]
[chara_mod  name="mira" face="_2-7"]
#mira
「切，被发现了也没办法。赶紧交待你加入的邪教组织！[p]
#
[stopse  time="1000"  buf="0"  ]
喂这样刺激她干什么？[p]
[chara_mod  name="mahori" face="_2-4"]
#hatenamahori
「噗嗤，说话真有趣。莫非你们也是想入教的？[p]
#
[stopse  time="1000"  buf="0"  ]
意外地宽容･･･得救了。[p]
而且还产生了便利的误会。说不定这个女孩是个好人呢？[p]　
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se2"  text="就、就是这样的……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se2"  text="有点感兴趣……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se2
;//////////////////////////////
姑且为了调查先扯个谎。[p]
至少现在要假装是这样。[p]
[chara_mod  name="mira" face="_2-6"]
#mira
「喂喂真守･･･！[p]
[chara_mod  name="mahori" face="_2-3"]
#hatenamahori
「我就知道是这样。最近感兴趣的人特别多呢･･･嗯，这是好现象。[p]
#
[stopse  time="1000"  buf="0"  ]
她看着点头的我，将目光转移到米菈身上。[p]
[chara_mod  name="mira" face="_1-8"]
#mira
「･･･我、我可不一样啊。[p]
[chara_mod  name="mahori" face="_2-4"]
#hatenamahori
「今天傍晚起有说明会。如果方便的话⋯⋯你们要不要也参加看看呢？[p]
#
[stopse  time="1000"  buf="0"  ]
说着，女子从包里取出纯黑色的纸张递了过来。[p]
那张纸上用大字写着『德墨涅珈教』，还画着恶魔般的插图。[p]
[chara_mod  name="mahori" face="_1-3"]
#hatenamahori
「那位女士的话，想必也一定会感兴趣的⋯⋯[p]
#
[stopse  time="1000"  buf="0"  ]
她朝米菈的方向瞥了一眼，诡秘地笑了笑。[p]
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
[bg  storage="bg21.png"  time="1000"  ]
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
;4.解決編 選択肢BAD分岐
在黑衣少女的引导下，我们决定参加这场宗教说明会。[p]
来到会场，立刻被满面笑容的工作人员迎接。[p]
#教団員
「欢迎莅临。来，这边请！[p]
#
被引领到的大厅里排列着折叠椅，参会者似乎正在依次入座。[p]
除了我们之外，已有数人提前落座。[p]
他们是真的对这个宗教感兴趣才来的吧。[p]
记得我家应该是无宗教信仰的。其实我根本不清楚『宗教』到底是什么。[p]
说白了，大概就是「花钱换取幸福」之类的吧⋯⋯[p]
不不，能用钱买幸福的话我就不会这么辛苦了。[p]
;変更
[chara_mod  name="mira" face="2-7"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「喂，真守。看看那幅画⋯⋯[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="39.png"  time="1000"  ]
[cg storage="39.png"]
顺着米菈所指方向望去，那里供奉着一幅巨大的肖像画。[p]
画中是紫色长发⋯⋯虽然美丽却如恶魔般的女性。[p]
#hatenamahori
「这幅画上描绘的，是伟大的德墨涅珈大人。正是我们所崇拜的大恶魔之神。[p]
[bg  storage="bg21.png"  time="1000"  ]
;変更
[chara_mod  name="mahori" face="_1-3"]
;立ち絵表示
[chara_show  name="mahori"  time="1000"  wait="true" reflect="false"  ]
;変更
[chara_mod  name="mira" face="_2-6"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「你该不会是刚才的⋯⋯！[p]
#hatenamahori
「欢迎莅临。方才那位⋯⋯果然还是来了啊。真是荣幸，非常感谢。[p]
#
[stopse  time="1000"  buf="0"  ]
我微微颔首致意。[p]
#教団員
「真法理大人，演说准备就绪了。[p]
#
[chara_mod  name="mahori" face="_1-4"]
#hatenamahori
「谢谢。我马上就开始⋯⋯[p]
#
[stopse  time="1000"  buf="0"  ]
真法理"大人"⋯⋯？[p]
来自年长工作人员的敬语，甚至还加上了尊称。[p]
看来她在这个宗教团体中的地位非同一般啊。[p]
[chara_mod  name="mira" face="_1-8"]
#mira
「大人？搞什么啊，这家伙地位这么高？[p]
#
[stopse  time="1000"  buf="0"  ]
米菈立刻将心中所想脱口而出。[p]
[chara_mod  name="mahori" face="_1-1"]
#mahori
「啊。还没有自我介绍呢。正是⋯⋯我就是这个教团的教祖，名叫姫路真法理。[p]
[chara_mod  name="mira" face="_1-7"]
#mira
「这、这家伙是教祖？！可是这么年轻⋯⋯和我们也没差多少岁吧？[p]
#
[stopse  time="1000"  buf="0"  ]
令人震惊的事实冲击着我与米菈。[p]
#教団員
「而且真法理大人，正是大恶魔德墨涅珈大人的转世。[p]
#
年长的工作人员带着由衷崇拜的神情解释道。[p]
[chara_mod  name="mira" face="_1-5"]
#mira
「哈哈哈哈哈！⋯⋯⋯⋯呃，这绝对是开玩笑吧⋯⋯？[p]
[chara_mod  name="mahori" face="_2-4"]
#mahori
「呵呵。惊讶也很正常⋯⋯说到底我还是学生之身嘛。[p]
#
[stopse  time="1000"  buf="0"  ]
#教団員
「尔等，在大恶魔陛下面前成何体统！保持肃静！[p]
#
对我俩的骚动，年轻工作人员怒目横眉地呵斥着真守与米菈。[p]
糟糕。似乎太过聒噪了⋯⋯本来不该引人注目的。[p]
[chara_mod  name="mira" face="_1-7"]
#mira
「切。吵死了⋯⋯[p]
#
[stopse  time="1000"  buf="0"  ]
「真法理大人，要怎么处置这些无礼之徒。需要驱逐出去吗？[p]
[chara_mod  name="mahori" face="_1-2"]
#mahori
「这两位是我的朋友。之后有话要说，等演说结束后，可以安排他们到会客室等候吗？[p]
#
[stopse  time="1000"  buf="0"  ]
#教団員
「⋯⋯遵命。[p]
#
;一人退場
[chara_hide name="mahori"]
虽不知她有何意图，但看来暂时获救了。[p]
但她这番好意可能要被辜负了⋯⋯毕竟我们的目的是摧毁这个宗教组织。[p]
对真法理大人虽有歉疚，但为达目标必须知己知彼。得屏息凝神避免暴露才行⋯⋯[p]
拜托你安分点吧，米菈小姐…要是你那份莽劲儿发作起来，可不会有什么好结果。[p]　
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se3"  text="安静点"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se3"  text="老实点、米菈"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se3
;//////////////////////////////
[chara_mod  name="mira" face="2-7"]
#mira
「这种静候时机的事啊…我实在不擅长。最烦干愣着不动了。[p]
#
[stopse  time="1000"  buf="0"  ]
脑海里开始浮现带这家伙来是不是错选的后悔念头。[p]
…啊。前途堪忧啊。[p]
全然不顾我的担忧，演说已经开始了。[p]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="40.png"  time="1000"  ]
[cg storage="40.png"]
真法理站上演讲台，欢呼声顿时四起。[p]
「谢谢大家！谢谢！」此起彼伏的感谢声从四面八方传来。[p]
信众们年龄层次虽广，但主要都是些崇拜她的年轻人。[p]
[bg  storage="40-2.png"  time="1000"  ]
#mahori
「地球现在毁灭不就好了？明天永远不要来临不就好了？那样的话…不就能从这痛苦中解脱了么？[p]
[bg  storage="40-5.png"  time="1000"  ]
#mahori
「这样想着的念头…难道诸位没有过吗？[p]
#
[stopse  time="1000"  buf="0"  ]
她平静的发言令人心头一颤。这不正是我平日里所祈愿的吗…[p]
甚至让我产生了内心被读透的错觉。[p]
…原来如此，所以她的宗教才能…牢牢抓住年轻人的心。像我们这些对未来绝望的年轻人。[p]
[bg  storage="40-4.png"  time="1000"  ]
#mahori
「没错。这种绝望之心，正是形成「德墨涅珈教」的根源…[p]
#
[stopse  time="1000"  buf="0"  ]
越听越觉得这教名危险得令人心惊。简直像是崇拜恶魔才起的名字。[p]
[bg  storage="40-3.png"  time="1000"  ]
#mahori
「我经营的宗教名为「德墨涅珈教』。敝姓姫路，名叫真法理。[p]
#mahori
「我们的职责是崇拜数千年前消逝的大恶魔，并在现世将其唤醒…降下末世毁灭。[p]
[bg  storage="40-4.png"  time="1000"  ]
#mahori
「恶魔大人一定会拯救我们的。来吧，您现在就该立即入教…[p]
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
[bg  storage="bg22.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="two_magnetic.ogg"]
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
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="206"]
[voconfig sebuf="0" name="mahori" vostorage="mahori/{number}.ogg"  number="22"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
;変更
[chara_mod  name="mira" face="_1-1"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
演讲结束后被带入会客室的我们正等待着真法理的到来。[p]
被几名工作人员围绕着，周遭流淌着令人不适的沉默。[p]
;変更
[chara_mod  name="mahori" face="_1-2"]
;立ち絵表示
[chara_show  name="mahori"  time="1000"  wait="true" reflect="false"  ]
片刻后真法理仪态沉稳地步入房间。[p]
她一个眼神示意，工作人员立刻鱼贯而出。[p]
[chara_mod  name="mahori" face="_1-3"]
#mahori
「让诸位久等了。那个…[p]
[chara_mod  name="mira" face="_1-9"]
#mira
「我是米菈。旁边这位是真守。[p]
[chara_mod  name="mahori" face="_1-4"]
#mahori
「米菈小姐，真守先生…今日能莅临德墨涅珈教说明会，实在感激不尽。[p]
[chara_mod  name="mahori" face="_1-5"]
#mahori
「再次自我介绍，我是姫路真法理。担任本教团的教主一职。[p]
[chara_mod  name="mira" face="_1-6"]
#mira
「你这丫头，搞这种邪门宗教不嫌恶心吗？[p]
[chara_mod  name="mahori" face="_1-6"]
#mahori
「恶心…何出此言呢？[p]
#mira
「肯定是背后被人逼着干的吧？明明还是个学生。[p]
[chara_mod  name="mahori" face="_2-4"]
#mahori
「哎呀呀。创办这个组织可全是我的自愿哦。[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_mod  name="mira" face="_1-8"]
…真的假的啊。[p]
沉默地听着两人的对话，从字里行间浮现的全是骇人听闻的真相。此刻我的表情想必正充满狐疑。[p]
[chara_mod  name="mahori" face="_2-3"]
#mahori
「……那么各位对本教团是否满意？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se4"  text="我想知道得更详细一些……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se4"  text="我还有点纠结"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se4
;//////////////////////////////
暂时先继续虚与委蛇地应付。光听演讲还是完全搞不清楚具体活动内容…[p]
[chara_mod  name="mahori" face="_2-2"]
#mahori
「如果诸位愿意的话…也可以选择体验入教活动。[p]
[chara_mod  name="mira" face="_1-7"]
#mira
「够——够了！我可不进这种可疑的教团！要搞就让真守自己搞个够吧！[p]
[chara_mod  name="mahori" face="_1-3"]
#mahori
「哎呀哎呀。那真守先生是否有兴趣单独…[p]
#
[stopse  time="1000"  buf="0"  ]
嗯…真难办。米菈实在太口无遮拦，弄得像只有我感兴趣似的。[p]
参与活动且先不论，无论如何都得设法拒绝入教。只能想办法转移话题了…[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se5"  text="恶魔大人……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se5"  text="转世？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se5
;//////////////////////////////

[chara_mod  name="mahori" face="_1-4"]
#mahori
「嗯…他们说我的灵魂里寄宿着德墨涅珈大人。这正是恶魔转世者的证明。[p]
[chara_mod  name="mira" face="_2-7"]
#mira
「这种鬼话谁信啊？现实中怎么可能真有这种事？[p]
[chara_mod  name="mahori" face="_1-6"]
#mahori
「谁知道呢…我并没有前世记忆这种确证。所以说到底是真是假…也就不得而知了。[p]
[chara_mod  name="mahori" face="_2-1"]
#mahori
「在我们生活的地球上...崇拜恶魔的人可不在少数。这个事实，您知道吗？[p]
[chara_mod  name="mahori" face="_2-3"]
#mahori
「希望这个世界无聊透顶、消失殆尽、彻底毁灭。最好永远没有明天。任谁都会有这么想过一次的时候吧。[p]
[chara_mod  name="mahori" face="_2-4"]
#mahori
「恶魔崇拜需要的正是这些「感情」。每个人心中暗藏的那一丝阴郁...终将汇聚成吞噬天地的黑暗，将恶魔引向这片大地。[p]
[chara_mod  name="mahori" face="_2-2"]

#mahori
「德墨涅珈教的目的，就是集结所有怀抱黑暗之人，直至将恶魔召唤到这个世界，最后...[p]
[stopbgm  time="1000"  fadeout="true"  ]
[chara_mod  name="mahori" face="_1-12"]
#mahori
「就是让这颗星球走向毁灭。[p]
#
[stopse  time="1000"  buf="0"  ]
...！！[p]
[playbgm  time="1000"  loop="true"  storage="dark_nebla.ogg"  ]
这句话让我的心脏猛地跳动。[p]
德墨涅珈教与她的企图...和我们正在做的事情完全背道而驰不是吗？[p]
[chara_mod  name="mahori" face="_2-6"]
#mahori
「而那一刻...很快就会到来。[p]
#
[stopse  time="1000"  buf="0"  ]
若想拯救地球，就必须与她为敌。[p]
我非要和眼前这位威风凛凛、面带自信笑容的她...战斗不可。[p]
[chara_mod  name="mahori" face="_2-7"]
#mahori
「这颗星球恐怕撑不过一周了吧。[p]
#
[stopse  time="1000"  buf="0"  ]
如果这句话属实的话...就意味着伊迪雅所说的那些事情都将成为现实。[p]
说是要用『负面』情感摧毁星球...之类的。那家伙说的话居然得到了印证...[p]
[chara_mod  name="mira" face="_1-8"]
#mira
「你怎么会知道这件事...！[p]
[chara_mod  name="mahori" face="_2-8"]
#mahori
「哎呀，原来你也知道啊。呵呵...真有意思。明知如此还要来阻止我吗？[p]
[chara_mod  name="mahori" face="_1-9"]
#mahori
「但是，已经太迟了...[p]
[chara_mod  name="mahori" face="_1-12"]
#mahori
「要想阻止我的话可是要拿出相应的觉悟哦，真守先生...您做得到吗？[p]
#mahori
[chara_mod  name="mahori" face="_2-8"]
「用寻常手段恐怕很难解散这个组织了。[p]
[chara_mod  name="mahori" face="_1-8"]
#mahori
「或者...这么说吧。只能将我处以极刑了。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se6"  text="这、这种事怎么可能……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se6"  text="处刑……！？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se6
;//////////////////////////////
[chara_mod  name="mahori" face="_1-3"]
#mahori
「有什么可怕的？您既然有此等决心想要完成目标，不正是做好与我为敌的觉悟了吗？[p]
[chara_mod  name="mahori" face="_1-5"]
#mahori
「既然如此就没必要犹豫了不是吗？[p]
[chara_mod  name="mahori" face="_1-8"]
#mahori
「再说了...尝试过就知道意外地简单哦。特别是「杀人」这种事...[p]
[chara_mod  name="mahori" face="_2-2"]
#mahori
「您觉得要打造没有犯罪的国家应该怎么做？[p]
[chara_mod  name="mahori" face="_1-9"]
#mahori
「改变每个人的思想实在太难。就算从每个国民的出身环境开始矫正，也不一定能按理想成长[p]
[chara_mod  name="mahori" face="_2-1"]
#mahori
「这个国家已经没救了。不，或许人类这个种族从降生那一刻起就没救了。[p]
[chara_mod  name="mahori" face="_1-5"]
#mahori
「我曾经杀过人。[p]
[chara_mod  name="mahori" face="_1-9"]
#mahori
「虽然已经是三年前的事了...那时我在学校遭到霸凌。没有任何人愿意伸出援手。[p]
[chara_mod  name="mahori" face="_1-7"]
#mahori
「霸凌是恶行对吧？[p]
[chara_mod  name="mahori" face="_1-8"]
#mahori
「也有这样的人说是：被欺负的人自身有问题，他们活该被欺凌！[p]
[chara_mod  name="mahori" face="_2-3"]
#mahori
「不对，这种说法不对。[p]
[chara_mod  name="mahori" face="_1-6"]
#mahori
「因为允许这种论调存在的话，最终会沦落到认为弱者就该没有人权的极端观点。[p]
[chara_mod  name="mahori" face="_1-7"]
#mahori
「所以...施暴者百分百是错的。必须是这样。理应如此。[p]
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
[bg  storage="41.png"  time="1000"  ]
[cg storage="41.png"]

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

;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="mahori" vostorage="mahori/{number}.ogg"  number="1"]
[voconfig sebuf="0" name="demo" vostorage="demo/{number}.ogg"  number="9"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
;同級生殺害事件のつづき
运动鞋里被倒满图钉、我的座位永远消失不见...[p]
过分的时候他们甚至会把菊花摆在我的课桌上（注：代表祭奠死人）。[p]
每次上学都会遭遇这样的对待。[p]
...简直蠢透了。[p]
我到底为什么要来学校呢？[p]
...为什么...我会变成这样了呢？[p]
一切的开始要追溯到新学期吧。[p]
原本朋友就不多，我也乐得清静。[p]
但后来...某个小团体主动接纳了我。[p]
每天在SNS上传照片互动的样子。[p]
大家都理所当然般沉迷于网络。[p]
把大把大把的时间花在这种事情上。[p]
这些孩子把自拍当爱好吗？[p]
其实根本不是吧。[p]
很想要点赞吧。给你给你要多少有多少...[p]
忙着炫耀旅行见闻、和闺蜜男友出行这类『充实人生经历』。[p]
啊好可爱真可爱~太厉害啦...不错嘛...这可是我触不可及的世界呢！看啊...你们就是想被我这样羡慕对吧？[p]
没见过这么鲜艳的食物吧？很上镜对吧？[p]
反正最后也不会吃吧？愚蠢。点赞...这种腐烂的根性...很好，很好啊。[p]
这个那个全都装成喜欢其实根本无感。[p]
快认可我！谁来喜欢我啊！把我捧成人气王吧！[p]
听起来总觉得在这么说。[p]
因为大家都喜欢所以我也要喜欢。反过来大家讨厌的就得跟着谩骂。[p]
迎合、迎合、一味迎合。察言观色，阅读气氛。[p]
受够了。真没劲。这些人活着就是为了干这种蠢事？[p]
连配合都觉得麻烦...[p]
某天突然就释怀了。反正这辈子不会再有关联了吧。[p]
「窃笑...窃笑...[p]
好吵。[p]
烦死了，吵死了。[p]
「哎姬路~为啥来学校啊？都说过又臭又脏别来学校了吧？[p]
那女人咧着扭曲的笑脸对我说。[p]
曾经应该是朋友的女人。早知道一开始就不该扯上关系。[p]
⋯⋯不是这样的吧。[p]
「喂~能听见吗？听不懂日语吗？你从哪个国家来的啊？咕哈哈哈~[p]
听不见。什么都...听不见。[p]
[bg  storage="41-2.png"  time="1000"  ]
#demo
「别再忍耐了哦。[p]
#
[stopse  time="1000"  buf="0"  ]
[bg  storage="41-3.png"  time="1000"  ]
在嘲笑声中，不知何处传来恶魔般的低语。[p]
住手...理性要崩溃了。内心如激流中的污浊，任其肆意冲卷却只能沉默地望着。[p]
「喂！不许无视老子！明明听见了吧丑女！快回话啊！[p]
继续无视惹恼了她，突然一脚踹飞我的课桌。[p]
「啧...[p]
抓起旁边的塑料瓶拧开盖子，朝我头上泼来。[p]
･･･好冰凉。[p]
头发浸透了，脑子像浸在水里。水滴从各处「吧嗒吧嗒」滴落。[p]
流完的水还留在头上黏糊糊的...[p]
「等等...这太过分了吧？真的没问题？[p]
「你这家伙没有人权哦懂吗？[p]
吵死了吵死了吵吵闹闹真够受啊。[p]
呐。[p]
差不多...可以了吧。[p]
不用再忍了吧。[p]
[bg  storage="41-2.png"  time="1000"  ]
#demo
「对...这样就对了。从此你就自由翱翔吧？[p]
[bg  storage="41-3.png"  time="1000"  ]
#
[stopse  time="1000"  buf="0"  ]
[bg  storage="bg.png"  time="1000"  ]
;ブラックアウト
⋯⋯[p]
有铁锈般的气味[p]
眼前有人倒下[p]
并不熟悉的人。虽然认识却不了解，讨厌的人[p]
从我手中握着的剪刀上滴落血珠，坠在地板上[p]
[bg  storage="36.png"  time="1000"  ]
[cg storage="36.png"]
#mahori
「啊...哈[p]
#
[stopse  time="1000"  buf="0"  ]
嘶哑的声音从喉咙深处挤出[p]
想说什么已经记不得了[p]
仔细一想其实都是些无聊透顶的事。[p]
[bg  storage="36-2.png"  time="1000"  ]
#mahori
「呵呵，啊哈哈！啊哈哈哈哈！[p]
#
[stopse  time="1000"  buf="0"  ]
但是，解脱感[p]
这份感情绝非后悔[p]
一直压抑的东西正在喷涌而出[p]
这就是"快乐"吗？[p]
是吗，这原来就是我长久以来渴望的东西啊･･･[p]
发出尖叫逃跑的人群[p]
用惊恐的表情看着我･･･[p]
是的。现在的我是无敌的。绝不会输给任何人･･･[p]
;同級生殺害事件おわり
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
[bg  storage="bg22.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="dark_nebla.ogg"  ]

;変更
[chara_mod  name="mahori" face="1-14"]
;立ち絵表示
[chara_show  name="mahori"  time="1000"  wait="true" reflect="false"  ]

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
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="212"]
[voconfig sebuf="0" name="mahori" vostorage="mahori/{number}.ogg"  number="57"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

#mahori
「我要执行审判！那些渣滓女通通杀死！想看她们从头顶喷着肮脏血液倒下的样子！[p]
[chara_mod  name="mahori" face="1-11"]
#mahori
「既然对方先动手了...我就能毫不留情反击了！[p]
[chara_mod  name="mahori" face="1-12"]
#mahori
「那种人不过是没有杀人胆量的懦夫。[p]
[chara_mod  name="mahori" face="2-5"]
#mahori
「以为吓唬吓唬都会像潮虫一样蜷缩起来...就自以为了不起其实完全是狂妄自大。[p]
[chara_mod  name="mahori" face="2-6"]
#mahori
「所以遇到我这样『动真格』的就败下阵来了！我等的就是对方先对我出手那一刻！[p]
[chara_mod  name="mahori" face="1-12]
#mahori
「这样一来就能光明正大对人类施暴了！发生任何事情，都可以说是正当防卫！反正错的不是我！[p]
[chara_mod  name="mahori" face="1-14"]
#mahori
「就算把人殴打致死，也不会被任何人斥责！毕竟是为了自保"不得已"才这么做的嘛！[p]
[chara_mod  name="mahori" face="2-8"]
#mahori
「要是害怕被问罪，那做些手脚让对方看起来不像过度防卫就好。对不对？[p]
[chara_mod  name="mahori" face="2-9"]
#mahori
「真是可笑至极。在这个国家居然可以合法杀人。法律这种规范早就名存实亡了！[p]
[chara_mod  name="mahori" face="default"]
#mahori
「不过现在，这些都无所谓了。我有更值得追求的目标...因为我已经大彻大悟了。[p]
[chara_mod  name="mahori" face="1-5"]
#mahori
「"杀人"这么小儿科的企图，早就被我舍弃了。[p]
[chara_mod  name="mahori" face="1-10"]
#mahori
「如今我的目标只有一个...那就是"弑星"。[p]
[chara_mod  name="mahori" face="1-14"]
#mahori
「然后将所有沉溺悲苦的生命，彻底解放！我才是真正意义上的救世主！[p]
[chara_mod  name="mahori" face="_1-12"]
;変更
[chara_mod  name="mira" face="_2-7"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「搞什么啊你这家伙...脑子坏掉了吧？[p]
[chara_mod  name="mahori" face="_1-12"]
#mahori
「或许吧...但总不至于比你更疯癫。[p]
[chara_mod  name="mira" face="_1-7"]
#mira
「你个混账，欠收拾是吧！？[p]
[chara_mod  name="mahori" face="_2-4"]
#mahori
「哧...呵呵...嘻嘻嘻嘻....[p]
[chara_mod  name="mira" face="_2-7"]
#mira
「有什么好笑的！混蛋！[p]
[chara_mod  name="mahori" face="_2-7"]
#mahori
「既然这样，为什么不试着揍飞我呢？[p]
[chara_mod  name="mira" face="_2-6"]
#mira
「啊？[p]
[chara_mod  name="mahori" face="_2-8"]
#mahori
「来啊。做你想做的。不是说无法饶恕吗？尽管动手好了。[p]
#
[stopse  time="1000"  buf="0"  ]
真法理露出挑衅的笑容，步步逼近米菈。[p]
[chara_mod  name="mira" face="_1-7"]
#mira
「可恶、别过来！[p]
#
[stopse  time="1000"  buf="0"  ]
我的话･･･[p]
;///////////////////////////
;選択
;//////////////////////////////
;せんたくし
[glink  color="red"  storage="6sho.ks"  size="17"  target="*true"  text="处决真法理"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="red"  storage="6sho.ks"  size="17"  target="*bad"  text="通过沟通解决问题"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
;//////////////////////////////


;/////////////////////////////////////////
;話し合いで解決する
*bad

;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="217"]
[voconfig sebuf="0" name="mahori" vostorage="mahori/{number}.ogg"  number="74"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

[chara_mod  name="mira" face="_2-7"]
#mira
「蠢货！要能和你们沟通早就成功了！[p]
[chara_mod  name="mahori" face="_1-4"]
#mahori
「真是个...有趣的人......[p]
#
[stopse  time="1000"  buf="0"  ]
真法理轻笑一声，向周围的信徒示意。[p]
霎那间我和米菈就被团团围住，退路全被封死。[p]
[chara_mod  name="mira" face="_1-7"]
#mira
「你们到底想做什么！住手、你们这些混蛋！[p]
#
[stopse  time="1000"  buf="0"  ]
双臂突然被架住，粗糙的布料捂住口鼻。[p]
这、这是......不好......意...识......[p]
我的意识逐渐陷入黑暗。[p]
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
[bg  storage="bg26.png"  time="1000"  ]
;BGM流し
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ
;ブラックアウト
;/////////////////////////////////////////
;町がブラックアウト。廃墟の夢
整座城市笼罩在黑暗中。[p]
寂静无声的空间里一片死寂。[p]
人们的处境并未改变。大家都对这种突如其来的变故感到不知所措...毕竟整个城市的灯光全都熄灭了。[p]
袭击我们地区的大地震，彻底摧毁了城市的基础设施。[p]
虽然只有部分区域受损，但街道已然面目全非，让人不禁怀疑这里是不是曾经生活过的地方...[p]
走进超市，大批人群陷入混乱。食物争夺战已然打响。[p]
...这该不会是一场噩梦吧。就像电影里的场景。目睹发生在自己身上的惨剧，恍如身处半梦半醒之间。[p]
正恍惚时突然被人重重撞倒。[p]
啊...没错。大家此刻都自顾不暇...谁还顾得上别人的死活。[p]
爸妈早就抛下我独自避难去了。即便在这样的绝境里，我依然孤身一人。[p]
被躁动的人群踩踏，几脚下去意识就坠入深渊。[p]
啊...这样也好......要是一辈子醒不过来就好了...反正...我这种人本就不该出生...[p]
爸妈也根本不想要我。消失了对谁都好。[p]
⋯⋯[p]
再次醒来时，城市已然化为废墟。[p]
昏暗死寂，没有任何生机。[p]
红绿灯不再闪烁。汽车停止奔驰。[p]
不见任何人影。或许大家都逃难去了。[p]
没有留下任何食物。什么都不剩...全被拿光了？[p]
被遗弃这种事...我已经习惯了。反正，一直都是这样......[p]
在空无一人的街道独自一人，冷静得令自己都感到厌恶。[p]
⋯⋯[p]
...走吧。或许，还能遇到谁。或许，能找到什么。[p]
...为了什么。即便是陷入这般境地，我明明渴望死亡却仍要苟延残喘。[p]
自己都忍不住嘲笑自己。这样不停地走下去，前面真的会有人吗？[p]
仿佛只剩下我，被困在这个地方。[p]
;/////////////////////////////////////////
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
[bg  storage="bg27.png"  time="1000"  ]
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


;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="219"]
[voconfig sebuf="0" name="mahori" vostorage="mahori/{number}.ogg"  number="75"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
再次睁开眼时，我和米菈已身处幽暗的牢狱之中。[p]
彼此的四肢都被金属镣铐束缚着。[p]
;変更
[chara_mod  name="mahori" face="2-7"]
;立ち絵表示
[chara_show  name="mahori"  time="1000"  wait="true" reflect="false"  ]
#mahori
「看来醒过来了呢。[p]
#mira
「你这混蛋想干什么！这到底是什么！该死，快放开！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈拼命挣扎想要摆脱拘束，但似乎完全无法动弹。[p]
禁锢我们的并非绳索。那沉重的金属镣铐坚硬如铁，动作太大只怕会有危险...[p]
我默不作声，心惊胆战地看着她扭动的身躯。[p]
[chara_mod  name="mahori" face="2-5"]
#mahori
「...没用的。真是聒噪的人啊。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*sei"  text="要我道歉多少次都可以，求你别再折磨我了……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*sei"  text="你想对我们做什么？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*sei
;//////////////////////////////
[chara_mod  name="mahori" face="1-5"]
#mahori
「接下来要让你们体验的...不介意提前告知吧。[p]
#
[stopse  time="1000"  buf="0"  ]
真法理一抬手势，手持蜡烛的信徒们随即现身。[p]
#教団員
「很快你们就会被洗脑，成为我们教派的一员。[p]
#
看来，我们真的要被洗脑了...[p]
#教団員
「还请诸位见证，与我们一同目击世界终焉的景象。[p]
#
她们，就是用这种方式将企图毁灭教团的人吸纳进来的吗？[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se7"  text="趁还来得及……！"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se7"  text="现在回头还来得及"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se7
;//////////////////////////////
[chara_mod  name="mahori" face="1-8"]　
#mahori
「呵呵...真守先生。妄图用这样的方式...来改变我的心志吗？[p]
[chara_mod  name="mahori" face="1-12"]　
#mahori
「您当真是个有趣的人...难道真要相信，能靠说服这种方法阻止我？[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="1000"  wait="true"  ]
;変更
[chara_mod  name="demo" face="_3"]
;立ち絵表示
[chara_show  name="demo"  time="3000"  wait="true" reflect="false"  ]
[wait time="1000"]
[chara_mod  name="demo" face="3"]
[wait time="1000"]
[chara_mod  name="demo" face="default"]
[wait time="1000"]

[chara_hide_all  time="3000"  wait="true"  ]
;変更
[chara_mod  name="mahori" face="1-10"]
;立ち絵表示
[chara_show  name="mahori"  time="1000"  wait="true" reflect="false"  ]
...是幻象吗？[p]
刚才一瞬，我似乎看见真法理身后站着黑袍女子。[p]
或许那个就是...[p]
#mahori
「您什么都不明白。这颗星球运转的法则，您连最基础的剖析都未曾做到。[p]
[chara_mod  name="mahori" face="1-11"]
#mahori
「要摧毁这个教团...要阻止地球毁灭，唯有杀死我。[p]
[chara_mod  name="mahori" face="1-9"]
#mahori
「若不杀我，地球必亡。[p]
[chara_mod  name="mahori" face="1-4"]
#mahori
「如此简单的事情都没法抉择...您骨子里，果然是太温柔的人啊。[p]
[chara_mod  name="mahori" face="2-6"]
#mahori
「正是这样的温柔...有时候反而会伤害到别人呢。[p]
[chara_mod  name="mahori" face="2-7"]
#mahori
「这些道理，您早该明白的。[p]
[chara_mod  name="mahori" face="1-13"]
#mahori
「有些人无论怎么努力终究无法互相理解...这点您应该更早领悟。[p]
[chara_mod  name="mahori" face="2-4"]
#mahori
「人心是窥探不得的。你以为推心置腹之人，下一刻就能背叛你。[p]
[chara_mod  name="mahori" face="2-5"]
#mahori
「要做到真正相通...即便是血脉相连的至亲，也困难重重啊。[p]
[chara_mod  name="mahori" face="2-6"]
#mahori
「那些将善恶常理视若无睹之徒比比皆是。[p]
[chara_mod  name="mahori" face="1-10"]
#mahori
「而那些本应属于恶的群体，也会坚信自己代表正义。[p]
[chara_mod  name="mahori" face="1-9"]
#mahori
「所谓正义的对立，并不全数归恶。[p]
[chara_mod  name="mahori" face="1-12"]
#mahori
「正义对立面亦有可能是另一派的正义。人类不过是各自坚信己方正义而战。[p]
[chara_mod  name="mahori" face="2-8"]
#mahori
「这一点，您与我都不例外不是吗？[p]
[chara_mod  name="mahori" face="2-6"]
#mahori
「无事的国度？无罪的国度？那种东西啊，就算天地倒转也不可能存在的。[p]
[chara_mod  name="mahori" face="1-14"]
#mahori
「若真企图实现那样的世界，那就需要远超人类智识的天文级数据支撑才行。[p]
#mira
「真守，别听这女人的鬼话。[p]
[chara_mod  name="mahori" face="2-9"]
#mahori
「真吵。能请您闭嘴吗？[p]
#
[stopse  time="1000"  buf="0"  ]
米菈打断了真法理慷慨激昂的演说。若非她及时劝阻，我恐怕已深深陷入那些蛊惑之辞。[p]
...好险，差点就被洗脑了。[p]
对面的真法理却露出焦躁不悦的神色。[p]
[chara_mod  name="mahori" face="2-5"]
#mahori
「明明什么都不懂。我的痛苦，你根本一无所知。反正也不会试着理解我吧⋯⋯？[p]
#mira
「谁特么想知道那种无聊的剧本！拿去当草稿纸用吧！[p]
#
[stopse  time="1000"  buf="0"  ]
两人开始针锋相对地争吵。[p]
[chara_mod  name="mahori" face="1-10"]
#mahori
「无聊⋯⋯你刚才说？[p]
#mira
「啊，真是无聊透顶。[p]
[chara_mod  name="mahori" face="2-5"]
#mahori
「不行呢。这个人不属于教团⋯⋯直接杀掉吧。[p]
#
[stopse  time="1000"  buf="0"  ]
[playse buf=2 storage="ono1.ogg"]
真法理示意后，信徒们抬出巨大的斧头。[p]
刀刃足有一米长，看起来相当沉重的斧子。人被那种东西砍到，绝无生还的可能。[p]
喂。等、等一下⋯⋯你们要⋯⋯用这个做什么？[p]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="bg.png"  time="1000"  ]
斧头在米菈面前高悬而起。[p]
住⋯⋯住手！[p]
[playse buf=2 storage="swing.ogg"]
在我喊出声前，巨斧已挟着无情的威势劈落⋯⋯[p]
[playse buf=2 storage="ono1.ogg"]
[playse buf=2 storage="naguru3.ogg"]
#mira
[quake count=5 time=300 hmax=20]
[bg  storage="aka.png"  time="1000"  ]
「嘎啊啊啊啊啊啊啊啊啊啊啊！！！？[p]
#
[stopse  time="1000"  buf="0"  ]
米菈的手臂被扯断。[p]
温暖鲜红的液体骤然迸溅，连我的脸上都沾满血沫。[p]
啊啊⋯⋯啊⋯⋯⋯⋯为什么会变成这样⋯⋯[p]
#mahori
「米菈小姐。我⋯⋯认识一个和你很像的人。像你这样的家伙，不过是想通过否定我来正当化自己。[p]
#mahori
「然后对那些合胃口的人就给予希望。听好了，人生在世根本不需要希望。可以请你别再做这些多余的事了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
[bg  storage="bg27.png"  time="1000"  ]
;変更
[chara_mod  name="mahori" face="2-4"]
;立ち絵表示
[chara_show  name="mahori"  time="1000"  wait="true" reflect="false"  ]
真法理露出沉溺在愉悦中的表情，对发抖的我继续说道。[p]
#mahori
「哎呀哎呀，真守先生⋯⋯在发抖呢。被吓坏了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
看着我颤抖不止的双手，她露出了畅快的笑容。[p]
[chara_mod  name="mahori" face="2-7"]
#mahori
「反正一切都快结束了。这种微不足道的小事，马上就会忘记的。[p]
#
[stopse  time="1000"  buf="0"  ]
震惊到大脑无法运转。什么都⋯⋯什么都，无法思考。[p]
想要反驳却组织不出语言。[p]
从颤抖的嘴唇间溢出的，只有凄惨的沙哑呜咽。[p]
[chara_mod  name="mahori" face="1-11"]
#mahori
「这是幻象哦。全都是你的妄想⋯⋯这里是你脑中的世界。[p]
[chara_mod  name="mahori" face="1-12"]
#mahori
「你心底某个角落一直在渴望。渴望变成这样⋯⋯想要让这个人被处刑。[p]
#
[stopse  time="1000"  buf="0"  ]
胡说！[p]
我根本没有想过那种事！怎么可能！[p]
米菈她⋯⋯米菈可是，朋友啊！我的⋯⋯！！我的⋯⋯[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*sinyuu"  text="我们可是挚友啊！！"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*sinyuu"  text="她是对我很重要的人……！"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*sinyuu
;//////////////////////////////
[chara_mod  name="mahori" face="1-13"]
#mahori
「真的是这样吗？这个人对你而言真的重要到能填补心灵与感情？是能带来希望的存在吗？[p]
[chara_mod  name="mahori" face="1-4"]
#mahori
「⋯⋯不对吧。[p]
#
[stopse  time="1000"  buf="0"  ]
像是要打断我的思绪般，她继续说道。[p]
[chara_mod  name="mahori" face="2-8"]
#mahori
「我明白的哦。你啊⋯⋯其实根本不了解这个人吧。[p]
#
[stopse  time="1000"  buf="0"  ]
仿佛被看透内心。为什么⋯⋯真法理会全部知道。[p]
确实，我⋯⋯关于米菈⋯⋯[p]
;/////////////////////////
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="1000"  wait="true"  ]

;変更
[chara_mod  name="mira" face="2-4"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
[bg  storage="bg6.png"  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
;/////////////////////////
;ミラの笑顔
一无所知。关于她的事⋯⋯完全都不了解。[p]
重逢后的米菈⋯⋯我完全没有印象。[p]
无论如何都想不起来。[p]
甚至怀疑是否真的见过面，因为连一点记忆都想不起来了。[p]
粗鲁又自来熟，以前总让人厌烦，不过⋯⋯[p]
;/////////////////////////
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
;変更
[chara_mod  name="riko" face="_1-4"]
;立ち絵表示
[chara_show  name="riko"  time="1000"  wait="true" reflect="false"  ]
;変更
[chara_mod  name="idea" face="_1-1"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
;変更
[chara_mod  name="meme" face="_1-5"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
;変更
[chara_mod  name="mira" face="_1-5"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
[bg  storage="bg1.png"  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
;/////////////////////////
;みんなと一緒の笑顔のミラ
倒也不讨厌这样的相处⋯⋯[p]
有米菈在的场合，并不令人讨厌。[p]
那里总是充满欢声笑语。[p]
没错。这种热闹的日常若能一直持续⋯⋯[p]
;/////////////////////////
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="23.png"  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
;/////////////////////////
;マナコの泣き顔
所以⋯⋯我⋯⋯一直把你当重要的⋯⋯的⋯⋯[p]
这样想着的这份心情，绝对是真实的啊⋯⋯[p]
是朋友。说不定已经是"挚友"的程度了。[p]
･･･啊。[p]
终于能直面自己真正的心意了。[p]
这该死的别扭性子到此为止了。[p]
可一切似乎都已经太迟了･･･[p]

[free_layermode  ]

[vostop]
;BAD END「デモニック」

@layopt layer=message0 visible=false

[bg  time="3000"  method="crossfade"  storage="bg.png"  ]

;非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]

[wait time="2000"]

;バッド表示
[layopt layer=0 visible=true]
[mtext text="BAD END「デモニック」" layer="0" x="30" y="560" size="40" in_effect="fadeIn" time="5000" color="white" fadeout="true" name="mtext" out_effect="rollOut"]
[free layer="0" name="mtext"]
[wait  time="3000"]

;BGM消し
[stopbgm  time="3000"  fadeout="true"  ]
;ウエイト
[wait time="3000"]
;タイトルへ
[jump  storage="first.ks"  target="*first"  ]

[s]
;///////////////////////////////////////
;///////////////////////////////////////
;///////////////////////////////////////


;///////////////////////////////////////////////////////
;///////////////////////////////////////////////////////
;///////////////////////////////////////////////////////
;マホリを処刑する
*true

;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="224"]
[voconfig sebuf="0" name="mahori" vostorage="mahori/{number}.ogg"  number="109"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
[playse buf=2 storage="naguru.ogg"]
#mahori
[quake count=5 time=300 hmax=20]
[chara_mod  name="mahori" face="_2-10"]
「唔呀嗯･･･！[p]
#
[stopse  time="1000"  buf="0"  ]
我刚回应，米菈就狠狠揍了那女人一拳。[p]
[chara_mod  name="mira" face="_2-7"]
#mira
「没问题吧，真守･･･！真的确定要这样！[p]
[chara_mod  name="mahori" face="_2-11"]
#mahori
「……这样才对嘛。[p]
#
[stopse  time="1000"  buf="0"  ]
她脸上挂着愉悦的笑容，故意挑衅着米菈。[p]
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
[bg  storage="bg.png"  time="1000"  ]
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
;マホリの悲しい過去ＥＰここで
「糟糕，明天要考试了啦！[p]
我把脸埋进课桌盯着木纹，耳边传来同班同学的对话。[p]
「欸真的假的？我完全忘记要复习怎么办完蛋了─。[p]
「要是明天学校着火就好啦。那样就不用参加考试了啦。[p]
「这样的世界干脆毁灭算了─[p]
……说得没错。[p]
这个直白得惊人的想法，深得我心。[p]
但是死亡本身，依旧让人恐惧。[p]
亲手终结自己的生命什么的･･･[p]
可是，我就是想死。[p]
这样想的次数究竟有多少次了？[p]
想要消失。[p]
在同样的问题里兜转了多少回？[p]
那些轻而易举的自杀方法。毫无痛苦结束生命的方式。[p]
手机搜索记录里，永远都是这些东西。[p]
真的有那种东西存在吗？我不清楚。真的可以轻松赴死吗？不知道啊･･‧[p]
尽是些无意义的自问自答。[p]
就在这时，我偶然发现了。[p]
关于『自杀互助会』的情报。[p]
是意图共赴黄泉的自杀者们聚集的团体。[p]
一个人做不到的事情，和大家一起的话就没问题了吧。仿佛能听见这样怂恿的声音……[p]
光是名称就引发了这样的妄想。[p]
说不定真的能够死亡。[p]
抱着试探的心情，我踏上了前往聚会场所的路。[p]
互助会的人们眼睛里已经没有光彩了。[p]
有为朋友承担债务而堕入深渊的人，有想逃离家暴丈夫纠缠不放的妇人……[p]
每个人想死的理由各不相同。都有各自难以承受的重负。[p]
虽然眼神空洞，但他们都抱定了决心･‧･在这里的，都不是那些能轻笑着面对现实的人。大家都是……同病相怜的伙伴啊。[p]
我和他们并排站在月台等候列车。[p]
今天就是我人生的最后一天。临死前是不是该做点什么纪念……这时候才开始萌生这种想法。[p]
可实际上，根本没什么值得做的事情。也没什么好后悔的。[p]
毕竟此刻我正为能毅然赴死而感到骄傲。[p]
『轰───‧‧‧』[p]
看啊……听见了。死亡列车进站的声音。[p]
闭上眼睛。[p]
啊‧‧‧真的到了最后一刻了。[p]
终于不用再经受折磨了。[p]
对我困惑视而不见的妈妈，爸爸。[p]
永远假装没看见的老师们。[p]
即使发生那种事，就算我真的成了杀人犯‧‧‧[p]
没有一个人愿意治愈我的内心。谁都不在乎。所以就用对待脏东西的方式处理我么。[p]
与其在找不到生存意义的状态下苟且偷生……[p]
已经没有可以牵挂的事了。永别了。[p]
;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="demo" vostorage="demo/{number}.ogg"  number="11"]
[voconfig sebuf="0" name="mahori" vostorage="mahori/{number}.ogg"  number="111"]
; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
#demo
「喂。你，已经决定要死了对吧？[p]
#
[stopse  time="1000"  buf="0"  ]
什么啊……这难道是，幻听‧‧‧么。[p]
#demo
「能听见对吧？我的声音……[p]
#
[stopse  time="1000"  buf="0"  ]
听得见。确实传入耳中了。之前好像也听过类似的声音。[p]
啊，这样啊。将死之际出现幻觉了吗。[p]
#demo
「那，就把死亡进程再暂缓一下吧。要不要试着继承我的意志？[p]
#
[stopse  time="1000"  buf="0"  ]
让我为你的人生添点乐子吧……她继续说道。[p]
这就是我与恶魔邂逅的过程。[p]
;血まみれのマホリ
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu_VP8.webm"  ]
[bg  storage="43.png"  time="1000"  ]
[cg storage="43.png"]
『要是这种世界干脆毁灭了该多好』[p]
･･･那是谁都会有、哪怕只是一闪而过的念头。[p]
然而这个念头･･･却是足以摧毁星辰的灭世魔法。[p]
我聚集了自杀小团体的成员，创立了一个宗教。[p]
为了在这世间唤醒能摧毁世界的恶魔......也就是祈求德墨的复苏所建立的场所。[p]
所以到了现在...[p]
我被这么多信徒簇拥着，接受他们的哀悼。[p]
啊啊。没想到还有...这么多的人愿意为我送行。[p]
这么多的、人啊。[p]
居然会有这么多人对我的一生、还有我的死亡如此感兴趣...[p]
光是这一点，我的心口就仿佛要涨开了。[p]
等一切都结束时...稍微哭一会儿也没关系吧？[p]
[bg  storage="42.png"  time="1000"  ]
[cg storage="42.png"]
#demo
「真可怜哪，你呀...[p]
#
[stopse  time="1000"  buf="0"  ]
恶魔少女轻快地笑着，俯视着如此狼狈的我。[p]
一直以来，你就是用那种看垃圾似的眼神看待人类的吧。[p]
[bg  storage="42-2.png"  time="1000"  ]
#demo
「但这样就行了，对吧？你已经很满足了不是吗。[p]
#
[stopse  time="1000"  buf="0"  ]
是啊。或许这样也不坏。[p]
毕竟...最终，我确实如愿以偿迎来了死亡。[p]
现在看来，在那个时刻能勉强苟活下来，或许并非坏事。[p]
带领信众的那些日子也绝不是虚度...这就是属于我的美好结局...[p]
[bg  storage="43-2.png"  time="1000"  ]
[cg storage="43.png"]

;満面の笑みで
#mahori
「那么各位，后会有期。愿你们能得到恶魔大人的加护...[p]
#
[stopse  time="1000"  buf="0"  ]

;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="enze" vostorage="enze/{number}.ogg"  number="7"]
[voconfig sebuf="0" name="demo" vostorage="demo/{number}.ogg"  number="16"]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="226"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで


;//////////////////////////////////////////////////////////////////
;デモニカ・エンゼのかけあい②
[bg  storage="44.png"  time="1000"  ]
[cg storage="44.png"]

#enze
「那是···[p]
[bg  storage="44-2.png"  time="1000"  ]
#enze
「人生啊，就是由无数选择组成的东西。[p]
#demo
「...[p]
#enze
「我们人类呐，为了探求自己为何而出生于世...必须经历漫长的旅程。[p]
[bg  storage="44-3.png"  time="1000"  ]
#enze
『要摔多少个跟头、经历多少伤痛...才能在这喧嚣尘世中找到『自己』的存在意义。[p]
#demo
「很痛苦对吧？很难过吧？为什么要往毒沼里纵身一跃？[p]
[bg  storage="44-4.png"  time="1000"  ]
#enze
「因为相信前方会有光芒呀。若你认为现在就是最不幸的境遇，那么更糟的事情就不会再有了。[p]
#enze
「当找到答案的那一刻...人就会明白人生的真正价值。那是独属于你自己的欢愉。[p]
[bg  storage="44.png"  time="1000"  ]
#enze
「然后肯定都会这么想吧...降生于世真是太好了。[p]
#demo
「但这样的喜悦不会永恒。终将消逝的泡沫般的幸福啊！不过都是幻影！[p]
#demo
「嫣洁你整天侍弄这些转瞬即逝的东西，到底图什么？是在搞什么回忆制作游戏吗？[p]
#demo
「花朵总有一天会枯萎对吧？再美的事物也是会消逝的！有限时间的幸福有什么值得珍视的？[p]
[bg  storage="44-2.png"  time="1000"  ]
#enze
「不是这样的。[p]
#demo
「反正早晚都要死的？[p]
[bg  storage="44-3.png"  time="1000"  ]
#enze
「是的。[p]
#demo
「所做的一切，全都是徒劳？[p]
[bg  storage="44-4.png"  time="1000"  ]
#enze
「即便如此也没关系。这才是正确的。[p]
#demo
「...[p]
#enze
「不论终点有什么在等待，都不要停下脚步。[p]
#enze
「尽管所有人都知道终有一天会迎来终结。[p]
[bg  storage="44.png"  time="1000"  ]
#enze
「宛如天际闪烁的星辰，生命只是刹那的光辉...[p]
#
[stopse  time="1000"  buf="0"  ]
正因明白这个道理，才会拼命挣扎啊。与命运抗争到底、永不停歇。[p]
[bg  storage="44-2.png"  time="1000"  ]
#enze
「所以啊...人生才是如此美丽。[p]
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
[bg  storage="bg5.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="redstar.ogg"  ]
;画面明るく
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////////////
;メニュー表示
[layopt layer="fix" visible="true" ]
[showmenubutton]
;ウインドウ表示
@layopt layer=message0 visible=true
;////////////////////////////////////////////アイキャッチ

;//////////////////////////////////////////////////////////////////
;逃亡後、プラネタリウムにて
;変更
[chara_mod  name="mira" face="_1-10"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「哈啊——好险。真是千钧一发啊！真守，没事吗？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se8"  text="勉强还能应付吧……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se8"  text="腿都快断了"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se8
;//////////////////////////////
[chara_mod  name="mira" face="_2-7"]　
#mira
「在外面晃悠太危险了。那些家伙可能还在巡逻呢。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈擦去额角的汗水，咚地一声坐在椅子上。[p]
[chara_mod  name="mira" face="_1-9"]　
#mira
「看样子暂时得躲在这里了。[p]
#
[stopse  time="1000"  buf="0"  ]
九死一生甩开信徒众的我们，逃进这座废弃天文馆准备在此度过长夜。[p]

;/////////////////////////
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
;変更
[chara_mod  name="mira" face="1-7"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
[bg  storage="bg22.png"  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
;/////////////////////////
;回想
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="225"]
#mira
「快逃！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈大喊着拽起我的手狂奔。[p]
看到浑身是血的真法理，暴怒的信众开始追杀我们。失去崇拜对象的他们已经完全发了狂。[p]
沐浴在他们锐利的、将仇敌牢牢锁定的视线中，我不由自主地蜷缩起来。[p]
无视着他们的威压全力奔逃的米菈背影。被她紧紧抓住手腕，传递着绝不抛弃我的意志。[p]
那毫不迷茫充满力量的目光。这样笔直的眼神...简直会让人觉得她才是真正的救世主。[p]
...如果米菈是救世主该有多好。不是我，而是她。[p]
这明明是位拥有为拯救世界不惜打倒恶魔的觉悟的人。[p]
比起关键时刻畏缩不前的我，明明她更勇敢、更有行动力。[p]
绝对比我更符合拯救者的资质。定能引导人类走向救赎...为什么伊迪雅会选我当救世主呢？[p]
在逃离大部队的过程中，脑海里不断回绕着这些纷杂念头。[p]
经过这连串骚动，末世气氛愈发浓重。宛如置身地狱。[p]
仿佛已能窥见世界终结的端倪。[p]
;/////////////////////////
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="6-2.png"  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
;/////////////////////////
;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="229"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
;回想おわり
#mira
「总之，我们先休息一下吧。[p]
#
[stopse  time="1000"  buf="0"  ]
坐在座位上仰望着毫无生机的天幕。[p]
我也入座，像她一样仰望着虚假的天空。[p]
[bg  storage="6-3.png"  time="1000"  ]
#mira
「吃吗？饿了吧。我的应急口粮，喏。给。[p]
#
[stopse  time="1000"  buf="0"  ]
[bg  storage="6.png"  time="1000"  ]
递过来的是一包海带茎零食。[p]
虽然在超市见过这种商品，但实际会买的到底什么人呢？本以为只有老年人才会喜欢这类东西。[p]
说起来，之前看到伊迪雅昏厥时她就有提什么海带的事。原来她真这么喜欢...[p]
不过这人口味也太老派了吧...莫非月观女士擅长做日式料理？脑海中只能浮现这般简单的联想。[p]
米菈浑然未觉我的目光，埋头咔嚓咔嚓嚼着海带茎。[p]
沉默中我的肚子发出咕噜声。看来实在没有挑三拣四的余地。[p]
试着咬了口海带茎，竟尝到梅子的余韵。饥饿感似乎稍稍得到缓解。[p]
⋯⋯[p]
有片刻时光，我们只是静默地凝望穹顶。[p]
侧目望去，她沉静的侧脸近在咫尺。[p]
在这看不见星辰的所在，她究竟在想什么呢？[p]
再无人会来修复这座天文馆的穹顶了。[p]
无机质的天幕依旧冰冷地铺展。[p]
米菈为何对此处如此执念？[p]
虽有询问的冲动，但隐约觉着这属于禁忌领域，终是作罢。[p]
或者说，这是我必须自行忆起之事？[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se9"  text="你在想什么？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se9"  text="有什么东西吗？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se9
;//////////////////////////////
[bg  storage="6-4.png"  time="1000"  ]
#mira
「问什么...只是发呆而已啦。待在这里比较安心。[p]
#
[stopse  time="1000"  buf="0"  ]
明明刚经历过那般激烈的战斗，我们却若无其事地交谈着。[p]
简直像是相识十几年的老友般自然。[p]
...不，其实或许真是如此？只是我不太记得了。[p]
⋯⋯[p]
注意到米菈按住右手腕的动作。[p]
是白天那场战斗让骨头受伤了吗？[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se10"  text="痛吗？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se10"  text="手……还好吗？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se10
;//////////////////////////////
;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="237"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
[bg  storage="6-5.png"  time="1000"  ]
#mira
「啊，别担心...擦伤而已。[p]
#
[stopse  time="1000"  buf="0"  ]
德墨涅珈教已全数歼灭。[p]
用最极端的手段，摧毁了他们...除此之外别无选择吗。[p]
这样做，真的是正确的吗？[p]
我是个卑劣之徒。[p]
恐惧对真法理痛下杀手，结果什么都没能做。[p]
到头来，还是把脏活推给了米菈。[p]
只是眼睁睁看着她一次又一次挥拳。自己的手依旧干干净净。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se11"  text="抱歉……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se11"  text="让你做了那样的事，真的很抱歉"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se11
;//////////////////////////////
[bg  storage="6-2.png"  time="1000"  ]
#mira
「...怎么，还在在意那件事？[p]
#
[stopse  time="1000"  buf="0"  ]
米菈蓦然失笑，肩膀轻轻耸动。[p]
[bg  storage="6-6.png"  time="1000"  ]
#mira
「别道歉，那是你自己的抉择。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se12"  text="但是，我们……犯了罪"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se12"  text="为了地球，我杀了人……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se12
;//////////////////////////////
[bg  storage="6-4.png"  time="1000"  ]
#mira
「没有其他办法啊。只能如此。她是那个邪教的根源...[p]
#
[stopse  time="1000"  buf="0"  ]
真法理是德墨涅珈教的教祖，是创立者，是根源所在，是信仰对象⋯⋯[p]
为了达成目标只能消灭她。真法理自己也是这么说的。[p]
『想要摧毁这个宗教，就只能消灭我自己』[p]
她自己也仿佛在期盼着这件事。[p]
是啊。确实是这样的。虽然如此⋯⋯可是⋯⋯[p]
好痛。[p]
被米菈弹了脑门⋯⋯[p]
米菈看着垂头丧气的我，用恨铁不成钢的语气开导道。[p]
[bg  storage="6-5.png"  time="1000"  ]
#mira
「钻牛角尖也没用吧，既成事实的东西已经没法改变了。总比地球完蛋好吧。[p]
#mira
「再说要是不动手，说不准会发生更糟糕的情况呢。[p]
[bg  storage="6-2.png"  time="1000"  ]
#mira
「不是说过了吗？就算地狱尽头我都会跟着去的。[p]
#mira
「真守你⋯⋯平安无事太好了⋯⋯。[p]
#
[stopse  time="1000"  buf="0"  ]
她笑着为我平安无事感到高兴的模样，看起来却比平日多了一丝寂寞。[p]
[bg  storage="6.png"  time="1000"  ]
#mira
「喂。真守你，这场战争结束后打算做什么？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se13"  text="米菈你打算怎么办？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="6sho.ks"  size="17"  target="*se13"  text="你才是……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se13
;//////////////////////////////
[bg  storage="6-3.png"  time="1000"  ]
#mira
「我啊⋯⋯嗯，暂时先回家吃顿好的吧。[p]
#
[stopse  time="1000"  buf="0"  ]
说着咧嘴笑了笑。[p]

;////////////////////////////////////////////
;////////////////////////////////////////////
;////////////////////////////////////////////

[vostop]

;次の章へ飛ぶ
[jump  storage="7sho.ks"  target="*first"  ]