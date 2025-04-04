*first
;CG開放
;[cg storage="t1.png"]

[cm  ]
[clearfix]
[start_keyconfig]

;/////////////////////////////////////////////////

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
[bg  storage="ct4.png"  time="1000"  ]
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

;////////////////////////////////////////////ボイス設定
; [voconfig]
; #ねこ、#カラス、に反応して音声の連番ファイルを再生する〈設定〉を行います。
; この時点では〈設定〉だけです。

[voconfig sebuf="0" name="sriko" vostorage="riko/{number}.ogg"  number="1"]
;３まで
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="58"]
;33まで
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="60"]


; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

;/////////////////////////////////////////////////
;万華鏡ステラ/EP3
;■EP3　リコ子編「凄腕ハンター登場」
;////////////////////////////////////////////
;学校の悪夢
#
全班同学都坐在座位上鸦雀无声。[p]
这星期，地狱般的时间又来了。又要被迫面对...[p]
被老师点名的学生得就议题做即兴演讲。[p]
至少要讲一分钟，必须简洁地总结观点进行发表。[p]
简直就是种酷刑。[p]
为什么要把这种痛苦强加给我们...老师当时是这么解释原因的——[p]
『学生时代就要多练习当众演说。等进入社会肯定会派上用场的』[p]
『现在让你们多适应，长大后才不会受罪。等你们将来，肯定会感谢我的』[p]
老师，谢谢您......这样吗?[p]
看她这样用花言巧语控制班级的样子，觉得大人真可怕啊。完美地操控着我们。[p]
但这根本是多余的关怀，这种事导致孩子们对『发表』这个词产生心理阴影...老师根本想不到吧。[p]
误以为自己的想法才是绝对正确的，变得非常缺乏同理心。[p]
「...有没有自愿发表的？[p]
老师一开口，教室瞬间陷入死寂。[p]
没人举手。大家都不想被点中。全都错开视线避免与老师对上眼。我也一样。[p]
根本没人会自愿举手吧...老师的个人偏执，在大家看来完全是多管闲事。[p]
「没人吗？[p]
谁来...随便谁来当牺牲品吧。大家都不想让老师发火吧，接下来就糟糕了。[p]
老师是在测试我们的积极性。在考察我们的成长空间。[p]
算我求你们了...那边平时发言很积极的同学。嘿，擅长表现的孩子。该轮到你们了吧？[p]
...巡视全场，但所有人都低着头避开视线。[p]
突然意识到老师正用蛇一般锐利的眼神瞪着我。[p]
糟了，刚才东张西望太明显了吗？[p]
要...要被点名了。我要被点到了...怎么办，到底要说什么才好。[p]
搞不好这就是老师打算矫正我这种阴暗性格的计划。[p]
所谓爱的鞭策。真是多管闲事...或者纯粹在找茬罢了。[p]
「星海，你来。[p]
老师带着愠气的声音。冷酷地叫出我的名字。[p]
果然被点名了。完蛋了...怎么办，完全没准备啊。[p]
今天的主题是『足球』...完蛋了，我不看电视也不爱运动，对足球一窍不通啊。[p]
突然想起老师平时总说要我们多看新闻。原来应在这里了。[p]
完全没按老师说的做，根本毫无知识储备。真是没用的差生啊，完全不了解世界杯啊日本队什么的...[p]
家里根本没条件关注这些娱乐和兴趣，也不是能安心看电视的环境。[p]
无法无视老师的点名。摇摇晃晃站起来，嘴巴开合着想说什么。[p]
半个字都挤不出来。那个...这个...[p]
究竟该说什么？怎样回答才正确？大脑陷入极度混乱完全无法思考。[p]
全班人的目光像刺一样扎在背上，刺痛难忍。[p]
虽然一点一点地编织着话语，但那些句子的意义肯定没有连贯起来。语法根本不成立。不行，这样不行啊...又要被训斥了。[p]
快些、让这一分钟过去吧...神明大人，求您了。无论如何都想结束这段。笨拙些也没关系。只要熬过去就能暂时不用被点名了。[p]
啊真希望此刻地球立刻爆炸之类的，为何这个人会是我们班的班主任呢之类的，要是学校遭遇灾害停课就好了之类...毫无关联的念头在脑海不停打转。[p]
就这样抓着我这个毫无人生经验、连自我意志都不成熟的孩童，老师您到底想做什么啊。[p]
此时我的大脑已经陷入恐慌。句子刚浮现就消失，在化为言语前就从脑海中溜走。这种状况下，根本不可能冷静思考...[p]
说着说着，自己渐渐察觉到声音变得像是要哭出来。[p]
没法顺利发出声音。喉咙被紧张压得扭曲变形了。[p]
挤出颤抖的声音，强忍着泪水。[p]
「星海君，声音那么小完全听不见啊。[p]
不是老师说的。是某个同班同学这样喊道。[p]
那句话成了致命一击。真的不行了。[p]
我的大脑一片空白，眼球上翻，感觉天旋地转。[p]
视野收束，意识逐渐远去。[p]
仿佛身处水中，远处传来惊呼和慌乱的脚步声。[p]
啊，我居然晕倒了。到底在做什么啊，我...[p]
[bg  storage="bg4.png"  time="1000"  ]
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu_VP8.webm"  ]
――『你觉得这样就能赎罪了吗？』[p]
不知从何处，传来这句话的余音。脑海中朦胧的光晕，将我照亮。[p]
⋯⋯[p]
映入眼帘的尽是镜面。[p]
除了我之外，没有人...在吗？呐。谁啊，回应我啊。[p]
在只有镜子的空间里，我的声音在回荡。[p]
镜中倒映出六个分身，正朝着我的方向注视。[p]
什么鬼啊。[p]
别看着我啊。[p]
看得越久越发觉，这副身躯多么可笑滑稽。[p]
再次确认自己是如此卑贱的存在。怎么回事啊，原来我是这般老套的模样吗？[p]
⋯⋯[p]
再次睁开眼时，已经躺在保健室的床铺上。[p]
紧闭的窗帘外面，传来对话声。[p]
「听说是在课堂上被老师点名回答不上来才昏倒的。[p]
保健老师的口吻完全是公事公办。...不，正因是外人所以保持着客观态度吧。[p]
妈妈仅仅回答着：是吗，给您添麻烦了真是抱歉。[p]
毫无关心的回应。即便看到我倒下，也掀不起一丝情绪波动吧...或许连失望都算不上吧，毕竟早就对我绝望了。[p]
完全不会担心吧。根本无动于衷吧。对我没有任何感情存在吧...[p]
毕竟和芽萌不同，我就是个残次品啊。[p]
妈妈或许觉得我不回家反而更幸福呢。[p]
碍眼的小猪逃走的话，也许会觉得'啊太好了'对吧。肯定是这样的吧。[p]
虽然痛恨连我自己都这样想，简直是不合格的子女。但事实终归是事实。[p]
不被父母爱着，在孩子的角度看实在是残酷啊。轻而易举就想到了断这条命。自杀该怎么做呢。[p]
但我知道问题出在自己身上啊...所以什么都说不出口。要是现在立即消失，大家都会原谅我吗？[p]
...当时要是永远那样醒不过来就好了。[p]
那样的话...[p]
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
[bg  storage="ic3.png"  time="1000"  ]

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
[bg  storage="bg12.png"  time="1000"  ]

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

;////////////////////////////////////////////
;2.過去編各キャラ過去エピソードとか
我现在玩的是一款多人在线射击FPS游戏。[p]
这款名为『ABA ONLINE』的网游。[p]
玩家化身士兵，体验战争模拟般的世界观。[p]
与敌方玩家展开枪战对决的常规网络游戏。[p]
在网络冲浪时偶然瞥见的广告中发现。[p]
FPS这种小众类型，我原本很少接触，偶然尝试了一下，竟意外地感觉有趣。[p]
这款游戏不需要练级、氪金道具、装备等任何要素。[p]
唯一需要的就是自身技巧，实力决定一切。[p]
;変更
[chara_mod  name="sriko" face="_1"]
;立ち絵表示
[chara_show  name="sriko"  time="1000"  wait="true" reflect="false"  ]
我操作的角色名为『疾风RICO』。[p]
我现在是这个战争世界的顶尖玩家。[p]
经历过无数战场厮杀，曾与不计其数的对手交锋。[p]
在掌握各种战术思路与精湛技巧的我面前，一切对手都形同虚设。[p]
所有地图机制了然于胸，这片战场尽在掌控。[p]
穿透薄墙的穿射枪法，突破清场后的终结一击。[p]
起初笨手笨脚，熟练后发现也没那么难。原本不擅键鼠操作的自己也能蜕变，努力就能突破极限。[p]
成功击杀敌人的瞬间，那感觉真是酣畅淋漓。[p]
预判对手动向全神贯注地调整准星。[p]
敌人会从这里露头，只要在此处投掷手雷，看吧，人头全部归我所有。[p]
现实中虽只是个平凡无奇的普通女生。[p]
但从孩提时代就深深热爱游戏。[p]
FPS是接触《ABA ONLINE》才初次尝试。作为游戏宅或许该接触更多类型，但...谈何容易。[p]
我最擅长动作和RPG类。能沉浸在这些游戏特有的世界观里最棒了。[p]
像模拟经营这类需要细心操作的养成游戏，其实不怎么擅长呢。[p]
⋯⋯[p]
成为上班族后，每天下班回家第一件事就是打开电脑电源。[p]
跟公会打过招呼，在歼灭战里调整好准星后...好，实战开始。[p]
;変更
[chara_mod  name="sriko" face="_4"]
#sriko
「今天的阿璃，可是有些不一样的哦。[p]
#
[stopse  time="1000"  buf="0"  ]
为这个游戏狠下心配置了顶级设备，现在的我可是职业玩家风范。[p]
完全没有任何延迟卡顿，跟以前那种垃圾配置相比...简直大相径庭。不，根本是另一个次元。感觉自己身处异世界。[p]
没错，这台能让我发挥百分百实力的机器，是我的骄傲。[p]
在别人看来，或许会觉得不过是个游戏居然投入这么多金钱和时间，像个傻子似的。[p]
步入社会后的第一份工资全都用在电脑上了。[p]
每天的饮食随便对付，化妆也不如求职时期讲究，现实生活已经越来越无所谓了。[p]
看来我沉迷这个游戏的程度，远超自己原以为的状态。[p]
仿佛被什么附身般，没日没夜地沉迷其中。[p]
工作...都是为了享受游戏。为了氪金。这些就是我的动力，能让我咬牙克服所有艰辛。[p]
通过日复一日的练习，我的操作越发精湛。[p]
以惊人速度超越了公会的前辈们，再没有人能追上我的步伐。[p]
因为这里是以实力论英雄的世界，压根没有前后辈观念。[p]
抛下现实，我要在这个世界里成为英雄。成为最耀眼的存在！[p]
如果像普通人一样过着灰暗的日常，那根本不需要什么现实。[p]
变强后得到周围认可的我脱离新手公会，终于如愿加入向往的公会。能真切感受到自己已拥有了足够实力。[p]
公会成员虽然境遇不同，但都是好人。[p]
有还在上学的，专职主妇的，无业的⋯⋯也有像我这样的上班族。[p]
大家性别性格迥异但团队战时默契十足，语音聊天每天都热闹又开心。这里是最棒的公会。[p]
和兴趣相投的人聊喜欢的游戏，喜欢钓鱼的、热衷音乐的。屏幕那端的玩家们教会了我未知的世界。[p]
每天变得五彩斑斓。登录后转眼一天就过去了。[p]
太开心了⋯⋯这样的归宿，在现实中根本找不到。[p]
有人说网游是浪费时间。[p]
游戏里赚的钱在现实毫无作用。确实如此。[p]
即便掉落稀有武器获得声誉⋯⋯镜子映照出的仍是可悲的自己。[p]
但我否认，我不需要现实。[p]
;変更
[chara_mod  name="sriko" face="_9"]
#sriko
「因为这里⋯⋯是这么让人快乐的世界啊⋯⋯」[p]
#
[stopse  time="1000"  buf="0"  ]
我在此找到了唯一的价值。[p]
能让自己闪耀的地方。[p]
谁都追不上我。在这里我就是最强者。[p]
公会战绝不落败。语音指挥配合默契的团队碾压取胜。[p]
终有一天我要称霸全球玩家排行榜前排。[p]
每次收到公会伙伴的祝贺，我就能肯定自己的努力⋯⋯投入的时间，花费的金钱⋯⋯[p]
;変更
[chara_mod  name="sriko" face="_2"]
#sriko
「我是支撑这个公会的⋯⋯荣耀的战士。」[p]
#
[stopse  time="1000"  buf="0"  ]
第一次有了能向人夸耀的资本。原来我有这样的才能。[p]
带着排名者的骄傲，每日每夜鏖战射击场。[p]
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
[layermode_movie  mode="screen"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="waku_VP8.webm"  ]
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

;////////////////////////////////////////////
;3.接触編 朝カーテン
做了末日的梦。[p]
#mira
「这里，看不见星辰呢。[p]
#
[stopse  time="1000"  buf="0"  ]
梦见畅游浩瀚星海。万华镜般粲然闪烁，水面摇曳。[p]
#mira
「不对⋯⋯闭上眼你应该也能看见。[p]
#
[stopse  time="1000"  buf="0"  ]
非常⋯⋯美丽。[p]
闭眼后浮现在视网膜的银河。[p]
铭刻在我记忆与基因中的景色。[p]
我就像要回忆起什么般，拽动记忆的藤蔓。[p]
总觉得藤蔓尽头系着重要的东西。[p]
拼命拉扯却望不到终点。[p]
为何会做这样的梦呢。[p]
莫非是因为昨晚和米菈去了天文馆？[p]
#mira
「宇宙无尽延展，众生皆为星屑。我们的基因镌刻着银河碎片。[p]
#
[stopse  time="1000"  buf="0"  ]
说不定⋯⋯确实如此呢。[p]
为什么会对从未见过的景致感到怀念？[p]
那处的构图色彩甚至细节，都仿佛深藏心底。[p]
或许我们只是按伟大意志在行动⋯⋯[p]
这就是所谓的命运吗？[p]
不，算了。想到这种可能性就觉得要崩溃了。[p]
感觉自己要不再是自己。[p]
明明身体属于自己，却仿佛被谁操控。想想就害怕。[p]
没有丝线操纵。振作点。此刻我是凭自我意志在此。[p]
⋯⋯[p]
[free_layermode  ]
;背景変更
[bg  storage="9.png"  time="1000"  ]
[cg storage="9.png"]

⋯⋯！？[p]
睁眼时伊迪雅正握着我的手。[p]
[bg  storage="9-2.png"  time="1000"  ]
#idea
「早安，真守大人。[p]
#
[stopse  time="1000"  buf="0"  ]
尽管眼前的依然是熟悉的景象，但那张陌生的面容还是让我心头一惊。[p]
我慌忙甩开被攥着的手，离她远了两步。[p]
什么时候在这的…同床共枕？这算是同床共枕吗？到底怎么回事。[p]
说起来，伊迪雅为什么一大早就出现在我家里啊…[p]
而且为什么要把我的手握得这么紧。又不是恋人。想要吐槽的地方实在太多，脑子都快转不过来了…[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*1"  text="为、为什么是你……･･･"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*1"  text="为什么来我家？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*1
;//////////////////////////////
#idea
「不记得昨天的事了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
昨晚的话…我，说了什么吗？[p]
我只记得答应过要玩救世主扮演游戏这件事…[p]
[vostop]

;////////////////////////////////////////////ボイス設定
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="62"]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="81"]
[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="52"]

[voconfig sebuf="0" name="hatenariko" vostorage="riko/{number}.ogg"  number="4"]
[voconfig sebuf="0" name="sriko" vostorage="riko/{number}.ogg"  number="18"]
[voconfig sebuf="0" name="riko" vostorage="riko/{number}.ogg"  number="33"]

[vostart]
;////////////////////////////////////////////ボイスここまで
;回想
;//////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;背景変更
[bg  storage="bg1.png"  time="1000"  ]
;変更
[chara_mod  name="mira" face="_1-1"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
;変更
[chara_mod  name="idea" face="_1-1"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
;変更
[chara_mod  name="meme" face="_1-1"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////
#mira
「喂，你之后打算怎么办？家人朋友什么的都没地方可去吧？[p]
#
[stopse  time="1000"  buf="0"  ]
天色渐暗，大家围坐着吃饭时。[p]
米菈嘴里嚼着汉堡肉，抬头问伊迪雅。[p]
[chara_mod  name="idea" face="_1-4"]
#idea
「这个嘛。或许要在真守大人家暂住些时日。[p]
#
[stopse  time="1000"  buf="0"  ]
「…等等。[p]
什么啊，这家伙居然这么鲁莽吗？真是不知分寸得有些过分…[p]
再说，芽萌肯定不会同意吧？家里要多养一个人啊？会增加很多麻烦吧。根本没什么好处。没错，芽萌怎么可能允许这种事！[p]
[chara_mod  name="meme" face="_1-5"]
#meme
「哎！要留宿吗？太好啦～！爸爸妈妈不在这段时间好寂寞，大家在的话肯定会很热闹嘛～！[p]
#
[stopse  time="1000"  buf="0"  ]
居然这么高兴…[p]
看样子芽萌是把这当成过夜聚会来期待了。原来如此…[p]
[chara_mod  name="mira" face="_1-5"]
#mira
「对啊对啊～人多才热闹嘛！所以本小姐也要借住一阵子，请多指教啦～！[p]
#
[stopse  time="1000"  buf="0"  ]
等等！为什么那个粗野女也要趁机凑热闹啊！？[p]
[chara_mod  name="meme" face="_2-3"]
#meme
「哇～米菈姐姐也一起呢！从今天开始肯定会超开心对吧～！是吧，哥哥！[p]
#
[stopse  time="1000"  buf="0"  ]
『是吧，哥哥』才怪…[p]
开什么玩笑…要是被这群吵闹的家伙围着，我就没法安心打游戏了啊。还有作业也…[p]
唉。往后的日子可真是难熬…[p]
;回想おわり
;//////////////////////////////
;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
;背景変更
[bg  storage="bg8.png"  time="1000"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]
;//////////////////////////////
;変更
[chara_mod  name="idea" face="1-4"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
…对了。[p]
这些家伙是要寄宿在我家的吧。严格说来应该是寄人篱下对吧。[p]
不光是伊迪雅，就连米菈都要住进来。真是搞不懂了。[p]
虽然也想过真是个厚脸皮的家伙…不过要是她能再做一次那个担担面的话，原谅她也行。不过就算做了肯定还是会被伊迪雅抢走吧。[p]
[chara_mod  name="idea" face="2-2"]
#idea
「昨晚睡得好吗？从今天起，真守大人就要作为救世主履行使命了，请好好努力。[p]
#
[stopse  time="1000"  buf="0"  ]
像是要强调这点似的，伊迪雅逼近我。[p]
[chara_mod  name="idea" face="default"]
#idea
「毕竟这颗星球的命运…就系于您一念之间了。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*2"  text="我知道的･･･"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*2"  text="不用说我也知道"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*2
;//////////////////////////////
我敷衍着回应。[p]
撇开眼神炽烈的她不管，我走下楼梯朝客厅走去。[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="bg15.png"  time="1000"  ]
;変更
[chara_mod  name="mira" face="1-4"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「哟～一大早打情骂俏呢？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*3"  text="别拿我开玩笑･･･"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*3"  text="你在说什么？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*3
;//////////////////////////////
顶着乱糟糟睡毛的米菈看见我，揶揄地说。[p]
[chara_mod  name="mira" face="1-2"]
#mira
「那家伙昨晚说要睡在你房间，自己从主卧搬出去了哦。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
「…哈！？[p]
这么说起来，刚才才不是什么『专程来叫醒我』之类的戏码…[p]
难道说…从昨晚就一直保持那种状态了？[p]
趁我睡着的时候，半夜偷偷摸上床…？不不，我们又不是在修学旅行。对纯情少年做什么呢。这可怎么办。[p]
真是的。那个女人到底在想什么啊…[p]
[chara_mod  name="mira" face="1-10"]
#mira
「…所以，得手了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*4"  text="哪有这种事･･･！"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*4"  text="别开玩笑了！"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*4
;//////////////////////////////
[chara_mod  name="mira" face="2-4"]　
#mira
「嘿～…[p]
#
[stopse  time="1000"  buf="0"  ]
这混蛋…[p]
挂着诡异的贱笑，一副看人笑话的模样。[p]
这家伙肯定认定了我是个缺乏女性经验的处男。虽然这是事实…但果然不甘心…[p]
[chara_mod  name="mira" face="_2-4"]　
;変更
[chara_mod  name="idea" face="_1-1"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「早安，米菈大人。我和真守大人绝对没有您想象的那种关系。[p]
[chara_mod  name="mira" face="_1-2"]　
#mira
「是嘛是嘛，那怀疑你们真是不好意思啦～[p]
#
[stopse  time="1000"  buf="0"  ]
伊迪雅依旧面无表情地略过了米菈的调侃。[p]
可是发生那种事情还能保持面无表情…说不定她根本就没有情感这种东西。[p]
[chara_mod  name="idea" face="_1-5"]
#idea
「我们并没有不正当关系。我和真守大人不过是…『命中注定之人』的关系。[p]
#
[stopse  time="1000"  buf="0"  ]
所以说了这样解释反而更糟糕啊！这人怎么还能面不改色地说这种话…[p]
[chara_mod  name="mira" face="_1-5"]　
#mira
「啊哈哈哈！真受女孩子欢迎啊～真守。太好了，你这家伙终于迎来春天啦！[p]
#
[stopse  time="1000"  buf="0"  ]
别再玩弄我纯真的小心脏了…啊，自从她们来了就没一天安生。真是吵死了。[p]
赶紧让我回到原来的和平日常吧…[p]
[chara_mod  name="mira" face="_1-8"]　
#mira
「哦对了，大事不好了。[p]
#
[stopse  time="1000"  buf="0"  ]
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="bg1.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="wakudance.ogg"  ]
;///////////////////////////////////////////
;クーラー事件
;BGM wakudance
;///////////////////////////////////////////
;変更
[chara_mod  name="meme" face="_1-6"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「啊，哥哥。从早上开始空调君就罢工了，好像是坏掉了。[p]
#
[stopse  time="1000"  buf="0"  ]
开什么玩笑…！？[p]
[chara_mod  name="meme" face="_1-9"]
#meme
「维修工说傍晚会来。空调君一定也是热得受不了了呢～[p]
#
[stopse  time="1000"  buf="0"  ]
现在不是悠哉吐槽的时候吧…[p]
这、这是什么人间惨剧…居然要在这种高温下熬一整天。[p]
;変更
[chara_mod  name="mira" face="_1-8"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「怎么办啊真守！我都快被烤成木乃伊了！[p]
#
[stopse  time="1000"  buf="0"  ]
…嗯。倒不如说那样的话家里就能安静下来了吧…！[p]
[chara_mod  name="meme" face="_1-1"]
#meme
「真的好热哦～伊迪迪没问题吗？[p]
#
[stopse  time="1000"  buf="0"  ]
;変更
[chara_mod  name="idea" face="_1-4"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「没问题。因为我是思念体，所以并没有实体，感觉不到炎热哦。[p]
#
[stopse  time="1000"  buf="0"  ]
骗人！昨天你差点中暑晕倒是怎么回事啊！还有担担面的仇…我可没忘记。[p]
[chara_mod  name="meme" face="_1-5"]
#meme
「真的假的！？太棒了！芽萌要是也能成为思念体就好了～[p]
#
[stopse  time="1000"  buf="0"  ]
天真的妹妹依旧对什么都感到新奇雀跃。能不能分一点这种没心没肺给我啊…[p]
[chara_mod  name="mira" face="_1-1"]
#mira
「那个…思念体到底是什么啊？[p]
[chara_mod  name="idea" face="_1-5"]
#idea
「我的肉身早在遥远的过去就消亡了。现在的我是仅存精神的存在。[p]
[chara_mod  name="meme" face="_2-8"]
#meme
「哎？可是伊迪迪是可以摸到的啊？确实在这里嘛！[p]
[chara_mod  name="idea" face="_1-2"]
#idea
「就像亿万年前燃烧殆尽的遥远星光还能被地球上的人观测到一样…我也只是往昔燃烧过的生命残光。虽然看起来有实体，但实际上存在的…只有我的思念而已。[p]
[chara_mod  name="meme" face="_2-7"]
#meme
「唔诶～好难懂。芽萌完全听不懂呢。[p]
#
思念体什么的虽然难以置信…但世界总是充满不可思议之物。[p]
[chara_mod  name="mira" face="_1-5"]
#mira
「哦哦！这个我有听说过！地球看到的星光都是远古时期燃烧过的恒星之火呢。[p]
#
[stopse  time="1000"  buf="0"  ]
夜晚仰望星空时看到无数繁星闪烁。据说那些都是亿万年前就已燃尽的星光。[p]
看得见却触不到的光芒。看似近在咫尺实则遥不可及的光…或许伊迪雅就是其中之一…嘛，归根结底还是扯淡理论。[p]
⋯⋯[p]
吃完早餐的我们正喝着冰镇咖啡牛奶稍作休息。[p]
空调靠不住，现在唯一值得信赖的只有冰箱。[p]
早餐是米菈特制的味增蘸面。在这么炎热的天气里，还是冷食最让人胃口大开。[p]
[chara_mod  name="meme" face="_1-4"]
#meme
「呼——吃饱了！真好吃啊。[p]
[chara_mod  name="mira" face="_1-2"]
#mira
「吃好了吃好了…肚子都撑啦！在别人家吃的饭就是香啊！[p]
#
[stopse  time="1000"  buf="0"  ]
她懒洋洋地瘫坐在椅子上，啪啪地拍着肚子。[p]
这里毕竟是别人家啊…你就不能稍微客气点吗？——虽然很想这样直接吐槽，但想到会很麻烦只好在心里嘀咕。[p]
[chara_mod  name="idea" face="_1-1"]
#idea
「真守大人，时间差不多到了。[p]
#
[stopse  time="1000"  buf="0"  ]
在伊迪雅的催促下，我不情不愿地起身。[p]
反正外面和家里一样热…要是能去有空调的店里待着该多好。[p]
[chara_mod  name="mira" face="_2-1"]
#mira
「喂，伊迪雅。让我也跟着去吧？这家伙一个人我可不放心。[p]
[chara_mod  name="idea" face="_1-5"]
#idea
「无妨。只要真守大人能完成使命就好。[p]
#
[stopse  time="1000"  buf="0"  ]
听到这话，米菈用眼神向我示意。我默默点了点头。[p]
[chara_mod  name="meme" face="_1-3"]
#meme
「芽萌会乖乖在家等你们哦。维修师傅要来呢——[p]
[chara_mod  name="mira" face="_2-3"]
#mira
「哦，谢了啊！拜托了，芽萌！[p]
[chara_mod  name="meme" face="_2-5"]
#meme
「好——！路上小心，米菈姐姐、伊迪雅姐姐！还有…哥哥也注意安全呀！[p]
#
[stopse  time="1000"  buf="0"  ]
这跟在后边算是怎么回事…算了不追究了。[p]
[chara_mod  name="idea" face="_1-3"]
#idea
「那么，出发吧。去履行救世主的职责。[p]
#
[stopse  time="1000"  buf="0"  ]
手里握着兔形胡萝卜冰棒的棍子，背对着挥手送行的芽萌，我们踏出了家门。[p]
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
[bg  storage="bg10.png"  time="1000"  ]

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
;町にきた
;変更
[chara_mod  name="idea" face="_2-1"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「这边请。[p]
#
[stopse  time="1000"  buf="0"  ]
被伊迪雅带到的地方，是紧邻我所住城镇的一个街区。[p]
这里有商店街、便利店、百货公司和电器城，比我居住的城镇规模更大也更繁华。[p]
平时遇到大采购需求，我们都会习惯性地来这边。[p]
然而她指示的方向并非那些闹市，而是冷清的住宅区。[p]
到底要我在这鬼地方做什么啊…[p]
;変更
[chara_mod  name="mira" face="_1-8"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「好，这就是今天的任务地点…等等，这不就是民宅吗？里面住着人吗？[p]
#
[stopse  time="1000"  buf="0"  ]
伊迪雅所指的，是个平淡无奇的普通居民住宅。[p]
[chara_mod  name="idea" face="_1-2"]
#idea
「没错。当前任务是…把这家的住户引到户外。[p]
[chara_mod  name="mira" face="_2-6"]
#mira
「说是引出来也太笼统了吧？具体要怎么做？人总不可能一直窝家里不出门吧？住的啥怪人啊？[p]
[chara_mod  name="idea" face="_2-4"]
#idea
「不然。这位住户有些特殊，已经数年未曾外出了。[p]
[chara_mod  name="mira" face="_2-7"]
#mira
「喂喂…该不会人早就死了吧？[p]
[chara_mod  name="idea" face="_2-3"]
#idea
「不，生命体征正常。她是因为活着才不愿意出门。[p]
[chara_mod  name="mira" face="_1-9"]
#mira
「哦～所谓活着才不出门啊…[p]
#
[stopse  time="1000"  buf="0"  ]
米菈越听越困惑，眉头紧锁。[p]
我也没完全理解状况，但要开口问又怕暴露愚钝只好沉默…这该死的自卑性格。[p]
[chara_mod  name="idea" face="_1-5"]
#idea
「那么…[p]
[chara_mod  name="idea" face="_1-1"]
#idea
「我能做的到此为止。[p]
[chara_mod  name="mira" face="_1-8"]
#mira
「哇靠这就推给我们了？！具体要怎么办啊？[p]
[chara_mod  name="idea" face="_1-4"]
#idea
「手段不限。只要能让住户离开这幢房子即可。具体方法就交给真守大人判断了。[p]
#
[stopse  time="1000"  buf="0"  ]
留下这句话，伊迪雅转身就要离开。[p]
;一人退場
[chara_hide name="idea"]
难道她其实也不知情？那些天马行空的理论果然是编的？之前不还装得无所不知…[p]
她哒哒的脚步声渐行渐远，显然不打算回头。看来真得自己想办法了。[p]
…不过线索实在太少。[p]
《促使该住户外出》…总之先思考对策吧。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*5"  text="总之先碰一下吧。"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*5"  text="要不要按一下门铃呢･･･"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*5
;//////////////////////////////
[chara_mod  name="mira" face="_1-5"]
#mira
「啧，想不通就先行动！[p]
#
[stopse  time="1000"  buf="0"  ]
;///////////////////////////////////////////////////
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="bg11.png"  time="1000"  ]
;///////////////////////////////////////////////////
;チャイムならす
《叮咚…》[p]
#mira
「...[p]
#
[stopse  time="1000"  buf="0"  ]
按响门铃后等待片刻，却始终无人应答。[p]
#mira
「没人出来啊。难道在睡觉？[p]
#
[stopse  time="1000"  buf="0"  ]
再次尝试按响门铃，依然没有得到任何回应。[p]
不祥的预感涌上心头。该不会...是具尸体吧？要是得把尸体搬到外面的话，我这份工作...不干了。[p]
#mira
「真守。看来我们果然被那个家伙给骗...[p]
#
[stopse  time="1000"  buf="0"  ]
米菈刚要开口，门扉突然"咔啦"一声打开了。[p]

[playse buf=2 storage="door1.ogg"]
;背景変更
[bg  storage="10.png"  time="1000"  ]
[cg storage="10.png"]

#hatenariko
「...来了。[p]
#
[stopse  time="1000"  buf="0"  ]
由于防盗链还挂着，门只开了一条小缝。银色的锁链在视野中微微晃动。[p]
感觉与门后之人四目相对了。或许正被对方审视着。室内昏暗看不清相貌，听声音应该是女性。[p]
[bg  storage="10-2.png"  time="1000"  ]
#hatenariko
「哪位？我们谢绝推销...请回吧。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*6"  text="那个……我迷路了……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*6"  text="我在这一带找住宿的地方･･･"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*6
;//////////////////////////////
眼看对方要立刻关门，情急之下谎话脱口而出。[p]
情况不妙。若是此刻被拒之门外，就什么都搞不清楚了不是吗？[p]
#mira
「对对！正如您想...我们迷路了...现在离家出走！能让我们借宿一晚吗？就一晚！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈的圆场打得实在太差。谁会信这种漏洞百出的谎话啊。糟糕。唉，开场就搞砸了。完了...[p]
[bg  storage="10.png"  time="1000"  ]
#hatenariko
「你们...到底是什么人？[p]
#mira
「那、那个是这样…[p]
#mira
「怎、怎么办真守？我们什么谈判筹码都没准备啊。[p]
#
[stopse  time="1000"  buf="0"  ]
语塞的米菈凑近我耳边低语。[p]
[bg  storage="10-2.png"  time="1000"  ]
#hatenariko
「请回吧。我现在很忙。[p]
#mira
「啊！等等！求你了！再给我们一次机会！听解释就好！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈慌忙将靴尖卡进即将关闭的门缝，一副绝不退让的架势。[p]
虽然这样一来我们的可信度暴跌，但至少避免了被当场甩门。[p]
#hatenariko
「...什么事？快点说。若是无聊的事就揍飞你们。纠缠不休的话就报警了。[p]
#
[stopse  time="1000"  buf="0"  ]
对方似乎愿意倾听。这可能是最后的机会。[p]
事已至此，与其耍小聪明不如直接说出真相。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*7"  text="其实，地球･･･"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*7"  text="一周后会发生很可怕的事情･･･"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*7
;//////////////////////////////
#mira
「或许有些难以置信，但地球很快就要灭亡了。[p]
[bg  storage="10.png"  time="1000"  ]
#hatenariko
「…[p]
#mira
「而这位...真守正在为此设法补救。[p]
#hatenariko
「...哦。[p]
#
[stopse  time="1000"  buf="0"  ]
她目光愈发锐利。别说获取信任，怀疑的神色反而愈加浓厚...[p]
#mira
「所以现在需要你的协助。求你了，能助我们一臂之力吗？[p]
[bg  storage="10-2.png"  time="1000"  ]
#hatenariko
「哈？莫名其妙。为什么阿璃必须要帮忙啊？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*8"  text="昨天，外星人……"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*8"  text="我是救世主……！"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*8
;//////////////////////////////
索性破罐破摔吧。和盘托出或许还能博取信任。[p]
我与米菈将昨天的经历原原本本告诉了她。[p]
然而越是解释，她神色中的阴霾就越发深重。[p]
#hatenariko
「够了。扮演超级英雄的过家家游戏请找小孩子去...阿璃可没空陪你们玩。[p]
#mira
「别这样！稍许帮忙都不行吗！？[p]
[bg  storage="10.png"  time="1000"  ]
#hatenariko
「不行。每天都很忙...对不起。完全不想参与这种事。[p]
#mira
「喂！这样真的好吗！？地球可能会毁灭啊！[p]
#
[stopse  time="1000"  buf="0"  ]
门后传来短暂的沉默，接着是充满弃疗意味的话语：[p]
#hatenariko
「地球毁灭的话，那样也没关系不是吗？[p]
#
[stopse  time="1000"  buf="0"  ]
[playse buf=2 storage="door2.ogg"]
;背景変更
[bg  storage="bg11.png"  time="1000"  ]
随即砰地一声把门彻底关上了。[p]
;変更
[chara_mod  name="mira" face="1-7"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]

[playse buf=2 storage="naguru.ogg"]
[quake count=5 time=300 hmax=20]
米菈用力捶打墙壁，露出不甘心的表情。[p]
#mira
「可恶...到底该怎么做才对。要怎么说才能...难道没有什么好的方法吗？[p]
#
[stopse  time="1000"  buf="0"  ]
这也难怪。任谁听到这种事都会怀疑是不是被捉弄了吧。[p]
如果对方是成年人就更不用说了，顶多会被当成孩子的恶作剧。就连我们也是半信半疑。[p]
既然知道无法得到她本人协助，那只能另想办法了...[p]
不过就算想采取行动也没有任何线索。对方的情报实在太少了。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*9"  text="去问问附近的人吧。"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*9"  text="收集一下信息吧……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*9
;//////////////////////////////
听完我的提案后，米菈啪地双手一拍。[p]
[chara_mod  name="mira" face="1-10"]
#mira
「原来如此。首先要从了解对手开始对吧！[p]
#
[stopse  time="1000"  buf="0"  ]
在附近转转，收集有关那个女人的更多情报。[p]
商店里收银的大叔。在路边闲聊的大妈们。在公园玩耍的孩子们...应该还有可能查探些消息。[p]
;背景変更
[bg  storage="bg10.png"  time="1000"  ]
[chara_mod  name="mira" face="default"]

;聞き取り調査
「啊，引笼小姐？最近这几年听说几乎不出门了。[p]
「小璃光啊。每天都在点外卖对吧。可能已经很久没出过门了。[p]
⋯⋯[p]
看来她的名字叫「引笼璃光」。[p]
一直闭门不出，日常饮食都靠外卖解决。[p]
「听说已经很久没人看见她出门了。连送传阅板的时候也要在门上加链条锁。[p]
「小璃光以前明明是个乖巧的好孩子呢...每次擦肩而过都会打招呼。好像找工作时期也很努力...是不是好不容易入职却遇到什么不开心的事呀？[p]
她过去似乎有过工作。现在情况不清楚。生活费要怎么维持？收入来源是哪里...？[p]
这已经不是普通的宅家了吧。『打死都不出门』的执念扑面而来...[p]
但为什么偏偏是她。这可相当棘手啊。[p]
「璃光姐在玩ABA哦。[p]
躲在阿姨身后的少年探出头。[p]
[chara_mod  name="mira" face="1-8"]
#mira
「ABA？那是什么鬼。[p]
#
[stopse  time="1000"  buf="0"  ]
「ABA ONLINE啦。是款网游。现在超火的不知道吗？我和璃光姐是好友哦。[p]
ABA...我对这个词有印象。[p]
[chara_mod  name="mira" face="2-7"]
#mira
「网络游戏啊...也就是说那家伙沉迷游戏才家里蹲的？[p]
#
[stopse  time="1000"  buf="0"  ]
「可能哦。因为她一直都在线上。虽然有时睡觉挂机没反应。之前还说24小时在线呢。[p]
[chara_mod  name="mira" face="2-4"]
#mira
「真的假的！真守...这可是重要情报啊。[p]
#
[stopse  time="1000"  buf="0"  ]
;少年から、フレンドコードを記した紙をもらう。
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
[bg  storage="bg8.png"  time="1000"  ]

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
;ABAオンラインをプレイすることに。
;変更
[chara_mod  name="meme" face="_1-5"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「哥哥要吃蛋糕吗？[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌咔啦一声推开门，端着两人份的蛋糕和红茶进来。[p]
;変更
[chara_mod  name="mira" face="_1-3"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「哦哦，看上去很好吃！多谢啦～[p]
[chara_mod  name="meme" face="_2-2"]
#meme
「嘿嘿，隔壁阿姨送的！夸我是会好好看家的乖孩子呢！[p]
#
[stopse  time="1000"  buf="0"  ]
想着既然空调坏了不如出去转转比待在家里强...[p]
看来妹妹不这么认为。真是个幸运星。[p]
;一人退場
[chara_hide name="meme"]
看着蹦蹦跳跳跑下楼的芽萌，突然有点寂寞。[p]
原来我不在的时候，芽萌也能好好照顾自己啊。[p]
⋯⋯[p]
视线回到电脑屏幕上。[p]
ABA ONLINE已经安装完毕，屏幕上显示着炫酷的登录界面。[p]
[playse buf=2 storage="taipu.ogg"]
熟练地创建好角色立刻登陆。[p]
[chara_mod  name="mira" face="1-8"]
#mira
「哇！屌爆了！这就是ABA吗！！[p]
#
[stopse  time="1000"  buf="0"  ]
身边的米菈一边吃着蛋糕一边凑过来看屏幕。[p]
[chara_mod  name="mira" face="2-5"]
#mira
「呜…啊哈哈哈！搞什么啊真守，你居然叫『海鼠』…这名字也太有创意了吧！[p]
#
[stopse  time="1000"  buf="0"  ]
谁让我想不到别的嘛…别笑啊，米菈。…话说你也笑过头了。[p]
[chara_mod  name="mira" face="1-5"]
#mira
「嘛，这不是挺有你的风格吗？虽然有点冷笑话过头了。[p]
#
[stopse  time="1000"  buf="0"  ]
笑太夸张了吧…。看着捧腹大笑的米菈，我一边无奈地摇头一边继续新手教程。[p]
行云流水般完成系统的考验。玩FPS的话没问题。毕竟还算有经验…[p]
不过…真的好热啊。额头的汗水不停往下滴。[p]
闷热得都快没办法集中精神打游戏了。[p]
该死，为啥偏偏在这种时候空调坏了…？[p]
;bgm止める
#hatenariko
「你应该是新手吧？要不要我带你熟悉一下？[p]
#
[stopse  time="1000"  buf="0"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="bg12.png"  time="1000"  ]
;BGM流し
[playbgm  time="1000"  loop="true"  storage="mellow_night.ogg"  ]
;変更
[chara_mod  name="sriko" face="_2"]
;立ち絵表示
[chara_show  name="sriko"  time="1000"  wait="true" reflect="false"  ]
屏幕中突然弹出的好友消息让我心头一颤。[p]
在ABA里十分罕见的女玩家。记得是要氪金扭蛋才能抽到的角色吧。[p]
名字是『疾风RICO』。[p]
…突然想到什么似的，我掏出少年给的便签核对。[p]
打开菜单，在玩家排行榜对话框里确认ID。[p]
⋯⋯[p]
没错。[p]
正如少年所言，这是引笼璃光操控的角色。[p]
[chara_mod  name="sriko" face="_8"]
#hatenariko
「难道说你是第一次玩聊天？要教你操作吗？很简单哦。[p]
#
[stopse  time="1000"  buf="0"  ]
还在犹豫该怎么应对…但或许顺势假装萌新接近她才是上策。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*10"  text="聊天是没问题的。"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*10"  text="打字不太熟练，不好意思。"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*10
;//////////////////////////////
[chara_mod  name="sriko" face="_5"]　
#hatenariko
「啊，这就对了嘛！我刚刚还在愁怎么开启聊天呢，太好啦。[p]
#
[stopse  time="1000"  buf="0"  ]
幸运的是对方似乎也认定我是新手，正打算事无巨细地指导我呢。[p]
大概这就是网游里常见的新人引导员吧…不过能在游戏中遇到这种人确实能学到不少窍门。[p]
虽然实际上我不过是装成萌新而已，她那番好心怕是要白费了。[p]
毕竟这里是互联网。彼此都被困在看不见脸的箱庭世界。[p]
浑然不觉我企图的引笼璃光，正一步步落入我的掌心…事情变得有趣起来了。[p]
#mira
「所以接下来要怎么做？真守。难道打算在游戏里说服她？[p]
#
[stopse  time="1000"  buf="0"  ]
趴在我肩上偷看屏幕的米菈发问。[p]
该怎么办呢…[p]
其实压根没想好。毕竟现实里无法接触，只能在网络世界设法接近啊。[p]
这是在劣势局面下想方设法收集情报的…我的双刃剑策略。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*11"  text="请你带路"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*11"  text="我是新手"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*11
;//////////////////////////////
[chara_mod  name="sriko" face="_2"]
#sriko
「果然是新手呀。我是疾风RICO，请多指教。[p]
#
[stopse  time="1000"  buf="0"  ]
璃光做了个鞠躬动作，应该已经把我加进好友列表了。[p]
她态度异常亲切。从界面操作到登出方法，全都耐心指导了一遍。[p]
;背景変更
[bg  storage="bg12.png"  time="1000"  ]
[chara_mod  name="sriko" face="3"]　
#sriko
「商店可以购买主武器和投掷物哦。新手推荐用…[p]
#
[stopse  time="1000"  buf="0"  ]
从新手装备推荐到训练图讲解，再到商店物品说明…简直像是要让刚接触ABA的玩家瞬间理解整个游戏体系。[p]
想必她一定费尽心思思考过『怎样才能让新手理解』的教学方式。热情得都快让人心动了。[p]
和现实中那个阴沉的璃光判若两人，不禁怀疑该不会是别人吧。[p]
[chara_mod  name="sriko" face="5"]　
#sriko
「大部分是硬汉角色，偶尔也会出可爱皮肤骗氪嘛。你看，阿璃的角色不就是这样。[p]
#
[stopse  time="1000"  buf="0"  ]
简直判若两人。今早看到的她浑身散发着生人勿近的气场——不想和他人交流、厌恶人群这样的气息。[p]
相比之下现在的她却如此生机勃勃，看起来非常快乐。[p]
这个人…真的是那个闭门不出的隱篭璃光吗？[p]
[chara_mod  name="sriko" face="2"]　
#sriko
「运营偶尔会在节日活动送限时道具的，像是万圣节、圣诞节之类的。[p]
#
[stopse  time="1000"  buf="0"  ]
这游戏的背景设定在废土世界，完全不像年轻女生会热衷的类型。[p]
但就算是这样的世界，她却能坚持每天24小时在线。到底是什么在支撑着她？[p]
能发自内心如此沉迷…反而很厉害不是吗？比起对任何事物都毫无兴趣、平淡度日的状态，这样才更有『活着』的感觉不是吗。[p]
她拥有我所缺乏的东西——享受事物的心，与对事物动心的能力。[p]
想到这里不禁对她产生了些许羡慕。[p]
;4.解決編 選択肢BAD分岐
ABAOnline这个世界其实我早年也有短暂接触过。[p]
当时处在游戏迭食状态的我总是不断尝试然后又放弃各种游戏，ABA也不过是其中一款而已。[p]
如今重见这怀念的场景可真是感慨。这是全靠玩家技术说话的残酷世界，既不用氪金也不用现充交易就能赢得优势，因为绝对公平公正——在这里唯一被考验的只有玩家的实力。[p]
标榜公平竞技的运营方针使这个MMORPG在网游界独树一帜。[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="11.png"  time="1000"  ]
[cg storage="11.png"]
#sriko
「如何？海鼠君，ABAOnline能继续玩下去吗？[p]
#
[stopse  time="1000"  buf="0"  ]
完成基础教学后，我和她在游戏内的咖啡厅稍作休息。[p]
[bg  storage="11-2.png"  time="1000"  ]
#sriko
「这里不像箱庭游戏那么和平，血腥暴力的世界观设定…很多玩家都被这样的氛围劝退了呢。[p]
#
[stopse  time="1000"  buf="0"  ]
这无可厚非嘛——我一边应和着她说的话，心里这样想着。[p]
这种硬核的FPS类网游注定无法符合大众口味，必然是面向特定群体的作品。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*12"  text="RICO真的喜欢ABA呢"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*12"  text="对于RICO来说，ABA是什么呢？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*12
;//////////////////////////////
[bg  storage="11-6.png"  time="1000"  ]
#sriko
「ABA对我来说…就像是人生的缩影吧。这是有生以来第一个让我觉得可以被接纳的容身之所…大概就是这种感受。[p]
#
[stopse  time="1000"  buf="0"  ]
从她发来的文字中，我能感受到孤独。[p]
到底是什么让她深陷其中呢？明明现实里并没有被排挤，却能彻底抛开一切沉溺在网络世界的原因。[p]
…或许是因为寂寞吧。当发现现实中得不到的满足感能在虚拟世界获得时才会如此投入。[p]
[bg  storage="11-5.png"  time="1000"  ]
#sriko
「要是你也能喜欢上ABA的世界就太好了…[p]
#
[stopse  time="1000"  buf="0"  ]
我因为犹豫不知如何作答而陷入短暂的沉默。[p]
像她这样全身心投入是因为心中有热情吧——可我并没有这样的余裕。喜欢与否倒是另说。[p]
我从来都不具备能全身心投入某事的能力。所以在网络上都无法交到朋友，没有哪个公会愿意收留我，最终只能黯然弃游。[p]
无论是我的为人处世还是游戏水平…都没能让任何人产生兴趣。亲生父母都是如此。[p]
[bg  storage="11-4.png"  time="1000"  ]
#sriko
「海鼠君在现实很忙吗？说来…下次要不要见面聊聊天呢？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*13"  text="我会好好考虑的"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*13"  text="是啊……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*13
;//////////////////////////////
#sriko
「真的？好开心！那我们约定好了哦。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*14"  text="现实中的你是什么样的人呢？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*14"  text="你是女生吗？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*14
;//////////////////////////////
既然她会关心我的事情，我也尝试问起她的现实生活。[p]
对了，终于要进入正题了。有很多想了解的事情呢。[p]
[bg  storage="11-3.png"  time="1000"  ]
#sriko
「…是女生啦。如你所见就是个沉迷网游的废人宅女…很抱歉这样说自己…[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*15"  text="你是宅在家里的人，那你是怎么生活的呢？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*15"  text="你的父母呢？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*15
;//////////////////////////////
[bg  storage="11-7.png"  time="1000"  ]
#sriko
「･･･没让父母知道。存款还有些许，每个月也都有汇钱过来，暂且还过得去･･･[p]
#
[stopse  time="1000"  buf="0"  ]
虽然犹豫是否该打听，她给出的回答却直率坦诚。[p]
意外她对现实对话倒是颇为宽容。或许在网络上反而愿意敞开心扉。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*16"  text="试着出去看看吧？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*16"  text="为了换换心情，试着出去一下吧？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*16
;//////////////////////////////
[bg  storage="11-6.png"  time="1000"  ]
#sriko
「哎？･･･劝我出门看看社会吗？嗯——，一时半会儿大概很难吧。根本没那个必要。等存款快见底了，或许会去打工什么的･･[p]
#
[stopse  time="1000"  buf="0"  ]
･･･失败了吗。本以为顺着气氛就能把话题引出来，看来是我太天真了。[p]
这样会暴露我一直在执着于『出门』这件事。[p]
[bg  storage="11-2.png"  time="1000"  ]
#sriko
「哈哈･･･不过真是没想到呢。会说这种话的人，海鼠君你可是第一个哦･･･[p]
#
[stopse  time="1000"  buf="0"  ]
正担心是否搞砸了，她似乎完全没有起疑。反而让我愈发觉得她和刚才的璃光判若两人。[p]
[bg  storage="11-3.png"  time="1000"  ]
#sriko
「谢谢你担心我啦。不过没关系，现在这样就很好。虽然现实一团糟只能混日子･･･但这里是阿璃的容身之处嘛。[p]
#
[stopse  time="1000"  buf="0"  ]
这样真的好吗。･･･究竟，她真的甘心吗。[p]
无关使命。不是伊迪雅要求的。也没有人命令我这么做。[p]
和救世主的职责无关。朦胧的，却真切的･･･在我心底。想要拯救她的渴望正逐渐膨胀。[p]
在孤独的网络世界里，向我搭话的她･･･[p]
;背景変更
[bg  storage="bg8.png"  time="1000"  ]
;リアル会議
以晚饭时间为由道别，离开键盘。[p]
AFK就是Away From Keyboard的缩写。意为暂时离席，网游常用术语。[p]
;変更
[chara_mod  name="mira" face="default"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「怎么办？这家伙对ABA中毒太深了。要强制戒除的话只能切断网线、破坏设备之类的吧？比如溜进她家毁掉主机什么的･･･。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*17"  text="如果可以的话，我也不想那样做･･･"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*17"  text="应该还有其他办法的"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*17
;//////////////////////////////
[chara_mod  name="mira" face="2-6"]
#mira
「说还有其他办法，可是･･･[p]
#
[stopse  time="1000"  buf="0"  ]
个人认为，除非万不得已，不该动用非常手段。[p]
再说那种做法只能暂时隔离网络，不是真正意义上的拯救璃光吧。[p]
[chara_mod  name="mira" face="1-10"]
#mira
「不然用网恋作战如何？让她爱上你然后约现实见面之类的！不过让真守来做大概行不通？[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*18"  text="你又在拿我开玩笑吗？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*18"  text="这个嘛……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*18
;//////////////////////////////
没错，我可是毫无恋爱经验的纯情少年。否决这个提案。[p]
[chara_mod  name="mira" face="default"]
#mira
「那要改赌胜负吗？这家伙在游戏里不是顶尖强者吗？所谓的『排行战神』对吧？真守有自信赢过这种对手？[p]
#
[stopse  time="1000"  buf="0"  ]
我的话･･･[p]
;///////////////////////////
;選択
;//////////////////////////////
;せんたくし
[glink  color="red"  storage="3sho.ks"  size="17"  target="*bad"  text="只能用强硬手段来解决了"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="red"  storage="3sho.ks"  size="17"  target="*true"  text="只能靠实力来解决了"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
;//////////////////////////////
;///////////////////////////
;『力づくで解決するしかない』家に進入し、PCを破壊する。殺されます。;不法侵入してPCを破壊する。
*bad
只能强行解决･･･。[p]
没错，对方可是每日苦练的职业玩家，排行榜顶尖存在。[p]
和这种对手正面交锋无异于以卵击石。[p]
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
[bg  storage="bg10-2.png"  time="1000"  ]
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

[vostop]
;////////////////////////////////////////////ボイス設定
; [voconfig]
; #ねこ、#カラス、に反応して音声の連番ファイルを再生する〈設定〉を行います。
; この時点では〈設定〉だけです。

[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="131"]
[voconfig sebuf="0" name="riko" vostorage="riko/{number}.ogg"  number="33"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
时值深夜。[p]
待众人安睡后･･･我与米菈来到璃光家附近。[p]
我们计划潜入她的家中破坏电脑。[p]
为免发出声响，决定用钳子剪断所有电子设备的线路。[p]
虽然手段粗暴，但见效最快。[p]
作为前网游玩家本不屑此道･･･但为拯救地球，这点代价不算什么。[p]
屏息贴在墙边。屋内寂然无声。[p]
;背景変更
[bg  storage="bg11-2.png"  time="1000"  ]
;変更
[chara_mod  name="mira" face="1-6"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「该不会还醒着吧？[p]
#
[stopse  time="1000"  buf="0"  ]
小心窥探窗户。不见灯光，或许已然入睡。[p]
米菈将铁丝插进门锁孔。[p]
[chara_mod  name="mira" face="2-7"]
#mira
「真守，帮忙看着有没有人来。[p]
#
[stopse  time="1000"  buf="0"  ]
我斜眼瞥着说出这话、开始用熟练手法开锁的她。[p]
厉害啊...居然连这种事都会？到底在哪里学的这种技术。我都想请教一下了。[p]
[playse buf=2 storage="door1.ogg"]
[chara_mod  name="mira" face="1-7"]
#mira
「开了，走吧。[p]
#
[stopse  time="1000"  buf="0"  ]
...好快。不愧是粗野女。[p]
不过能如此灵巧行事，或许说她粗野是先入为主的偏见吧。[p]
我决定对她改观了。[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
;背景変更
[bg  storage="bg13.png"  time="1000"  ]
我跟在米菈身后进入屋内。[p]
屋内光线昏暗，鸦雀无声。[p]
看来确实在睡觉？选择晚上来是对的。原本想着网游废人可能通宵打游戏，但今天似乎是睡眠日。[p]
#mira
「完全看不清啊，只能用了。[p]
#
[stopse  time="1000"  buf="0"  ]
米菈嘟囔着从怀中取出两支小手电筒递给我。[p]
我们咬着手电筒，借着光亮谨慎前行。[p]
屋里只有两个房间。只有里屋装设了门，估计那边是卧室。[p]
朝没有门的房间张望。电脑果然在这边。[p]
我靠近设备，用带来的钳子剪断电源线。[p]
米菈也如法炮制。干得漂亮，几乎没有声响。明天璃光就不得不外出了吧。[p]
要是变成这种情况，她会先去哪里呢？[p]
大概会为了买替代的线材去附近电器行？[p]
这也是作战计划的一部分。为了拯救地球。别怨我啊璃光...[p]
[playse buf=2 storage="kinzoku.ogg"]
『当啷』[p]
突然响起金属撞击声和物体沉重坠地的动静。[p]
糟了。米菈这家伙弄出声音了？会被璃光发现...！[p]
米菈咬着的手电筒骨碌碌在地上滚动。喂，搞什么...快捡起来啊。[p]
总之先撤退。必须立刻逃脱...这么想着迈步时被重物绊倒。[p]
什么东西啊？怎么有这么大块的物体...？用嘴里的手电照过去。[p]
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="12.png"  time="1000"  ]
[cg storage="12.png"]
[playbgm  time="1000"  loop="true"  storage="dark_nebla.ogg"  ]
哎...？[p]
这是...什么啊...[p]
大脑瞬间一片空白。抗拒继续思考...[p]
当看到脚边倒着的米菈时不禁浑身僵硬。[p]
鲜血正从她头部...不断...流淌...[p]
怎么会...？米菈该不会是想吓唬我，开什么玩笑吧...？[p]
[playse buf=2 storage="swing.ogg"]
[wait  time="500"]
[playse buf=2 storage="naguru2.ogg"]
[quake count=5 time=300 hmax=20]
『哐当』[p]
我的头部传来钝击的剧痛。[p]
啪嗒、啪嗒，眼前有液体滴落。[p]
战战兢兢触摸额头，那里正渗出鲜红液体。[p]
啊...[p]
我...这是被打了？[p]
;背景変更
[bg  storage="13.png"  time="1000"  ]
[cg storage="13.png"]
抬头望去，站着面目狰狞的女子。[p]
她手中紧握着铁棒般的凶器。[p]
[bg  storage="13-2.png"  time="1000"  ]
#riko
「喂。这是在干什么呢？[p]
#
[stopse  time="1000"  buf="0"  ]
那冰冷刺骨的语气令人毛骨悚然。[p]
[bg  storage="13-3.png"  time="1000"  ]
#riko
「我问你们在搞什么鬼！说话啊！[p]
#
[stopse  time="1000"  buf="0"  ]
无声的空间里，愤怒的吼声激荡回响。[p]
我无言以对，只能呆看着她的脸。[p]
[bg  storage="13-4.png"  time="1000"  ]
#riko
「你他妈找死是吧！混蛋...！脑袋进水了吗！混账东西！！[p]
#
[stopse  time="1000"  buf="0"  ]
[playse buf=2 storage="swing.ogg"]
[wait  time="500"]
[playse buf=2 storage="naguru1.ogg"]
[quake count=5 time=300 hmax=20]
她高举铁棒猛力挥下。我吓得立刻闭眼。[p]
咔嚓，骨裂声响起。睁眼发现铁棒已深深没入米菈的躯体。[p]
#riko
「擅自闯进别人家里乱搞一通！畜生，畜生畜生畜生畜生啊！！！[p]
#
[stopse  time="1000"  buf="0"  ]
[playse buf=2 storage="swing.ogg"]
[wait  time="500"]
[playse buf=2 storage="naguru2.ogg"]
[quake count=5 time=300 hmax=20]
她用铁棒疯狂殴打着倒地不起的米菈。[p]
住手…别…停下来…[p]
再继续用力打的话…米、米菈她…会死的…[p]
[bg  storage="13-5.png"  time="1000"  ]
#riko
「混蛋！阿璃的…阿璃的高级显示器要怎么赔啊！！要是不能打游戏了你打算怎么办啊混账！这个混账！！[p]
#
[stopse  time="1000"  buf="0"  ]
那份疯狂何时会转向我呢…害怕得什么也做不到。什么也说不出来。[p]
#riko
「你们是明知阿璃是顶级玩家才搞这种事的吧！？谁指使的！混账混账混账啊——！！[p]
#riko
「宰了你…宰了你…绝对要杀了你……要杀了你……！！！！！！[p]
#
[stopse  time="1000"  buf="0"  ]
[playse buf=2 storage="swing.ogg"]
[wait  time="500"]
[playse buf=2 storage="naguru1.ogg"]
[quake count=5 time=300 hmax=20]
璃光挥下的铁棒，将我的头骨砸得粉碎。[p]

[vostop]
;BAD END「廃人」

@layopt layer=message0 visible=false

[bg  time="3000"  method="crossfade"  storage="bg.png"  ]

;非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]

[wait time="2000"]

;バッド表示
[layopt layer=0 visible=true]
[mtext text="BAD END「廃人」" layer="0" x="30" y="560" size="40" in_effect="fadeIn" time="5000" color="white" fadeout="true" name="mtext" out_effect="rollOut"]
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


;『実力行使あるのみ』ネトゲの腕を見せるマナコ。
*true
;///////////////////////////
[vostop]
;////////////////////////////////////////////ボイス設定
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="128"]
[voconfig sebuf="0" name="sriko" vostorage="riko/{number}.ogg"  number="40"]
[voconfig sebuf="0" name="riko" vostorage="riko/{number}.ogg"  number="57"]

[vostart]
;////////////////////////////////////////////ボイスここまで
只能战斗了吧。[p]
既然对方只能在这里生存，那我也只能在对方的领域决胜负。[p]
[chara_mod  name="mira" face="1-6"]
#mira
「喂喂，你认真的吗…[p]
#
[stopse  time="1000"  buf="0"  ]
實浪用手按着额头，露出难以置信的表情。[p]
的确，或许鲁莽了些。[p]
但用这个方法的话，对面应该也能接受。凭跟她一样的网游玩家的荣誉起誓，我…必须做到。[p]
[chara_mod  name="mira" face="1-10"]
#mira
「嘛，加油吧。不过我可真没法帮忙啊。[p]
[chara_mod  name="mira" face="2-7"]
#mira
「盯着屏幕好几个小时，确实累垮了。剩下的交给你了，真守。[p]
#
[stopse  time="1000"  buf="0"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
實浪打了个大哈欠，随意地瘫在我的床铺上。[p]
看来她是打算睡了。确实，光看别人玩游戏也会累嘛。[p]
比起被人不停说教似的助威，安静睡着反而能让我更专注。[p]
我将耳机扣进双耳，下定决心。[p]
一定能救出璃光…怀着这份信念，我决定向她发起决斗。[p]
我准备以全力回应她的觉悟。[p]
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
[bg  storage="bg12.png"  time="1000"  ]
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

;///////////////////////////
;リコ子思考
曾经拉我入坑的线下好友们，早已注销账号了。[p]
如今维系着的，只有公会成员间的羁绊。[p]
要是连现实里的自己死了，可能都没人发现吧…偶尔会有这种危险的想法浮现。[p]
最后要孤独终老吗？自己的尸体都无法被人发现，太可悲了。[p]
…不想体会那种寂寞的结局啊。[p]
作为自己存在过的证明，想留驻现世竟如此困难。[p]
;勝負を挑む 賭けをしないか
;変更
[chara_mod  name="sriko" face="_8"]
;立ち絵表示
[chara_show  name="sriko"  time="1000"  wait="true" reflect="false"  ]
#sriko
「…决斗？[p]
#
[stopse  time="1000"  buf="0"  ]
听到这个词，我和公会成员都僵住了表情。[p]
因为他这样的萌新突然抛出了奇怪的台词。[p]
『海鼠』这个突然出现的新人玩家。是为现实中的我担忧过的人。[p]
[chara_mod  name="sriko" face="_5"]
#sriko
「哎呀呀。这是怎么啦？小海鼠。[p]
#
[stopse  time="1000"  buf="0"  ]
内心动摇着，在聊天框敲出故作从容的回复。[p]
「你这家伙啊…是认真的吗。根本不了解小璃嘛。[p]
「搞什么啊。小璃可是顶尖玩家哦。你这种菜鸟怎么可能是她对手。[p]
公会成员们开始轮番嘲讽他。他们说的没错，这是理所当然的。[p]
毕竟，我…可是这个公会里最强的呀。[p]
和公会成员们在老地方闲聊时，晚饭时分才分别的海鼠君突然出现…[p]
原以为要说什么呢…太好笑了，究竟在想什么啊。[p]
可他似乎并不打算退缩。害怕吗？不想输对吧？用挑衅的话语回应着。他是认真的。[p]
[chara_mod  name="sriko" face="_7"]
#sriko
「…哈？[p]
#
[stopse  time="1000"  buf="0"  ]
无礼的发言接二连三在信息窗口弹出。在公共频道搞这种…简直是藐视一切。[p]
被他轻佻的态度激得脑门充血。[p]
为什么这个人要说这种话？是在看不起我吗？[p]
#sriko
「怎么可能是开玩笑！我特意好心劝告你...好吧，那我就动真格的了！[p]
#
[stopse  time="1000"  buf="0"  ]
对我来说算是难得的不冷静。[p]
因为被小瞧很不爽，在公开聊天室里胡闹了一阵。为了掩饰失态，赶忙发送了开朗的信息。[p]
但内心其实充满了怒火...或许自己的自尊心比想象中还要强。[p]
[chara_mod  name="sriko" face="_9"]
#sriko
「那要赌什么？...刚开始游戏所以没什么可押的对吧？可以特别允许你用真实货币。[p]
#
[stopse  time="1000"  buf="0"  ]
虽然提到真实货币，但他毫无兴趣地摇头。[p]
他要求的条件是『让疾风RICO退隐』。[p]
[chara_mod  name="sriko" face="_7"]
#sriko
「...这算什么。[p]
#
[stopse  time="1000"  buf="0"  ]
怒气无法抑制。[p]
[chara_mod  name="sriko" face="_5"]
#sriko
「什么？我反而要被新手逼到退隐？哈哈哈！[p]
#
[stopse  time="1000"  buf="0"  ]
围观群众发出欢呼声。[p]
渐渐变得骑虎难下。[p]
反正...只是游戏。大不了直接关机。[p]
从这种意义来说，我和他是平等的。才不会把那种条件当真。对吧？[p]
所以轻佻地给出了答复...但遗憾的是并没有认输的打算。压根没想过会输。[p]
因为我是公众人物。赌上网络世界的名誉，必须在大众面前与菜鸟对决。[p]
赌上「疾风RICO」这个排名玩家的尊严。[p]
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
;勝負　リコ子視点。
#sriko
「决斗条件是歼灭战。你我一对一单挑。职业选步枪手，武器用初始配置的M4A1，手雷数量相同。限定时间内击杀数多者胜。[p]
#
[stopse  time="1000"  buf="0"  ]
歼灭战是我的强项。不可能输给外行。[p]
一口气喝完能量饮料，平复着呼吸。[p]
3、2、1...倒计时结束后，响起开局音效。[p]
我立即从出生点快速脱身，贴住墙壁。[p]
[bg  storage="14.png"  time="1000"  ]
[cg storage="14.png"]
#sriko
「对方是个新手...必须保持冷静啊，阿璃...！[p]
#
[stopse  time="1000"  buf="0"  ]
暗暗告诫自己，环顾四周。应该还没摸到这边。[p]
菜鸟要么躲在阴影里怕得要死，要么笨头笨脑冲锋，无非这两样。[p]
[playse buf=2 storage="gun1.ogg"]
[quake count=5 time=300 hmax=20]
正这么判断时，突然有弹雨从天而降。[p]
[bg  storage="14-3.png"  time="1000"  ]
#sriko
「假的吧...什么时候！？[p]
#
[stopse  time="1000"  buf="0"  ]
转瞬间我的血量清零，重生回出生点。[p]
为什么这家伙...知道那条路线？那个狙击点是菜鸟绝对不会知道的隐蔽位置啊。[p]
而且用的步枪狙击？不对劲...这不可能。[p]
通常来说那个位置容易被狙击手盯上，本不该随便探头。稍懂FPS常识都知道会被爆头。这家伙...是笨蛋吗？[p]
但事实上...刚被击杀的是我。完全被偷袭的感觉。大约挨了三四枪就倒下。[p]
[bg  storage="14-2.png"  time="1000"  ]
#sriko
「肯定是哪里搞错了！[p]
#
[stopse  time="1000"  buf="0"  ]
这样想着再次出击。好，去平时的老地方。那里应该比较有利...！三面环墙，在敌人突破前就能射杀。[p]
冲出重生点，保持警戒前往目标区域，立即隐蔽起来。[p]
结果...同时有手雷落下爆炸。[p]
[playse buf=2 storage="gun3.ogg"]
[quake count=5 time=300 hmax=20]
我又被迫返回出生点。[p]
[bg  storage="14-4.png"  time="1000"  ]
#sriko
「为什么啊！！[p]
#
[stopse  time="1000"  buf="0"  ]
通常手雷需要时间才会爆炸啊。[p]
只要远离落点就不会受伤。明明应该很好躲避...[p]
但这次手雷落下的瞬间就爆炸了。･･･意味着他是在精算过距离与时间后投掷的吗？这可是连高级玩家都难以施展的高阶技巧。[p]
分明是算准我的位置『为了必杀』才投掷的。[p]
简直像是看透了我的思维动向和位置。[p]
血液逐渐冲上脑门，冷静不下来。糟糕･･･本以为是个菜鸟就疏忽大意，看来必须动真格了，否则会被干掉的。[p]
[playse buf=2 storage="gun2.ogg"]
[quake count=5 time=300 hmax=20]
想着这次一定要扳回一局，气势汹汹地冲出复活点的瞬间，太阳穴被从侧面射穿。[p]
[bg  storage="14-3.png"  time="1000"  ]
#sriko
「啊･･･？！[p]
#
[stopse  time="1000"  buf="0"  ]
原来他埋伏在入口侧面。[p]
这哪里是菜鸟会做的事，完全被玩弄于股掌之间･･･！[p]
卑鄙的打法。为了拿下击杀不择手段。只要能赢就行･･･对方卑劣的品性让我作呕。[p]
这次是一发･･･爆头。在这么近的距离被狙也是没办法。[p]
我又被送回重生点了。[p]
[bg  storage="14.png"  time="1000"  ]
#sriko
「该不会还呆在原地吧･･･？！[p]
#
[stopse  time="1000"  buf="0"  ]
岂能在复活点旁反复挨打，我在入口附近撒了手雷。毫无反应。[p]
为何要像个新手般畏首畏尾。[p]
这段时间我连一次都没能将海鼠击杀。憋屈･･･[p]
明明那么多玩家在观战･･･再这样下去帅气的疾风RICO就要丢人了･･･怎么办。自尊心被撕得粉碎。[p]
这里是战场。灵魂与灵魂的激烈碰撞。唯有坚信自我勇往直前之人才能存活！[p]
纠结之际，剩余时间已不足一分钟。[p]
焦躁情绪妨碍判断，反被对方利用。･･･真是悲催。这根本称不上较量，纯粹是在被当猴耍。[p]
⋯⋯[p]
记得以前也有过一次同样的经历。那时･･･[p]
[bg  storage="14-3.png"  time="1000"  ]
#sriko
「･･･邪･･･眼？[p]
#
[stopse  time="1000"  buf="0"  ]
不可能。[p]
那家伙明明早就退隐了。[p]
[bg  storage="14-5.png"  time="1000"  ]
#sriko
「搞不懂啊･･･！！为什么啊啊！！！[p]
#
[stopse  time="1000"  buf="0"  ]
面对超出预料的状况，持枪的手在颤抖。[p]
[bg  storage="14-4.png"  time="1000"  ]
#sriko
「不、不是吧…怎么可能会是他…不可能的。[p]
#
[stopse  time="1000"  buf="0"  ]
但那战斗方式･･･和邪眼如出一辙。[p]
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

;///////////////////////////////////
;プロローグ部分～続き
[bg  storage="15.png"  time="1000"  ]
[cg storage="15.png"]

#riko
「可恶！！[p]
#
[stopse  time="1000"  buf="0"  ]
昏暗房间中响起砸桌声。我剧烈喘息着死死盯住屏幕。[p]
#riko
「可恶可恶可恶可恶可恶可恶啊！！！！！[p]
#
[stopse  time="1000"  buf="0"  ]
原来即使以如今的实力，仍有无法战胜的对手。[p]
那个只会用卑鄙伎俩、一味追求『胜利』的家伙。[p]
#riko
「为什么，为什么为什么为什么啊！为什么赢不了啊…！[p]
#
[stopse  time="1000"  buf="0"  ]
突然出现的名为『邪眼』、身份不明的玩家。[p]
据6频道的曝光版消息，邪眼创建角色不到一周就登上了玩家排行榜前茅。[p]
大家似乎都和我一样嫉妒。版面上充斥着大量咒骂邪眼的帖子。[p]
那可怕的实力，甚至有人怀疑是开了作弊器。[p]
我曾与他数次交锋。[p]
原以为得手射中几发，结果转眼就被反杀。对方总是直击头部。是枪法准･･･还是极度自信？[p]
试图以策略进攻，反被将计就计。彷佛内心被读透一般。[p]
尽管我用团队战方式与公会成员们通过语音协同作战，却仍被轻而易举地击败了。[p]
不可能，太奇怪了。为什么，为什么，为什么⋯⋯[p]
明明我们的实战经验跟那些野队比起来有压倒性的优势。[p]
就在这么想着的时候，不知不觉间⋯⋯[p]
疾风RICO的排名已经跌至中段，而邪眼却跃升为顶级玩家。[p]
⋯⋯[p]
#riko
「⋯⋯好不甘心。真的好不甘心！为什么会被这样的新人超越？阿璃的实力就仅止于此吗？[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯不是这样的吧。[p]
话说回来，什么邪眼嘛⋯⋯这名字也太蠢了。中二病吗？脑子是不是有问题啊？[p]
消失吧。[p]
#riko
「要是没有这家伙的话，阿璃就能稳居第一了⋯⋯！[p]
#
[stopse  time="1000"  buf="0"  ]
不行。不能责怪别人⋯⋯[p]
单纯就是我自己实力不足⋯⋯练习量不够。必须和强者对战，变得更强。[p]
必须尽快⋯⋯尽快提升技术。连工作的时间都觉得浪费。干脆辞掉工作算了。[p]
为了登顶，没资格挑三拣四。不行、这样下去不行。[p]
24小时在线是前提。不能浪费任何非游戏时间。上厕所、洗澡、吃饭都要抓紧⋯⋯[p]
我想要赢。无论如何都要战胜这家伙⋯⋯献上所有时间，说什么都要⋯⋯[p]
要赢，证明我才是ABAonline的第一人。[p]
明天一定要击败他⋯⋯在入睡前这样对天发誓。[p]
⋯⋯[p]
第二天清晨，照常打开玩家排行榜窗口⋯⋯[p]
[bg  storage="15-2.png"  time="1000"  ]
#riko
「哎⋯⋯？[p]
#
[stopse  time="1000"  buf="0"  ]
『邪眼』的名字从排行榜上消失了。明明昨天还在的。[p]
本以为是排名骤降，拼命在榜单每个角落搜寻那个名字⋯⋯但邪眼却遍寻不着。[p]
[bg  storage="15-3.png"  time="1000"  ]
#riko
「为什么，为什么会这样⋯⋯？！为什么消失了！？[p]
#
[stopse  time="1000"  buf="0"  ]
掉出排行榜外？怎么可能。在ABAonline里顶尖玩家根本不可能轻易掉出榜单。[p]
被封禁？这也不太可能，ABAonline有着坚不可摧的安全系统。[p]
再说举报作弊玩家的人能获得奖励，所以大家都会拼命查找外挂使用者。[p]
这就意味着通常在榜单公示前，作弊者就会被举报清除。[p]
说到底他根本不是开挂的那种。他的操作虽然让人火大，但无论多么卑鄙或者恶心，都是在规则允许的范围内堂堂正正的玩法。[p]
如果想要突然从排行榜消失，除非删号⋯⋯但这是不可能的。[p]
⋯⋯删号？[p]
那个人删号了？[p]
难道真的这么愚蠢？明明只用不到一周时间就超越阿璃我们？[p]
突然出现，瞬间登顶，然后就像嘲讽般突然退出。[p]
这个混蛋难道⋯⋯[p]
#riko
「这是在嘲弄阿璃吗？！[p]
#
[stopse  time="1000"  buf="0"  ]
完全被小看了。这家伙不仅在侮辱阿璃，还把整个ABA的顶尖玩家当白痴⋯⋯不可饶恕。[p]
#riko
「开什么玩笑！！阿璃每天努力战斗可不是为了输给这种货色！！[p]
#
[stopse  time="1000"  buf="0"  ]
不可原谅。这是对我们的侮辱。完全是拿我和其他顶尖玩家当笑柄。[p]
再也压抑不住翻涌的怒火，重重捶向显示器。[p]
[vostop]
;////////////////////////////////////////////ボイス設定
[voconfig sebuf="0" name="sriko" vostorage="riko/{number}.ogg"  number="66"]
[voconfig sebuf="0" name="riko" vostorage="riko/{number}.ogg"  number="80"]
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
[bg  storage="bg12.png"  time="1000"  ]
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
;敗北
;変更
[chara_mod  name="sriko" face="6"]
;立ち絵表示
[chara_show  name="sriko"  time="1000"  wait="true" reflect="false"  ]
#sriko
「⋯⋯骗人的吧⋯⋯？[p]
#
[stopse  time="1000"  buf="0"  ]
决斗的结果，是我完全胜利。璃光甚至没能完成一次击杀。[p]
[chara_mod  name="sriko" face="7"]
#sriko
「阿璃…阿璃居然输了？为什么…明明那么努力，也完全没有放水啊！为什么会这样！？[p]
#
[stopse  time="1000"  buf="0"  ]
她现在仿佛无法相信眼前发生的事，陷入了失神状态。[p]
仅凭聊天文字就能感受到相当程度的焦虑。[p]
[chara_mod  name="sriko" face="6"]
#sriko
「怎么会…怎么会输给这样的家伙…[p]
#
[stopse  time="1000"  buf="0"  ]
顶级玩家竟然以这种方式落败…这种事真的存在吗？[p]
连自己都难以置信。世界的真实水平就是这样的吗…？还是说，我…[p]
[chara_mod  name="sriko" face="8"]
#sriko
「条、条件…对了，要是输了就引退的约定……该、该不会，真的要…[p]
#
[stopse  time="1000"  buf="0"  ]
显示屏幕上浮现出璃光用颤抖双手打出的文字。[p]
[chara_mod  name="sriko" face="6"]
#sriko
「…海、海鼠君，唯独这件事……不要啊，阿璃…要是失去这个容身之所，就真的、真的活不下去了…[p]
#
[stopse  time="1000"  buf="0"  ]
确实这里是她唯一的归属地，唯一能找到存在价值的地方。被剥夺这种事情，连想象都不愿去想吧。[p]
从明天开始，都不知该如何生存下去了吧。[p]
其实我也不愿这样做。自认能理解沉迷游戏者的心情。所以…[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*19"  text="告别宅居生活吧。"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*19"  text="从明天开始，走出家门吧"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*19
;//////////////////////////////
[chara_mod  name="sriko" face="8"]　
#sriko
「哈…？[p]
#
[stopse  time="1000"  buf="0"  ]
对我的话语，她露出无法理解其中含义的表情。[p]
所以说没关系啦。不用真的引退…我继续补充道。[p]
#sriko
「什么意思…？不、不用引退了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
她难以置信地呆坐在地上怔忡片刻。[p]
[chara_mod  name="sriko" face="9"]
#sriko
「那、那个…海鼠君。可以问个问题吗？[p]
[chara_mod  name="sriko" face="7"]
#sriko
「你该不会是…为什么会这样。总觉得…你的操作方式和我认识的某个人很相似。[p]
#
[stopse  time="1000"  buf="0"  ]
她所怀疑的事情大概是对的。我曾以另一个身份——不是海鼠——与璃光对战过。[p]
[chara_mod  name="sriko" face="6"]
#sriko
「是邪眼…对吧？真的是…[p]
#
[stopse  time="1000"  buf="0"  ]
我向她坦白了全部真相。[p]
过去曾用"邪眼"这个角色在ABA战斗的经历。成为了无人能敌的强者的事实。[p]
被现有玩家们嫉妒中伤的往事。在匿名版被人说坏话陷入低潮的回忆。[p]
无论是现实还是网络都没有立足之地，最终承受不住压力仓促退役。[p]
还有…这次为了帮助璃光走出隐居生活，我重返这个世界战斗的缘由。[p]
[chara_mod  name="sriko" face="7"]
#sriko
「这是什么意思…你就只为了这种原因…选择回归？[p]
#sriko
「别开玩笑了！阿璃…阿璃一直想成为最强才…这么拼命玩这个游戏的啊！突然冒出来的你根本不会懂这种心情吧？！[p]
#sriko
「你不都已经退役了吗…不是早就离开ABAONLINE了嘛！[p]
#sriko
「这样的你，为什么要现在用马甲装新手啊！！就为了骗阿璃一个人吗！！只是为了伤我的自尊吗…！！！绝对不可原谅…[p]
#
[stopse  time="1000"  buf="0"  ]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
在尽情宣泄后，似乎把所有想说的话都说完了的璃光直接退出了游戏。[p]
…惹她生气了。虽然自认为没有说任何谎言，全是如实相告。[p]
虽然预想到会触怒她，但为了让其真正理解…还是毫无保留地说出了全部。[p]
我只是…全心全意想要拯救你才…选择战斗的啊，璃光。[p]
[bg  storage="bg13.png"  time="1000"  ]
;外へ
「小璃终于要外出了！恭喜！[p]
刚退出游戏，聊天软件立刻收到讯息。[p]
是公会成员们发来的。[p]
「小RICO恭喜>ω<[p]
「庆贺☆小璃隐居毕业ヾ(゜▽゜)ノ\"[p]
;変更
[chara_mod  name="riko" face="2-1"]
;立ち絵表示
[chara_show  name="riko"  time="1000"  wait="true" reflect="false"  ]
#riko
「…大家。[p]
#
[stopse  time="1000"  buf="0"  ]
公会成员们正为我送上祝福。不是责备的话语，而是鼓励的言辞。[p]
･･･为什么。大家都这么温柔？明明阿璃输了却･･･还温暖地守护着我？[p]
开心得泪水在眼眶里打转。[p]
[chara_mod  name="riko" face="1-6"]
#riko
「谢谢，对不起･･･[p]
#
[stopse  time="1000"  buf="0"  ]
只是停止隐居生活就能行之类的･･･被人施舍这点怜悯实在让我无法接受。[p]
刚才一时激动说出那些纠缠般的言语･･･[p]
这样反而会伤到我的自尊心。约定就是约定。[p]
[chara_mod  name="riko" face="2-4"]
#riko
「我要退出，我･･･ABA，退役了。[p]
#
[stopse  time="1000"  buf="0"  ]
「怎么会这样･･･好寂寞啊。（；；）[p]
「不过随时都可以回来哟！？不如今晚就上线吧！笑[p]
「要是觉得辛苦就露个面吧！[p]
･･･谢谢。[p]
明天开始要好好找工作了。要凭借自己的双脚，堂堂正正站在这片土地上。[p]
直面现实，向前迈进。[p]
我啊…就算现实里一无是处，在网络世界却是英雄。绝不会输给任何人。[p]
甚至觉得过去的战果都在背后推着我前进。[p]
既然大家都在支持我，那就一定没问题。还能重新振作起来的･･･应该可以吧？[p]
;退場
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="bg2.png"  time="1000"  ]
[layermode_movie  mode="screen"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="hosi_VP8.webm"  ]
;リコ子は外に出る。
从今天起要自己做饭了。对了，去采购吧。把冰箱里需要用的食材都买齐。[p]
吃完自己做的饭，等到肚子饱饱的时候･･･泡个热水澡，涂上爽肤水和乳液，让皮肤状态也焕然一新。[p]
#riko
「･･･好怀念啊。[p]
#
[stopse  time="1000"  buf="0"  ]
夏末时节。暑气还未散尽的时候。穿着纯黑的求职套装和高跟鞋，梳理好头发。[p]
或许根本没有愿意接纳我的公司。非常害怕…[p]
自己啊，根本不知道该往哪里走。每天每天都写简历。参加面试，反复参加……不知道什么时候才会结束。[p]
只是麻木地、理所当然地…强颜欢笑。随意附和别人。违心认同，讨好别人，备受打击…[p]
#riko
「其实已经很努力了啊，我…[p]
#
[stopse  time="1000"  buf="0"  ]
原本为了ABA在生活･･･不知何时却本末倒置了。用逃避现实的方式在ABA里寻找生存意义。[p]
直到有天开始觉得，如果ABA才是现实而现实是虚假的就好了。[p]
辞去工作，靠着父母的补贴和免费领取的救济金过活。[p]
即便没有工作，明天依然会到来。明明什么都没做，肚子依然会饿。赚不到一分钱，却不能不吃饭…也不能不喝水。[p]
想着即使明天地球毁灭了也不会痛苦…反而希望那样才好…[p]
可是…这样果然是不行的对吧。那么多、那么多的时光…都白白浪费了。[p]
#riko
「能重来吗･･･？再一次･･･[p]
#
[stopse  time="1000"  buf="0"  ]
这样呢喃着，紧紧攥住了拳头。[p]
;自分のことは自分でやらなくちゃいけないし、誰にも頼れないの。やる事なす事、ぜーんぶ自己責任なの。
;誰かにもたれ掛かるんじゃなくて。自分の力で、ちゃんと生きなきゃね。
;ありがとね、マナコ君。いや…海鼠くん？ふふっ。
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

;////////////////////////////////////////////
;夜会話
站在璃光家附近时，周围只有我一人。我是被她叫出来的。[p]
等了片刻，她出现了。[p]
那个被我击败的女孩･･･疾风RI･･･不对，引笼璃光。[p]
[bg  storage="16.png"  time="1000"  ]
[cg storage="16.png"]
#riko
「叫真守･･･君对吧。[p]
#
[stopse  time="1000"  buf="0"  ]
璃光直直地盯着我看，说出了一句不该说的一句话。[p]
[bg  storage="16-3.png"  time="1000"  ]
#riko
「意外地，个子好小呢。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
能不能别提这个。[p]
作为不擅长和女生打交道的纯情男孩，再加上个子矮什么的，实在无法不在意，完全无法释怀。这种话绝对不该说出来的。特别是女生。[p]
[bg  storage="16-2.png"  time="1000"  ]
#riko
「我说啊，为什么要多管闲事？完全不能理解。[p]
#
[stopse  time="1000"  buf="0"  ]
那个是･･･[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*20"  text="为了拯救地球"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*20"  text="为了拯救璃光"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*20
;//////////////////////////////
[bg  storage="16-6.png"  time="1000"  ]
#riko
「･･･你是认真的说这些话吗？[p]
#
[stopse  time="1000"  buf="0"  ]
她似乎把我的话当作了玩笑，露出一副难以置信的表情。[p]
#riko
「真守君啊，今早也去过我家吧？说什么地球要毁灭了需要我帮忙之类的。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*21"  text="这是真的哦"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*21"  text="不是说谎哦"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*21
;//////////////////////////////
#riko
「不也挺好嘛…地球什么的随它去毁灭不就好了。反正总有一天会完蛋的世界，没必要这么拼命去拯救嘛。[p]
[bg  storage="16-2.png"  time="1000"  ]
#riko
「这么想的人应该很多吧…像阿璃这么想的人，真守君你不这么想吗？」[p]
#
[stopse  time="1000"  buf="0"  ]
…或许真是这样。璃光说得对。我也曾是和她抱持同样愿望的人之一。直到现在，我的想法也没有改变。[p]
我垂着头哑口无言的样子让她无奈地叹了口气。[p]
[bg  storage="16-6.png"  time="1000"  ]
#riko
「…真无趣。我居然会输给这种人…[p]
#riko
「不甘心啊。阿璃可是拼了命才争取到的…哪怕匍匐在地、哪怕吐血也在所不惜地努力…阿璃…阿璃本应该成为ABA第一名的…[p]
#
[stopse  time="1000"  buf="0"  ]
我真不知道该如何回应这番话。正确答案究竟是什么？[p]
我能理解她的心情。同为游戏玩家…正因有目标才会如此努力。这不仅仅是为了逃避现实，更像是我们生命中的某种修行。[p]
[bg  storage="16.png"  time="1000"  ]
#riko
「今早和你在一起的姑娘…是真守君的朋友？[p]
#
[stopse  time="1000"  buf="0"  ]
自方才起就尽是些让我难以回答的问题。[p]
虽然米菈说过我们是'挚友'之类…但总觉得自己和她之间似乎也没那么亲近。[p]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*22"  text="也许吧"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*22"  text="只是朋友而已"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*22
;//////////////////////////////
[bg  storage="16-6.png"  time="1000"  ]
#riko
「真狡猾啊真守君…我渴求的一切，你都拥有。高超的游戏水平，充实的现实生活。拥有这么多的话，分给我一点点也无妨吧？」[p]
#
[stopse  time="1000"  buf="0"  ]
然而相同的想法也存在于我心中。我同样羡慕着璃光"享受生活"的心态。那种我缺少的特质不正在她身上闪耀吗？[p]
说到底大家都只是追求自己缺乏的东西，正是因为缺乏才觉得格外珍贵。[p]
[bg  storage="16-2.png"  time="1000"  ]
#riko
「真守君也会有烦恼吗？[p]
#
[stopse  time="1000"  buf="0"  ]
烦恼啊…简直多到要溢出来了。年年都是大丰收啊。就算贱卖也卖不完呢。[p]
说起我的烦恼…当我说"暑假只剩一周就要结束"时，她扑哧一声笑了出来。[p]
#riko
「暑假…？对哦，真守君还是学生呢。所以才玩这种英雄扮演游戏啊，什么拯救世界…救赎不救赎的…[p]
[bg  storage="16-3.png"  time="1000"  ]
#riko
「真好啊，这么轻松。因为有很多时间可以玩对吧？寒假暑假…还有黄金周什么的。[p]
[bg  storage="16.png"  time="1000"  ]
#riko
「趁还是学生就尽情玩乐吧。阿璃啊…现在真后悔没多玩玩呢。[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたくし
[glink  color="white"  storage="3sho.ks"  size="17"  target="*23"  text="谢谢你的忠告"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="3sho.ks"  size="17"  target="*23"  text="我会这么做的"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*23
;//////////////////////////////
我将成年人的忠告牢记在心。[p]
等长大后…高中毕业后，我也会像大人们一样工作，开始独居生活吗？[p]
趁现在多玩玩…是吧。不过就算不说我也准备这么做。[p]
[bg  storage="16-3.png"  time="1000"  ]
#riko
「…那个啊。[p]
[bg  storage="16-4.png"  time="1000"  ]
#riko
「谢谢你，你那个英雄扮演的游戏，也是为了阿璃对吧？[p]
#
[stopse  time="1000"  buf="0"  ]
见我默默点头，她露出了淡淡的微笑。[p]
[bg  storage="16-3.png"  time="1000"  ]
#riko
「能出门走走真好。[p]
#
[stopse  time="1000"  buf="0"  ]
注视着突然明朗起来的笑颜，我感觉脸颊微微发烫。[p]
被人这样突然感谢的话…果然还是会有点害羞的吧…[p]
[bg  storage="16-5.png"  time="1000"  ]
#riko
「再约着一起玩吧，真守君…和我一起玩游戏。[p]
#
[stopse  time="1000"  buf="0"  ]
我们面带笑容，立下了重逢的约定。[p]
;////////////////////////////////////////////
;////////////////////////////////////////////
;////////////////////////////////////////////

[vostop]
[free_layermode  ]

;次の章へ飛ぶ
[jump  storage="4sho.ks"  target="*first"  ]
