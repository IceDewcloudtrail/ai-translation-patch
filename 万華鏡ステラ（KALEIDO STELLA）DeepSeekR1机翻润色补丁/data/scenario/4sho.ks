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
[bg  storage="ct3.png"  time="1000"  ]

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

[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
[voconfig sebuf="0" name="kaguya" vostorage="kaguya/{number}.ogg"  number="34"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

;/////////////////////////////////////////////////
;万華鏡ステラ/EP4
;■EP4　ミラ編「それが本当じゃなくても」
;////////////////////////////////////////////
;1.プロローグ悪夢
;/////////////////////////////////
;漏らす
在忍受漫长课堂折磨的我，正面临空前的危机。[p]
肚子...好痛...怎么办啊。[p]
明明都已经是中学生了，要是这把年纪还发生憋不住弄脏裤子这种事...[p]
毫无疑问校园生活会彻底崩溃。我肯定再也没脸来学校了。[p]
闹严重了说不定会被退学？真要那样我只能自杀谢罪了。[p]
该怎么办才好？到底怎样才能忍住这阵便意啊！[p]
老天爷啊求求您，我什么都愿意做，拜托坚持到下课吧...[p]
请不要再折磨我了，算我求你。[p]
完了，肠鸣音太响。已经咕噜咕噜响过很多次，周围的人可能都听到了。[p]
为什么偏偏是现在！[p]
好吧我认栽，都怪我平时作恶多端遭报应了。我就是个被诅咒的倒霉鬼行了吧...[p]
平时总便秘，偏偏这种时候肚子疼得要命。[p]
简直像老天爷故意整我。要能暂时退席缓解痛苦该多好，[p]
可根本没用，感觉快憋不住了。[p]
糟了糟了...在这种地方出事就全完了！真的会出人命啊！[p]
膀胱快到极限。噗噗的漏气声怎么也压不住，只能靠挪椅子掩饰，要多可疑有多可疑。[p]
恶臭直窜鼻腔。[p]
彻底完蛋了...根本掩藏不住，臭味根本无法处理。[p]
邻座女生投来质疑的目光。[p]
「...好像有味道，这家伙放屁了？」[p]
满脸写着这样的质疑。[p]
对啊怎样！我就是放屁了怎样啊！可恶可恶可恶！[p]
邻座女生撕下笔记本纸写了点什么，折好递给后排女生。[p]
知道啦...你们是在传纸条说我放屁了是吧？肯定是这样没错吧？[p]
要不换你试试！我正在经历人生中最痛苦的折磨啊！[p]
喂大家也有过类似经历吧？又不是我一个！班上总有人能理解我吧...？[p]
之后不会管我叫『屎漏子』吧？[p]
说到底在这种密闭空间里上课本来就不合理！大错特错！[p]
座位间距太近了吧？男女混坐根本算性骚扰，纯属酷刑，被当笑柄很正常啊。[p]
万一起了生理反应多尴尬！还怎么来上学？被女生嘲笑的男生最惨了。[p]
肚子疼得已经无法思考了。[p]
我怎么总是这样？[p]
运气差...倒霉透顶。没朋友。没人能信任。[p]
讨厌自己。讨厌讨厌讨厌...没有任何优点，生来就是输家。[p]
好想死。想从这个世界上消失。我根本不配出生。[p]
真不幸，光是呼吸都如此痛苦。我早就知道的。真想立刻消失不见。就算明天一切都消失不见，我也丝毫不会觉得悲伤。[p]
之后，意识渐渐模糊...我想自己应该是漏出来了。因刺激太大而失去记忆。[p]

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
[bg  storage="ic4.png"  time="1000"  ]

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
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu_VP8.webm"  ]

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

;/////////////////////////////////
;つきみプロローグ
#kaguya
「你应该不知道我在这里吧。[p]
#kaguya
「你要去哪里，我也不知道。[p]
#kaguya
「甚至连你的存在与否，我也不知道。[p]
#kaguya
「你在哪里？[p]
#kaguya
「在花田盛开的无数花朵之中。我在那里。[p]
#kaguya
「也许你也在那里。[p]
#kaguya
「为了有一天能被找到。我竭尽全力地绽放着美丽的花朵等待。[p]
#kaguya
「为了等到终于与你相遇的那一天。[p]
#
[stopse  time="1000"  buf="0"  ]

[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
[voconfig sebuf="0" name="kaguya" vostorage="kaguya/{number}.ogg"  number="20"]
[voconfig sebuf="0" name="tukimi" vostorage="tukimi/{number}.ogg"  number="78"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

[bg  storage="24.png"  time="1000"  ]
[cg storage="24.png"]

;/////////////////////////////////
;つきみエピソード
;ツキミのとなりで輝夜姫が、ベッドの上のうたろーを見ている
#tukimi
「宇太郎君...[p]
#
[stopse  time="1000"  buf="0"  ]
她紧紧握住躺在床上闭着眼睛的男人的手，沉浸在泪水之中。[p]
那没有温度的冰冷手掌，越发加深了她的绝望。[p]
#tukimi
「骗人...快说这是骗人的啊...不要啊！不要消失...不要丢下我...[p]
#kaguya
「...果然。[p]
#kaguya
「你要抛下所有，让一切都成为过去吧。[p]
#
[stopse  time="1000"  buf="0"  ]
一直以来都是这样。每当以为抓住了幸福，回过神来已为时已晚。在最关键的时刻，他必然走向死亡。[p]
#kaguya
「早就知道了啊。[p]
#kaguya
「是注定好的。从一开始就被决定好的事情。[p]
#kaguya
「这样的结果也是...所有因果在构成之时便已注定好了未来。[p]
#kaguya
「遵循规则与定律，无限分岔的世界终将...收敛于唯一的结局。[p]
#
[stopse  time="1000"  buf="0"  ]
我注视着你安详的睡脸，只是淡淡地陈述着。这些话究竟是对谁说的...她大概不会明白吧。[p]
#kaguya
「你在无尽轮回的世界里，一直看着她悲伤的身影吧？[p]
#kaguya
「然后渴望着。让这场噩梦结束...在这奇异的时空中不断重复。[p]
#
[stopse  time="1000"  buf="0"  ]
即便转生后她的身影，也仍在悲伤与绝望中徘徊。[p]
这样的时光大概会永远持续下去吧...又一次在相似的成长轨迹与经历后，让她流下泪水。[p]
[bg  storage="24-2.png"  time="1000"  ]
#kaguya
「你所渴望的...是执念。想要斩断这条诡异的锁链。[p]
#kaguya
「早已放弃一切，认定任何角落都已没有希望。[p]
#kaguya
「想要创造一个她不再困于自己的世界。对吧？[p]
#
[stopse  time="1000"  buf="0"  ]
现在，你在想些什么呢？[p]
莫非...你在后悔曾经爱过她这件事吗？[p]
#kaguya
「这就是对你的惩罚啊。[p]
#
[stopse  time="1000"  buf="0"  ]
在抽泣的她身后，半透明的你伫立着。表情阴沉，似是凝结了经年累月的悔意。[p]
#kaguya
「...真悲伤啊。[p]
#kaguya
「由我来替你杀死你吧。[p]
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
[bg  storage="17.png"  time="1000"  ]
[cg storage="17.png"]
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

[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="308"]
[voconfig sebuf="0" name="tukimi" vostorage="tukimi/{number}.ogg"  number="1"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

;//////////////////////////////////////
;2.過去編　ミラとツキミが出会うシーン
;//////////////////////////////////////
那时的我，漫无目的。[p]
自己为何而出生...要去向何方也毫无头绪。[p]
轻巧地爬上公园的游乐设施仰望天空。[p]
今日天空依旧晴好，幸好没有下雨。[p]
真是个星光璀璨的美丽夜晚。[p]
那颗星星，从这里也能看见吗？[p]
听说此刻眼中倒映的星光，来自多年前就已燃尽的恒星残辉。[p]
是真是假不得而知。[p]
人类只相信自己亲眼所见，所以连这都有人怀疑是谎言。[p]
从其他星球看，咱们地球会是什么模样呢？[p]
地球是否也像那些星辰一样，正燃烧着走向灭亡？[p]
那也许就意味着...现在自己看到的这个现实...说不定全都是虚假的。[p]
也许是一颗早已毁灭的星球的悲鸣。[p]
如今存在于这里的这个身躯...心灵与情感...或许都只是幽灵。[p]
#tukimi
「呐。[p]
#
[stopse  time="1000"  buf="0"  ]
忽然间，被陌生女性搭讪了。她似乎完全没有发出脚步声就靠近过来，我毫无察觉。[p]
#tukimi
「在这种地方做什么呢？你的爸爸妈妈呢？[p]
#
[stopse  time="1000"  buf="0"  ]
･･･我没有回答。爸爸妈妈什么的...我已经没有了。[p]
#tukimi
「待在这里的话，会着凉哦。[p]
#
[stopse  time="1000"  buf="0"  ]
被人搭讪并不稀奇。毕竟是小孩子一个人走在路上嘛，净是些奇怪的家伙。[p]
我心想这家伙肯定也是个有变态性癖的老太婆吧。[p]
敢跟我纠缠不休的话就咬她的手臂，随时准备战斗。[p]
#mira
「别管老子。[p]
#
[stopse  time="1000"  buf="0"  ]
我瞪着她。[p]
#tukimi
「不用露出那么可怕的表情啦。不会做奇怪的事情哦。[p]
#
[stopse  time="1000"  buf="0"  ]
她笑眯眯地偷偷打量我的反应。[p]
#tukimi
「我呢，是在这附近经营咖啡馆的。这是名片。[p]
#
[stopse  time="1000"  buf="0"  ]
说着从包里抽出一张纸片递过来。[p]
谁会接啊白痴，居然对小孩子推销，要推销就去别的地方啊。[p]
女人始终保持着笑容，捏着名片的手一直没有缩回去。[p]
･･･看来不接过这张名片的话，她就不会离开。[p]
#mira
「･･･哼。[p]
#
我粗暴地夺过她递来的名片。[p]
#tukimi
「谢谢。有兴趣的话随时来玩哦。我一直等着。[p]
#
[stopse  time="1000"  buf="0"  ]
･･･这便是与这个人的初次相遇。[p]
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
[bg  storage="9.png"  time="1000"  ]
[cg storage="9.png"]

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


[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="80"]
[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="65"]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="135"]
[voconfig sebuf="0" name="riko" vostorage="riko/{number}.ogg"  number="105"]
[voconfig sebuf="0" name="tukimi" vostorage="tukimi/{number}.ogg"  number="7"]

[voconfig sebuf="0" name="kaguya" vostorage="kaguya/{number}.ogg"  number="20"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

;//////////////////////////////////////
;3.接触編
;//////////////////////////////////////
#idea
「早安，真守大人。[p]
#
[stopse  time="1000"  buf="0"  ]
一睁眼，又是伊迪雅的面容。[p]
啊、啊...早。我忧郁地回应。[p]
唉。今天的我又要被这个女人使唤着做什么呢...[p]
看这架势简直像是把这个当成了每日例行公事啊。日复一日，该不是把我当囚犯监视着吧。[p]
搞什么，打算诱惑我吗。真是的，那大得不像话的乳沟算什么...这个样子叫人怎么安心自慰啊。[p]
[bg  storage="bg8.png"  time="1000"  ]
这么想着，我抛下伊迪雅下楼。[p]
[bg  storage="bg15.png"  time="1000"  ]
客厅里芽萌正在准备早餐。[p]
;変更
[chara_mod  name="meme" face="_2-2"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「啊！哥哥早！早餐做好啦，趁热吃哦！[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌还是老样子。今天轮值的不是米菈而是芽萌吗？[p]
不过说轮值是什么意思？她们有排班制？还是随心所欲？[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="bg1.png"  time="1000"  ]
我随便应了声坐在餐桌旁。[p]
今天早饭是素面啊...[p]
看来空调昨天已经修好了...今天怎样都无所谓了。[p]
将香料倒入面汤搅拌。我是放葱花和姜末派的。[p]
正当拿起筷子准备吃第一口时...[p]
;変更
[chara_mod  name="mira" face="_1-8"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「喂真守。这女的是谁？你的朋友吗？一直在玄关前杵着我就给带过来了。[p]
#
[stopse  time="1000"  buf="0"  ]
随着嘈杂的脚步声，米菈好像带了谁来。[p]
;変更
[chara_mod  name="riko" face="_1-3"]
;立ち絵表示
[chara_show  name="riko"  time="1000"  wait="true" reflect="false"  ]
#riko
「那、那个...初次见面。接下来要打扰各位一段时间了。我是引笼璃光！[p]
#
[stopse  time="1000"  buf="0"  ]
...欸。璃光。这不是那个据说一直宅家自闭的女生吗。虽然不知道为什么会在这里...但看来她履行了决斗的约定走出家门了。[p]
...可是等等。[p]
说什么要叨扰你们是什么意思。不明白。完全搞不懂。到底怎么回事啊？[p]
[chara_mod  name="mira" face="_1-3"]
#mira
「哦，我明白了。新的寄宿伙伴吗！欢迎光临民宿星海庄！我是米菈！我也在这里借住，请多关照啦！[p]
#
[stopse  time="1000"  buf="0"  ]
喂！别那么自然地融入集体啊…话说回来，我家什么时候变成民宿了！？还有，璃光为什么会在这里！？这家里发生的事情一件比一件离谱...[p]
#mira
「…感觉这名字好像哪里听过？是错觉吗。[p]
[chara_mod  name="riko" face="_2-6"]
#riko
「……呜呜。虽说终于出门了…可是我根本没有朋友嘛…真守君好过分。和璃光在一起只是玩玩吗？要好好负起责任…哦。[p]
#
[stopse  time="1000"  buf="0"  ]
真是的，不要说这种惹人误会的话啊！都是伊迪雅小姐和你总说这种话，米菈才会得意忘形的不是吗…[p]
[chara_mod  name="mira" face="_2-4"]
#mira
「哦？怎么，你们果然认识吗？民宿热闹起来是好事啊！对吧，真守！[p]
#
[stopse  time="1000"  buf="0"  ]
已经没救了。不管我说什么看来都无法洗清罪过了。谁来帮我搞定这两个家伙…[p]
;変更
[chara_mod  name="idea" face="_1-5"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「初次见面。我是伊迪雅。[p]
[chara_mod  name="riko" face="_1-5"]
#riko
「伊迪雅小姐，请多关照～[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_mod  name="idea" face="_1-1"]
呜呜…就在这期间，可疑的女人和奇怪的女人越走越近…我该怎么办才好。[p]
停下手中饭菜的芽萌朝这边走来。[p]
对了，芽萌！快把这种可疑女人赶出去。芽萌可是很可靠的…哥哥相信你。绝对不能再让麻烦的家伙增加了。[p]
;変更
[chara_mod  name="meme" face="_1-3"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「初次见面，璃光姐姐！芽萌来和你做朋友吧！反正暑假期间爸爸和妈妈都不会回来，这不是挺好的吗？是吧，哥哥。[p]
#
[stopse  time="1000"  buf="0"  ]
"是吧，哥哥。"才不是啊...你说这种话不就赶不走她了吗！这下可怎么办啊。[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="18.png"  time="1000"  ]
[cg storage="18.png"]

#riko
「真守君，你的妹妹…真是太棒了！跟你完全不一样。而且，超级可爱！将来应该去USATUBE当魔法少女系偶像嘛。[p]
#meme
「欸～，偶像？芽萌我？芽萌真能当偶像吗？！[p]
[bg  storage="18-2.png"  time="1000"  ]
#riko
「当然能！芽萌萌绝对没问题！既可爱又伶俐。和某人完全不同呢。[p]
#
[stopse  time="1000"  buf="0"  ]
说着，璃光朝这边瞥了一眼。[p]
这、这个女人…时不时在话里带刺啊。果然是想找我吵架么…[p]
莫名觉得昨天的笑脸都是装出来的。女人真可怕…[p]
#mira
「什么？！芽萌要当偶像了？！这可不妙！趁还没成名先要个签名！回头可能升值呢！[p]
#
[stopse  time="1000"  buf="0"  ]
这些人为啥这么来劲啊！[p]
为何家里尽是这种异想天开的家伙…接下来可有得受了。[p]
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
[bg  storage="bg16.png"  time="1000"  ]
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

;//////////////////////////////////////
;ファーストフードで作戦会議　母とばったり。親子喧嘩が始まる。
;//////////////////////////////////////

;変更
[chara_mod  name="mira" face="_2-5"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「哇～！这里的汉堡好吃到爆啊！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈正在狼吞虎咽地大嚼汉堡。[p]
实在是惊人啊，不管怎么说这也太能吃了吧。明明刚刚才吃过早饭的…[p]
;変更
[chara_mod  name="idea" face="_1-5"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「没错，很美味。虽然属于能量过高但消化效率低的食品。[p]
#
[stopse  time="1000"  buf="0"  ]
伊迪雅依旧面无表情地分析着汉堡。[p]
就这样，我们又被伊迪雅带到了隔壁镇子。[p]
完全意气相投的芽萌和璃光说是要在家里看USATUBE视频，就把她们留下来了。[p]
不过目的地又是这个镇子吗。难道这个镇子有什么特殊机制？[p]
算了…和啥都没有的我家那边不同，这座邻镇可是应有尽有啊。[p]
要说对面有什么特色景观的话，只有萧条的商店街、废弃的天象仪...再加上UFO坠落现场吧。[p]
[chara_mod  name="mira" face="_2-4"]
#mira
「这个镇子，娱乐场所最近增加了不少呢。以前可没有那么大的百货商场和电影院呢。[p]
[chara_mod  name="idea" face="_2-4"]
#idea
「是的。过去数年间，这个镇子逐渐衰败。据说中路那边还残留着部分老式街景。[p]
[chara_mod  name="mira" face="_1-6"]
#mira
「啊，像那种老掉牙的咖啡店...[p]
#
[stopse  time="1000"  buf="0"  ]
欲言又止的米菈露出怀念的神色，脸上浮现出意味深长的表情。[p]
难不成这镇上有什么与她有渊源的店铺吗？[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="bg17.png"  time="1000"  ]
;町を歩く。
走出店门，走了一阵子后前方的米菈突然停下了脚步。[p]
只顾低头走路的我，"砰"地撞上了她的后背。[p]
喂，突然停下很危险...刚要责备的我在看到她的表情时僵住了。[p]
[chara_mod  name="mira" face="_1-8"]
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「...！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈表情僵硬地呆立着。我还是第一次见到这样的她...[p]
到底是怎么回事？顺着她的视线望去，有位女性正站在那里。[p]
[chara_mod  name="tukimi" face="_1-8"]
[chara_show  name="tukimi"  time="1000"  wait="true" reflect="false"  ]
#tukimi
「...！米菈...！是米菈吗！？[p]
#
[stopse  time="1000"  buf="0"  ]
陌生女性快步向米菈跑来。[p]
我和伊迪雅都呆呆地望着这一幕。[p]
[chara_mod  name="tukimi" face="_1-7"]
#tukimi
「米菈，可算找到你了。这些年你都去哪了？知道我有多担心...快跟我回家！[p]
[chara_mod  name="mira" face="_1-7"]
#mira
「...烦死了，我不认识你。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈不爽地别过脸，甩开了她的手。[p]
[chara_mod  name="mira" face="_2-7"]
#mira
「我...是不会回去的。[p]
#
[stopse  time="1000"  buf="0"  ]
;一人退場
[chara_hide name="mira"]
她转过身朝反方向跑去。[p]
[chara_mod  name="tukimi" face="_1-8"]
#tukimi
「米菈！等等...！！[p]
#
[stopse  time="1000"  buf="0"  ]
那位女性慌忙要追赶，但没等我们阻拦，背影就迅速消失在了街巷尽头。[p]
喂，你要去哪啊...？不是说好要帮忙的吗？话说这个人该不会...[p]
;ミラ怒ってどこか行く。母と少し話す。
[chara_mod  name="tukimi" face="_2-1"]
#tukimi
「米菈...[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="4sho.ks"  size="17"  target="*1"  text="出什么事了吗？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*1"  text="难道……？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*1
;//////////////////////////////
心头挂念的我不由得开口。[p]
连自称是她挚友的我都对她知之甚少。对我来说，不光是伊迪雅，米菈也算是个神秘的存在。[p]
或许正是某种"想要更了解米菈"的好奇心驱使吧。[p]
[chara_mod  name="tukimi" face="_1-3"]
#tukimi
「哎呀，你是米菈的朋友吗？[p]
#
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="4sho.ks"  size="17"  target="*ziko"  text="我的名字是……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*ziko"  text="我叫星海真守"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*ziko
;//////////////////////////////
[stopse  time="1000"  buf="0"  ]
;変更
[chara_mod  name="idea" face="_1-4"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「初次见面。小女子名唤伊迪雅，今后还请多关照。[p]
[chara_mod  name="tukimi" face="_1-4"]
#tukimi
「真守君、伊迪迪，感谢你们一直陪伴米菈。我是鲸田月观，米菈的母亲。[p]
#
[stopse  time="1000"  buf="0"  ]
这位居然是...米菈的妈妈。[p]
与米菈那种粗线条的作风截然不同，是位举止沉静的女士。[p]
举手投足间莫名透着一股哀愁，想必经历过不少艰辛往事。[p]
[chara_mod  name="tukimi" face="_1-9"]
#tukimi
「这孩子向来随心所欲。而我总是像牵线木偶一样被她带着四处奔波。[p]
#
[stopse  time="1000"  buf="0"  ]
她浮现出回忆往事的表情，低垂眉梢笑着，落寞而悲伤，却又饱含爱意...[p]
[chara_mod  name="tukimi" face="_2-2"]
#tukimi
「真守君也深有体会吧？抱歉啊，米菈给你添了不少麻烦...跟她相处，很不容易对吗？[p]
#
[stopse  time="1000"  buf="0"  ]
...确实。我一时语塞。[p]
总是突然出现，在我周围大呼小叫地折腾一番，又不告而别。简直就像暴风雨般的家伙。[p]
要说是给我添了麻烦...确实是事实吧。擅自住进我家当食客之类的事。[p]
啊...原来如此。现在想来，她是因为离家出走无处可去才赖在我家的啊。[p]
虽然我之前也设想过她可能住在废弃的天象馆里之类的……但她对自己绝口不提，导致具体情况完全无从得知。[p]
[chara_mod  name="tukimi" face="_1-6"]
#tukimi
「可以拜托你一件事吗……如果在什么地方看到那孩子，请让她回来好吗？[p]
#
[stopse  time="1000"  buf="0"  ]
月观女士深深叹了口气。明明看起来那么年轻，真是辛苦啊。[p]
每次米菈惹麻烦，这张漂亮的脸蛋上可能就会多一道皱纹。真可怜……[p]
[chara_mod  name="tukimi" face="_1-5"]
#tukimi
「这是我家咖啡馆的名片。不嫌弃的话拿着吧。随时欢迎来玩。[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_hide name="tukimi"]
我们接受转达请求后，她留下忧郁的背影转身离去。[p]
名片上印着名为「Planet」的咖啡馆的地址。[p]
Planet。宇宙……银河？应该是类似的感觉吧。虽然我英语不好，但也大致明白这个词的意思。[p]
她给咖啡馆起这个名字，究竟有什么深意呢？[p]
;イデアが二人の仲を取り持ってくださいという。
[chara_mod  name="idea" face="default"]
#idea
「真守大人。请容许我上报下一步目标。[p]
#
[stopse  time="1000"  buf="0"  ]
与月观女士分别片刻后，伊迪雅开口说道。[p]
[chara_mod  name="idea" face="1-2"]
#idea
「请修复米菈大人与月观大人之间的母女关系。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
没想到她说的会是这种事。[p]
……要我去解决人家的家庭问题？这未免太越界了吧……这不叫多管闲事叫什么？[p]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*3"  text="不管怎么说･･･"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*3"  text="这也太过分了吧"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*3
;//////////////////////////////

[chara_mod  name="idea" face="2-1"]
#idea
「不。这是拯救地球免于灭亡的重要环节之一。[p]
#
[stopse  time="1000"  buf="0"  ]
伊迪雅将长发细细打理好，随即凝视我的双眼。[p]
像是在强调这绝不是在开玩笑一样……那郑重的目光令我心头一颤。[p]
[chara_mod  name="idea" face="2-3"]
#idea
「所以绝不是什么多管闲事。从今往后你必须在宇宙安危面前，甘当世上最爱管闲事之人。[p]
#
[stopse  time="1000"  buf="0"  ]
反正也逃不掉吧。[p]
话虽如此……继璃光之后，连米菈的私生活都要介入吗？[p]
拯救地球的救世主，到底该多爱多管闲事啊。[p]
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
;4.解決編　選択肢BAD分岐
不知所措的我只能垂头丧气跟着伊迪雅。她似乎要回住处。[p]
算了，具体对策……总之先送这家伙回家再说。[p]
米菈……不知道跑哪去了。这次得靠我们独力解决吗？[p]
……不，米菈可是当事人。倒不如说，必须得到她的力量才行吧。[p]
这么说来首先要找到她？[p]
真是的，这种时候跑哪去了……要是回我家就好了。[p]
[bg  storage="bg15.png"  time="1000"  ]
;変更
[chara_mod  name="meme" face="_2-8"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「米菈姐姐？没回来啊。出什么事了？[p]
#
[stopse  time="1000"  buf="0"  ]
在送伊迪雅回去时顺便确认家里情况，仍不见她踪影。[p]
[chara_mod  name="meme" face="_2-7"]
#meme
「啊！该不会吵架了？真是的，哥哥太没分寸啦！[p]
;変更
[chara_mod  name="riko" face="_2-7"]
;立ち絵表示
[chara_show  name="riko"  time="1000"  wait="true" reflect="false"  ]
#riko
「哎呀呀。真守君……要对女生温柔点才好啊？[p]
#
[stopse  time="1000"  buf="0"  ]
……再待下去事情会越闹越大。[p]
告诉芽萌和璃光「没事的」之后，我又前往邻镇。[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
[playse buf=2 storage="nyuuten.ogg"]
[bg  storage="bg18.png"  time="1000"  ]
;喫茶
凭着方才月观女士给的名片，来到古旧的商业街。[p]
这大概就是之前在快餐店时，两人提到的那条老街吧。[p]
原来如此……这就是米菈怀念不已的咖啡馆啊。[p]
墙上装饰着星辰图案，桌上摆着地球仪之类充满宇宙元素的小物件。[p]
;変更
[chara_mod  name="tukimi" face="1-8"]
;立ち絵表示
[chara_show  name="tukimi"  time="1000"  wait="true" reflect="false"  ]
#tukimi
「……欸。[p]
#
[stopse  time="1000"  buf="0"  ]
看到进店的我，月观女士嫣然一笑。[p]
[chara_mod  name="tukimi" face="1-5"]
#tukimi
「真守君来啦。请坐。[p]
#
[stopse  time="1000"  buf="0"  ]
在她的催促下，我在吧台前落座。[p]
片刻后，一个精致的玻璃杯递到我面前。[p]
[chara_mod  name="tukimi" face="1-2"]
#tukimi
「这是麦茶。不含咖啡因，小朋友也能喝...啊啦。看来已经不是小朋友的年纪了呢。[p]
#
[stopse  time="1000"  buf="0"  ]
她抿嘴一笑，我也忍不住跟着笑了。[p]
明明都是高中生了看起来还像小孩，大概是因为个子矮吧...[p]
[chara_mod  name="tukimi" face="1-3"]
#tukimi
「真守君饿不饿？需要的话我做点吃的吧。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*4"  text="不，没关系的"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*4"  text="不用在意我"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*4
;//////////////////////////////

[chara_mod  name="tukimi" face="1-8"]　
刚说完肚子就咕噜作响。[p]
这也太巧了吧。所谓身随心动？拜托你倒是会看气氛啊...让初次见面的人下厨，是不是有点失礼...[p]
[chara_mod  name="tukimi" face="1-4"]
#tukimi
「噗嗤。稍等一下哦。[p]
#
[stopse  time="1000"  buf="0"  ]
本想婉拒免得麻烦人家...[p]
瞥见时钟已经过了正午。从吃早餐到现在确实过了挺久。[p]
⋯⋯[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="19-3.png"  time="1000"  ]
[cg storage="19.png"]

#tukimi
「来，请用。[p]
#
[stopse  time="1000"  buf="0"  ]
少顷，当我看到面前碗里的内容物时愣住了。[p]
滑润的面条上铺着温泉蛋、黄瓜丝，还有辛香的酱汁。啊这...莫非是...[p]
#tukimi
「担担面。特意少放了辣子，就算吃不了辣也没关系。[p]
[bg  storage="19-4.png"  time="1000"  ]
#tukimi
「虽然不在菜单上。平时都是做工作餐。[p]
#
[stopse  time="1000"  buf="0"  ]
...果然是前天她做的那种。[p]
值班饭。也就是说果然得在店里帮忙才能吃到啊。[p]
米菈之前肯定也在店里帮过忙吧。[p]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*5"  text="是米菈做的"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*5"  text="其实……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*5
;//////////////////////////////
[bg  storage="19-7.png"  time="1000"  ]
#tukimi
「真的？那孩子还记得做法啊。[p]
#
[stopse  time="1000"  buf="0"  ]
月观女士露出欣慰的表情。和米菈的笑容不太相似。[p]
或许米菈遗传了爸爸的长相。[p]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*6"  text="其实，我对她并不太了解"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*6"  text="她就像风暴一样，是个神秘的人啊"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*6
;//////////////////////////////
虽然没指名道姓，但她立刻就明白我说的是谁。[p]
[bg  storage="19-5.png"  time="1000"  ]
#tukimi
「米菈从小就很调皮...让人头疼呢。[p]
#
[stopse  time="1000"  buf="0"  ]
月观女士仿佛讲述尘封的往事般，轻轻开启了话题。[p]
小时候常来咖啡馆帮忙的事；[p]
明明冒冒失失又爱顶嘴，却透着早熟的气质，从不向人敞开心扉...离家出走的事。[p]
从这些零碎的往事片段中，隐约勾勒出幼年米菈的轮廓。[p]
[bg  storage="19-6.png"  time="1000"  ]
#tukimi
「这孩子现在又野到哪里去了呢...[p]
#
[stopse  time="1000"  buf="0"  ]
她说得像是家常便饭，用叹息诉说着司空见惯的无奈。[p]
虽说青春期的女孩大抵如此，但还是替她感到心疼。[p]
竟让这么优雅的女性操心...差点脱口而出，又硬生生憋了回去。[p]
...我又何尝有资格说别人。自己不也在给父母添麻烦吗？[p]
被寄予厚望却被舍弃，最终如预期般成了吊车尾不是吗？[p]
[bg  storage="19.png"  time="1000"  ]
#tukimi
「...这些话可以跟真守君说吗？[p]
#
[stopse  time="1000"  buf="0"  ]
她神色凝重地向我倾诉。[p]
[bg  storage="19-2.png"  time="1000"  ]
#tukimi
「米菈...其实不是我亲生的。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
...诶？[p]
[bg  storage="19.png"  time="1000"  ]
#tukimi
「那孩子，并非我怀胎十月生下的。[p]
#
[stopse  time="1000"  buf="0"  ]
没有血缘关系...确实，两人长得不像。[p]
一直以为是随父亲长相，被点破后突然醍醐灌顶。[p]
[bg  storage="19-6.png"  time="1000"  ]
#tukimi
「我却把她当作亲骨肉，倾注了所有关爱。[p]
#
[stopse  time="1000"  buf="0"  ]
这算什么。棘手的家庭问题不是吗？[p]
撮合没有血缘的母女重归于好这种事...我可做不到啊...那个伊迪雅竟想让我完成这样的任务？[p]
[bg  storage="19-2.png"  time="1000"  ]
#tukimi
「可是渐渐地...我开始不明白那孩子究竟是谁了。她总是说些超出我理解范围的话。[p]
#
[stopse  time="1000"  buf="0"  ]
就算我再怎么努力，毕竟是两个外人。能改变什么呢？[p]
这两个人...当他们走向不同道路时，应该就会叹口气说『这样也好』然后挥手道别吧？[p]
[bg  storage="19-3.png"  time="1000"  ]
#tukimi
「天知道她在哪里学的这些。说不定...在遇到我之前，真正的母亲早就教过她了？[p]
[bg  storage="19-4.png"  time="1000"  ]
#tukimi
「孩子啊，以为给了满满的爱...结果反倒越来越疏远了呢。[p]
#
[stopse  time="1000"  buf="0"  ]
爱...[p]
听到最不想听的词语，突然有些羡慕米菈了。[p]
[bg  storage="19-5.png"  time="1000"  ]
#tukimi
「就算放进箱子里小心养育、给予再多的爱，终有一天还是会离开父母的臂弯...这和有没有血缘根本没有关系啊。[p]
#
[stopse  time="1000"  buf="0"  ]
搞什么...米菈被这样深爱着不是吗？和我的状况简直天差地别...[p]
没有血缘的家人这么疼你、爱你...这不是很幸福的事吗？[p]
既然如此，为什么还要离家出走...[p]
[bg  storage="19-2.png"  time="1000"  ]
#tukimi
「所以...我很害怕。总觉得那孩子有天会做出难以想象的事情。[p]
#
[stopse  time="1000"  buf="0"  ]
像我们这种扭曲长大的人，一辈子都得不到的爱。渴望却没人愿意给予的爱...[p]
米菈轻易践踏这些，令人不禁火大。无处宣泄的怒气在胸口翻涌。[p]
[bg  storage="19-6.png"  time="1000"  ]
#tukimi
「以前是个正义感爆棚的孩子。最讨厌不正义的事，总是拼命让自己保持正确。所以被自己的正义蒙蔽双眼，做些让大家困扰的事情...然后自己也很痛苦吧？[p]
[bg  storage="19-5.png"  time="1000"  ]
#tukimi
「呵呵。或许我担心过头了吧？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*7"  text="不是那样的"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*7"  text="我觉得这很正常"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*7
;//////////////////////////////
[bg  storage="19-3.png"  time="1000"  ]
#tukimi
「当父母的...大家都会这么想吧。[p]
#
[stopse  time="1000"  buf="0"  ]
下意识说出伪善般的话语，不过此刻...我的笑容应该很僵硬吧。[p]
父母担心孩子是理所当然...？但世上也有不这么想的父母。我是知道的。抿着嘴没说出口，继续听她咯咯地笑着说下去。[p]
[bg  storage="19-7.png"  time="1000"  ]
#tukimi
「...哎呀呀，这就是所谓的过度保护吧？自以为与众不同，结果不知不觉也变成了这样。得注意了呀。[p]
#
[stopse  time="1000"  buf="0"  ]
或许我从一开始就搞错了。血缘这种东西说不定根本不重要，意外地很容易就能斩断呢。[p]
正因为有血缘...反而有些事情做不到温柔？搞不好『正因为是别人』才能毫无负担地给予爱。[p]
想到这里，心情似乎稍微放松了一些。[p]
[bg  storage="19-6.png"  time="1000"  ]
#tukimi
「和那孩子的相遇...已经是几年前的事了啊。[p]
[bg  storage="19-3.png"  time="1000"  ]
#tukimi
「丈夫先走一步了。他本来就有慢性病。当时...我完全崩溃了。每天都像活在黑暗里...其实根本不想和任何人说话，完全走不出来，只是封闭自己。[p]
[bg  storage="19-6.png"  time="1000"  ]
#tukimi
「还没来得及生孩子，丈夫就不在了。所以...没有任何希望。每天都在后悔中度过。[p]
[bg  storage="19-2.png"  time="1000"  ]
#tukimi
「……就在那时候，遇见了那孩子。[p]
#
[stopse  time="1000"  buf="0"  ]
... 彷佛天降一缕光明。流星坠落在眼前。像抓住救命稻草般，她伸手接住了。[p]
#tukimi
「穿着破破烂烂的衣服，爬上公园游乐设施眺望星空。看得实在心疼...忍不住就上前搭话了。[p]
#
[stopse  time="1000"  buf="0"  ]
...我明白她说的是米菈的事。[p]
[bg  storage="19-4.png"  time="1000"  ]
#tukimi
「当时她对我可警惕了。所以，我也没敢太过纠缠。要是被当成变态就麻烦了呢...不过，我还是想帮她做点什么，情急之下递出了咖啡馆的名片。[p]
[bg  storage="19-3.png"  time="1000"  ]
#tukimi
「自从丈夫去世后，店就一直关着...但想到说不定那孩子会来，隔天就急急忙忙重新开张了。[p]
#
[stopse  time="1000"  buf="0"  ]
那小鬼头啊。小时候可能就不怎么坦率。脑海中浮现出她板着张脸的摸样。[p]
其实心里是想去得不得了...想一头扎进那份温柔里，但是怎么也做不到。害羞和自愧的情绪混在一起，让她止步不前。[p]
[bg  storage="19-5.png"  time="1000"  ]
#tukimi
「当然，她并没有马上过来。不过最后还是来找我了。大概是递出名片后的第四天左右吧。[p]
#
[stopse  time="1000"  buf="0"  ]
于是她下定了决心。要依赖某人，依靠他人活下去。[p]
[bg  storage="19-3.png"  time="1000"  ]
#tukimi
「我把米菈接回家后，每天都过得很开心。就像自己有了孩子般高兴。[p]
[bg  storage="19-6.png"  time="1000"  ]
#tukimi
「是米菈教会我的。她给了我活下去的希望。原来结婚生子...并不是女人唯一的幸福。我啊...曾经是幸福的。[p]
#tukimi
「然后想着...在很远很远的未来里...我们两人都能幸福地生活下去。[p]
#
[stopse  time="1000"  buf="0"  ]
那时的她应该真的幸福吧。说起那段往事时，她的表情忽然明亮起来。[p]
[bg  storage="19.png"  time="1000"  ]
#tukimi
「...可是，事实并非如此呢。[p]
#
[stopse  time="1000"  buf="0"  ]
声音突然失了元气，月观女士微微垂下头。[p]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*8"  text="让你讲了一些难过的事"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*8"  text="让你想起了不好的事情，很抱歉"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*8
;//////////////////////////////
[bg  storage="19-5.png"  time="1000"  ]
#tukimi
「没关系的，不必在意。[p]
[bg  storage="19-6.png"  time="1000"  ]
#tukimi
「我啊...或许是把她当成了丈夫的替代品。可能只是因为寂寞想把她留在身边而已。[p]
#
[stopse  time="1000"  buf="0"  ]
持续忏悔的她，脸上笼罩着苦涩的阴影。[p]
[bg  storage="19-2.png"  time="1000"  ]
#tukimi
「这种不安定的心情，肯定也被那孩子看穿了吧...[p]
#tukimi
「米菈可能是对我感到厌烦了...几年前离家出走了。直到今天重逢，已经很久没见了。[p]
#
[stopse  time="1000"  buf="0"  ]
早在几年前就离家出走...这段话不禁让我感到困惑。[p]
[bg  storage="19-6.png"  time="1000"  ]
#tukimi
「这些年，那孩子都是怎么活下来的啊。能活着真是太好了...[p]
#
[stopse  time="1000"  buf="0"  ]
直到刚才我都还认定米菈是最近才离家出走的。[p]
『好几年前』...这样的话，离开月观女士家后，她这几年都是怎么生活的？[p]
越是想就越不了解那家伙。你这段时间，都在干什么啊？[p]
月观女士肯定也一样...还是别多说扰乱她了。[p]
[bg  storage="19-3.png"  time="1000"  ]
#tukimi
「这些事，可以对米菈保密吗？要是知道我多管闲事，又要被她骂...[p]
#
[stopse  time="1000"  buf="0"  ]
与月观女士约定后，谢过担担面和麦茶离开了店。[p]
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
[bg  storage="20.png"  time="1000"  ]
[cg storage="20.png"]

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

[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="310"]
[voconfig sebuf="0" name="tukimi" vostorage="tukimi/{number}.ogg"  number="59"]

[voconfig sebuf="0" name="kaguya" vostorage="kaguya/{number}.ogg"  number="20"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
;回想二人の出会い、ミラ黄昏てる。
#mira
「大婶你为什么不生气啊？难道不会觉得我是个没教养的臭小鬼吗？[p]
#
[stopse  time="1000"  buf="0"  ]
懒洋洋地坐在吧台前，视线投向对面。[p]
#tukimi
「这个嘛...毕竟每个人都不一样呢。[p]
#
[stopse  time="1000"  buf="0"  ]
对着我随意抛出的问题，煮鸡蛋的她如此回应。[p]
#mira
「几个意思啊？[p]
#
[stopse  time="1000"  buf="0"  ]
听见咕嘟咕嘟的沸水声。那颗蛋应该是要煮成溏心，当作工作餐的配菜吧。[p]
想到又能吃到那顿料理，肚子开始咕咕叫。[p]
#tukimi
「要去想着这个人的缺点在哪、需要改正什么，不觉得这种时间很浪费么？要改变他人的人格啊...挺难的呢。[p]
#
[stopse  time="1000"  buf="0"  ]
她关掉计时器，用熟练的动作舀起鸡蛋放入冰水中。[p]
咚咚、传来鸡蛋之间轻轻碰撞的声音。[p]
[bg  storage="20-2.png"  time="1000"  ]
#mira
「嗯...[p]
#
[stopse  time="1000"  buf="0"  ]
心不在焉地敷衍着她的发言。[p]
⋯⋯[p]
就是这种地方。[p]
他人是他人，自己是自己。如此这般地划清界限。亲手在自己与对方的心之间筑起物我之界...所以。[p]
对我也不感兴趣吧。根本不在意这颗心底藏着什么。[p]
若是什么都不说，想必就认定里面空空如也吧。[p]
认为袖手旁观、冷漠无情才是正道...简直就像觉得这副姿态很美似的。[p]
不愿深入了解我。[p]
不试图教育我。[p]
;ミラたそがれてる
你只想要做个「完美的大人」而已。[p]
害怕被谁讨厌、被谁被抛下吧。[p]
不想被我抛弃、不想再孤零零一个人吧。[p]
所以你才会是...这种周到稳妥的「世故大人」啊。[p]
所以啊、你啊...[p]
没能跨越名为"他人"的高墙、和我成为"家人"。[p]
就算被憎恨被怨恨、还是拼尽全力与孩子对峙的...不才是父母吗。即便被讨厌、就算得不到感激...[p]
这样做、只是在娇纵溺爱而已。[p]
我更想被责骂啊、我啊...[p]
希望做错事时能被明确否定。[p]
想要听到你告诉我，一切所思所想...[p]
渴望得到真诚的传递。想要真实的而非敷衍的字句。希望你能直面我、以真心彼此碰撞。[p]
不横加干涉是温柔...？[p]
错了、只是逃避而已。[p]
但那个人...给了我房间。给我食物、所需之物、温暖的居所。[p]
那天为我洗浴的回忆，浴巾温暖的香气包裹着我...渗出的泪水至死也不会忘记。[p]
阔别已久的人类温暖，那时正是我会为细微之事动容的年纪...[p]
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
[bg  storage="23.png"  time="1000"  ]
[cg storage="23.png"]
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
;選択　ミラを呼び止める？
终于在街角的海岬、找到了米菈。[p]
看来是在眺望夕阳西落的景象。[p]
短短的橘发被阳光镀上金色，在风中轻柔飘扬。[p]
望着那个背影，犹豫该不该搭话。[p]
月观女士泫然欲泣的表情，在我脑海中挥之不去。[p]
我该怎么做才对呢？[p]
我的话･･･[p]
;///////////////////////////
;選択
;//////////////////////////////
;せんたくし
[glink  color="red"  storage="4sho.ks"  size="17"  target="*true"  text="世界上最爱管闲事"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="red"  storage="4sho.ks"  size="17"  target="*bad"  text="现在先别管･･･"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
;//////////////////////////////

;/////////////////////////////////////
*bad
;選択　そっとしておこう
[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="146"]
[voconfig sebuf="0" name="tukimi" vostorage="tukimi/{number}.ogg"  number="64"]
[voconfig sebuf="0" name="kaguya" vostorage="kaguya/{number}.ogg"  number="1"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
顺其自然吧，这是她们的问题。[p]
面对意外的重逢、现在应该处于敏感期吧。大概原本就不想见面，所以直到最后一刻都没来找她。[p]
...不、说不定她来到这座镇子时、就预感到也许会与月观女士重逢，在不经意间再次相见吧。[p]
也许因为自己无法主动去找、所以哪怕伪装成偶遇也想确认对方是否安好。[p]
不论是月观女士还是我都未曾了解过她，她的心境，至今仍是未知数。[p]
究竟在思考什么、朝着什么方向前进，连身为挚友的我都未能真正理解。[p]
此刻凝视晚霞时...脑海里在想什么呢？[p]
虽在意、但是私人事务，没有我插手的余地。[p]
我转身背对她迈步离开。[p]
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
[bg  storage="bg19.png"  time="1000"  ]
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
;交通事故で亡くなる。朝方。
垂首而行。[p]
注意到眼前是人行横道，我刹住脚步。[p]
信号灯仍是红色，先稍等片刻。[p]
我早有预感。当我回到这个镇上，就有可能重逢。虽然心知肚明可...[p]
#mira
「...该死的。[p]
#
[stopse  time="1000"  buf="0"  ]
一见她的表情就觉得恶心反胃。[p]
她还是和几年前一样毫无改变。总是保持着平静的表情...从不惊慌失措。就连注视我的眼神，也像皎月般熠熠生辉。[p]
是啊，她还是那么不会表达。但这样就好。[p]
现在的我早已无处可归。[p]
反正要是被带回那个家，就什么都做不了了。[p]
那和我这样做的初衷不就背离了吗？[p]
别撒娇了。我...不就是为了履行使命而存在吗？为了战斗而存在吧？[p]
清醒点。我早已不是她的宠物娃娃。也不是任她摆布的人偶了...[p]
正在纠结要不要回真守家时，不经意瞥见人行道对面她的身影。[p]
她似乎也认出了我，视线在空气中对撞。[p]
#mira
「...搞什么鬼。[p]
#
[stopse  time="1000"  buf="0"  ]
我假装没看见她，迅速转头望向别处。[p]
为什么命运总让我遇见她？到底有什么企图？根本莫名其妙。开什么玩笑！[p]
#mira
「...[p]
#
[stopse  time="1000"  buf="0"  ]
已经毫无瓜葛了。妈妈...我已经和你说再见了。[p]
绿灯亮起，机械地迈开步子。[p]
余光能感觉到她一直注视着我...或许会上前来搭话？[p]
抵触心理让我死死盯着地面。装作没发现或许就能躲过去。[p]
...就在这样的恍惚中。[p]
[playse buf=2 storage="hikareru.ogg"]
[quake count=5 time=300 hmax=20]
[bg  storage="aka.png"  time="1000"  ]
突然侧方传来剧烈撞击，整个人被掀飞出去。[p]
尖锐的刹车声撕裂巷道的安宁。[p]
此起彼伏的尖叫声。[p]
一时没反应过来发生了什么。[p]
啊...我这是被撞了...？[p]
[bg  storage="21.png"  time="1000"  ]
[cg storage="21.png"]
颤抖着睁开眼，侧翻的货柜车近在咫尺。[p]
检查四肢都还在。没有出血。[p]
不远处似乎躺着个女人。[p]
#mira
「妈...妈妈？[p]
#
[stopse  time="1000"  buf="0"  ]
我连滚带爬扑向她。[p]
妈妈的腿...不见了。[p]
仿佛被碾压撕扯过般...只剩半截身子。[p]
但那就是妈妈...难以置信被摧残成这样...可她就是妈妈。[p]
绝望如潮水涌来。不一定能救活了。思绪陷入停滞。[p]
妈妈要死了...要死了...！[p]
[bg  storage="22.png"  time="1000"  ]
[cg storage="22.png"]
#mira
「不要死！妈！妈妈！！！[p]
#
[stopse  time="1000"  buf="0"  ]
是妈妈救了我？为我...舍命相救？千钧一发把我推开了？[p]
太蠢了。这女人真是蠢透了...自说自话。凭什么啊？为什么要这样对我？[p]
#mira
「是我啊，米菈！睁开眼睛啊！求你了妈...！[p]
#
[stopse  time="1000"  buf="0"  ]
该多和...妈妈说说话的。[p]
此刻才终于明白。妈妈的心意...[p]
原来她一直把我视如己出。[p]
谁会豁出性命去保护一只空有人形的宠物？[p]
在她心目中...我竟是如此重要...[p]
直面曾经逃避的真相，痛彻心扉。[p]
真正愚不可及的...是那个拒绝去理解对方内心的人吗？[p]
⋯⋯[p]
...正是我啊。[p]
因为害怕受到干扰而拒绝了解她...不是吗？[p]
却反过来埋怨她不懂我、不愿用心交流...任性妄为的...[p]
无论怎么看都是个愚蠢透顶的家伙...我。[p]
妈妈带着心满意足的表情咽下了最后一口气。[p]
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
[cg storage="25.png"]
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu_VP8.webm"  ]

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
;/////////////////////////////////////
#kaguya
「这样就结束了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
米菈的啜泣声逐渐远去，近旁传来熟悉少女的声音。[p]
#tukimi
「啊⋯⋯是你。[p]
[bg  storage="25-3.png"  time="1000"  ]
[cg storage="25.png"]
#kaguya
「⋯⋯该结束了。[p]
#
[stopse  time="1000"  buf="0"  ]
遮住月光的她正满脸笑容地看着我。[p]
[bg  storage="25-2.png"  time="1000"  ]
#kaguya
「怎么了？[p]
#kaguya
「会死吗？[p]
#kaguya
「难道你……就要死了？[p]
#tukimi
「我呢⋯⋯好像明白了。[p]
[bg  storage="25-4.png"  time="1000"  ]
#kaguya
「⋯⋯已经来不及了。[p]
#tukimi
「是啊⋯⋯你说的对。[p]
#tukimi
「肯定地球⋯⋯从一开始就什么都没有。全部，都被阴霾的天空吞噬殆尽了吧。[p]
#tukimi
「我们存在的意义⋯⋯要如何努力活下去⋯⋯也都一样。[p]
[bg  storage="25-3.png"  time="1000"  ]
#kaguya
「告诉我你的愿望。[p]
#kaguya
「只要是你的愿望我都能实现。趁死亡还没降临前⋯⋯[p]
#kaguya
「你的，愿望是？[p]
#tukimi
「没有。[p]
[bg  storage="25-5.png"  time="1000"  ]
#kaguya
「⋯⋯真无聊。[p]
#tukimi
「已经不指望什么了⋯⋯就这么慢慢感受着自己消融的样子。[p]
[bg  storage="25-6.png"  time="1000"  ]
#kaguya
「我明明什么愿望都能为你实现？你却说什么都不要？[p]
#tukimi
「你给了我这么一个满是绝望的境遇⋯⋯不对，是颠覆这个世界的机会吗？[p]
[bg  storage="25-4.png"  time="1000"  ]
#kaguya
「人类在即将终结时才会有欲望浮现不是吗。因为人类有心啊。不是玩偶。[p]
#tukimi
「或许是这样呢。想做这个，想要那个，想成为那样的⋯⋯肯定，在最后一刻才会想到吧。[p]
[bg  storage="25-6.png"  time="1000"  ]
#kaguya
「当心灵荒芜磨损、肮脏扭曲直至腐烂时，说什么愿望都没有也太不自然了。[p]
#kaguya
「毫无所求什么都不要⋯⋯不过就是漂亮话而已。[p]
#tukimi
「即使是漂亮话⋯⋯也没关系呢。人啊，是可以自己决定自己心灵的哦。[p]
[bg  storage="25-3.png"  time="1000"  ]
#kaguya
「我知道。没人能指使的。心是属于自己之物。你也好，我也罢⋯⋯都一样。[p]
#tukimi
「呐。你，从什么时候就一直待在那儿的？[p]
[bg  storage="25-4.png"  time="1000"  ]
#kaguya
「⋯⋯已经是很多年前的事了。[p]
#tukimi
「你在等谁？[p]
[bg  storage="25.png"  time="1000"  ]
#kaguya
「⋯⋯不知道。虽然一直这样待着。但其实并没有在等谁。[p]
#tukimi
「很久以前，一个月亮来的人被人类养大，明明不想回去却被强行带回了⋯⋯好像在哪听过这样的故事。[p]
[bg  storage="25-6.png"  time="1000"  ]
#kaguya
「那种事⋯⋯都是老掉牙的故事了。[p]
[bg  storage="25-3.png"  time="1000"  ]
#kaguya
「⋯⋯那再见。[p]
#tukimi
「嗯⋯⋯永别了。[p]
#
[stopse  time="1000"  buf="0"  ]
[vostop]
;BAD END「輝夜姫」

@layopt layer=message0 visible=false

[bg  time="3000"  method="crossfade"  storage="bg.png"  ]
[free_layermode  ]

;非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]

[wait time="2000"]

;バッド表示
[layopt layer=0 visible=true]
[mtext text="BAD END「輝夜姫」" layer="0" x="30" y="560" size="40" in_effect="fadeIn" time="5000" color="white" fadeout="true" name="mtext" out_effect="rollOut"]
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


;/////////////////////////////////////
*true
;『世界で一番のお節介を焼く』やらないとダメ
[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="152"]
[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="70"]
[voconfig sebuf="0" name="tukimi" vostorage="tukimi/{number}.ogg"  number="61"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

『此后你将为世界尽责，成为世界上最爱多管闲事之人』[p]
⋯⋯[p]
是的。如果相信那句话的话⋯⋯我，就该行动起来。[p]
自从背负起这份职责⋯⋯我能感觉到。自己正逐渐改变⋯⋯正鼓起勇气行动着的。[p]
[bg  storage="23-2.png"  time="1000"  ]
#mira
「真守⋯⋯[p]
#
[stopse  time="1000"  buf="0"  ]
转过身来的米菈瞬间睁大了双眼。[p]
#mira
「⋯⋯原来在啊。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*9"  text="不回家吗？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*9"  text="月观很担心"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*9
;//////////////////////////////
毫不顾虑地直接抛出我此刻的所思所想。[p]
你是怎么想的。说给我听听啊。[p]
[bg  storage="23-3.png"  time="1000"  ]
#mira
「⋯⋯别说了。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈的表情霎时苦涩起来。[p]
[bg  storage="23-2.png"  time="1000"  ]
#mira
「和你没关系吧。太多管闲事了。[p]
#
[stopse  time="1000"  buf="0"  ]
没错，确实如此。毕竟现在的我⋯⋯正在做这世界上最该管的事呢。[p]
无视拒绝继续向前迈进。[p]
[bg  storage="bg.png"  time="1000"  ]
;ミラの過去
失去父母，被驱逐住所，拼命在喧嚣中奔逃只为活到明日。[p]
没有注视我的人。没有在意我的家伙。永远独处于孤寂之中。[p]
看不到未来之际，所抵达的虚假家庭。那里没有母亲的慈爱。[p]
#tukimi
「宇太郎...[p]
#
[stopse  time="1000"  buf="0"  ]
佛龛前闭目合掌的她。推开门缝偷偷观望这幅画面。那个在很久以前抛下她的人⋯⋯[p]
那种家伙的事还是忘掉比较好。像我一样，把一切都抛弃掉就好。[p]
然后把那份爱稍微分给我一点就行。这样我就能得救了。[p]
#tukimi
「是你，赐予我那个孩子的吗？[p]
#
[stopse  time="1000"  buf="0"  ]
要是一开始就发觉自己是孤独的，就不会因渴求他人的爱而沉溺了。[p]
#tukimi
「为了擦干我的眼泪吗？[p]
#
[stopse  time="1000"  buf="0"  ]
能否不诅咒明天和未来，在孤独中找到某些存在？将无转化为有...独自生存下去，肯定不是件困难的事。[p]
作为随时可用的存在，永远留在这个家里真的会让自己幸福吗？[p]
;回想もどる
[bg  storage="23.png"  time="1000"  ]
[cg storage="23.png"]
#mira
「已经搞不懂自己为什么要待在那个家里了。[p]
#
[stopse  time="1000"  buf="0"  ]
既没有流泪也不显得悲伤，只是带着冰冷的表情说出这番话。[p]
[bg  storage="23-3.png"  time="1000"  ]
#mira
「如果我对于那个人来说只是填补寂寞的存在...那养只宠物就好了。不管是狗还是猫...我存在的意义，根本无处可寻。[p]
#
[stopse  time="1000"  buf="0"  ]
我现在终于觉察到了她内心深处的东西。[p]
米菈有的仅是孤独。多年孤单一人的记忆。[p]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*10"  text="米菈……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*10"  text="你……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*10
;//////////////////////////////
[bg  storage="23-2.png"  time="1000"  ]
#mira
「我不应该回去那个人的身边。是你的话...应该明白这个意义吧？[p]
#
[stopse  time="1000"  buf="0"  ]
难得表现出消极态度的她。平时总是用开朗的语调鼓励我的她。[p]
我微微点头，等待米菈接下来的话语。[p]
[bg  storage="23-3.png"  time="1000"  ]
#mira
「...[p]
#mira
「･･･但是。[p]
[bg  storage="23-4.png"  time="1000"  ]
#mira
「总有一天...会原谅妈妈的事情吧。就算那份爱...就算那并非真实的。[p]
#mira
「･･･只是，不会回家。我还有必须要做的事没完成。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*11"  text="但是……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*11"  text="为什么……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*11
;//////////////////////////////
[bg  storage="23-3.png"  time="1000"  ]
#mira
「･･･这样就够了。[p]
#
[stopse  time="1000"  buf="0"  ]
此刻确实在烦恼着，她也一样。和我同样处于叛逆期中。[p]
正用整个身体挣扎着想要表达自己的生存方式。[p]
[bg  storage="23-4.png"  time="1000"  ]
#mira
「真守...现在我正朝着一个目标奔跑。以周围视界都被遮蔽的气势，拨开人群追寻必须抵达的未来。你也，是这样吧？[p]
#
[stopse  time="1000"  buf="0"  ]
･･･我想等待。月观女士一定也这么想。[p]
或许无法立即和解，但还可以重新来过。[p]
待时日流逝冷静下来时...那时再重新划清界限，不是「家人」而是作为「他人」。就像面对素不相识的外人那般。[p]
[bg  storage="23-2.png"  time="1000"  ]
#mira
「等这趟旅程结束之后...我会正式回去的。[p]
#
[stopse  time="1000"  buf="0"  ]
留下这句话，她转身背对我迈步离去。[p]
和往常无异的背影。[p]
那道身影甚至让人感受到她坚定的决心。[p]
她总是坚持正确的道路。时刻贯彻自己心中的正义。[p]
未来，也一定如此吧。[p]
･･･只能这样做下去了。[p]
拯救地球的话，那个重担就能卸下了吧。[p]
我如此强烈期盼着，握紧了拳头。[p]
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
[bg  storage="bg14.png"  time="1000"  ]

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

;//////////////////////////////////////////////
;夜会話　メメたん
虽然躺到了床上...但心神不宁怎么也睡不着。[p]
今天又会做奇怪的梦了吧。[p]
睡着后，伊迪雅会不会又来陪睡呢。[p]
啊啊，完全静不下心。我这是怎么了。[p]
我仅有的优点不就是入睡快这点吗。[p]
连这个都失去了的话，我就一无所有了啊...可恶。[p]
矫正闭门不出者...调解没有血缘的亲子问题...每天要做的事情越来越棘手。[p]
搞什么啊，完全理解不了这些事情具体要怎么影响未来...影响地球的存续。[p]
该不会陨石坠落和地球毁灭的消息其实都是谣言吧？说不定伊迪雅只是在捉弄我，拿我寻开心罢了。[p]
英雄游戏...[p]
璃光说过的那句话在脑海中浮现。[p]
也许，说的确实没错呢。[p]
越是细想，脑子越是清醒，反而更睡不着了。[p]
没办法。干脆去吹吹夜风吧。我这么想着走出了屋子。[p]
#meme
「咦？哥哥也睡不着吗？[p]
#
[stopse  time="1000"  buf="0"  ]
[bg  storage="26.png"  time="1000"  ]
[cg storage="26.png"]
发现芽萌独自坐在走廊边。[p]
我也若无其事地坐到她身旁。[p]
芽萌这么小的孩子，居然也会失眠吗。[p]
...等等，不对劲啊，这么小的女孩深更半夜独自在这种地方...要是遇到坏人被拐走怎么办？[p]
[bg  storage="26-3.png"  time="1000"  ]
#meme
「是不是睡觉前，咖啡牛奶喝太多了呢～[p]
#
[stopse  time="1000"  buf="0"  ]
对了，刚才她好像还和璃光一起咕嘟咕嘟地对喝来着。[p]
咖啡牛奶里也含有少量咖啡因。对小孩子来说刺激可能有点过量了。[p]
[bg  storage="26-2.png"  time="1000"  ]
#meme
「哥哥最近...朋友变多了吧？[p]
#
[stopse  time="1000"  buf="0"  ]
这突如其来的私人话题让我慌了神。应该是在说那群人的事。[p]
我哪有...什么朋友啊。根本不记得什么时候有过。[p]
[bg  storage="26-4.png"  time="1000"  ]
#meme
「太好了～芽萌一直很担心哦。要是哥哥永远都是孤零零一个人，那该怎么办呀～[p]
#
[stopse  time="1000"  buf="0"  ]
如果是指米菈、璃光和伊迪雅的话，那完全就是误会啊。[p]
[bg  storage="26.png"  time="1000"  ]
#meme
「不过看样子没问题了呢。芽萌好像有点操心过头啦。[p]
[bg  storage="26-2.png"  time="1000"  ]
#meme
「因为自从大家来家里之后，哥哥明显开心了好多嘛！[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="4sho.ks"  size="17"  target="*12"  text="怎么会"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="4sho.ks"  size="17"  target="*12"  text="哪有这种"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*12
;//////////////////////////////
骗人，怎么可能。那些人来了之后，我只觉得吵闹的自信可是有的啊。[p]
[bg  storage="26-4.png"  time="1000"  ]
#meme
「是真的！哥哥昨天也好今天也罢，人家都看到你一直在偷笑呢。[p]
#meme
「所以呀，芽萌就在想，哥哥和大家在一起果然很开心吧！[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
真是败给她了。为什么我的细节她都知道得这么清楚啊？[p]
明明年纪还小，却比我自己更了解我吗...芽萌她。[p]
[bg  storage="26-3.png"  time="1000"  ]
#meme
「流星呀，什么时候才会划过呢？[p]
#
[stopse  time="1000"  buf="0"  ]
不知是聊腻了还是怎样，不知何时芽萌已抬头寻找起夜空中的星辰。[p]
[bg  storage="26-2.png"  time="1000"  ]
#meme
「很久很久以前，我们也一起见过流星对吧？[p]
#
[stopse  time="1000"  buf="0"  ]
虽然她怀念的样子让人有些愧疚，但我实在没什么印象了。[p]
#meme
「那时候流星划过天际...就像前几天那样，整座镇子都突然亮了起来哦。[p]
#
[stopse  time="1000"  buf="0"  ]
美好的回忆，总是与痛苦的过往一同封存在心底。[p]
因为一旦想起，那些讨厌的事情也会跟着涌上心头啊。[p]
[bg  storage="26.png"  time="1000"  ]
#meme
「有没有可能，那次也是UFO呢？[p]
#
[stopse  time="1000"  buf="0"  ]
听着芽萌的闲聊，困意渐渐袭来。一不小心就打起了哈欠。[p]
[bg  storage="26-3.png"  time="1000"  ]
#meme
「真是的！哥哥根本没在认真听芽萌说话嘛！[p]
#
[stopse  time="1000"  buf="0"  ]
这样的平凡日常...究竟还能持续多久呢。[p]
;////////////////////////////////////////////
;////////////////////////////////////////////
;////////////////////////////////////////////
[vostop]
[free_layermode  ]

;次の章へ飛ぶ
[jump  storage="5sho.ks"  target="*first"  ]


