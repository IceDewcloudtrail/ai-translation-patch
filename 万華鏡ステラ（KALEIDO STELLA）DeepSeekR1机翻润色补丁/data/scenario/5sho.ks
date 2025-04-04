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
[bg  storage="ct2.png"  time="1000"  ]

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

;////////////////////////////////////////////ボイス設定
[vostop]
; [voconfig]
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="89"]
[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="83"]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="166"]
[voconfig sebuf="0" name="riko" vostorage="riko/{number}.ogg"  number="111"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで

;/////////////////////////////////////////////////
;万華鏡ステラ/EP5
;■EP5　メメ編「遠い星の光」
;////////////////////////////////////////////
;/////////////////////////////////////////
;イデアを追いかける夢
滴答、滴答......[p]
昏暗阴影中的阳炎。水流声回荡之地。[p]
我追逐着眼前的女人。[p]
......啊。欲望无法停止。[p]
她甩动从头顶垂下的长发，踏着碎步向前奔去。[p]
是在害怕吗？看起来慌乱得有些反常。[p]
......想要。想要得到你。[p]
现在的干涸，只能通过这个来治愈。是的，我知道的。懂得啊。[p]
等等我。[p]
那敏捷跑来跑去的女人，简直像是在戏弄我。[p]
是在挑逗我吗？还是玩弄我呢？引诱我不断深入更深处的所在。[p]
她就是不愿落入我的掌心。为何要拒绝我。[p]
你明明也渴望着那个不是吗？为何现在要逃走。[p]
想要，我想要她。[p]
终于将女人逼入了死胡同。[p]
展开在眼前的场所没有光线。看不见天空。星星、所有的光芒都被封闭的空间。[p]
女人没有回头，像是放弃般垂下了双肩。[p]
我用力抓住女人的手，将她拉向自己身体。[p]
就像男女跳着舞。彼此都将身体交付对方。[p]
总算抓住了......[p]
成为我的东西吧......我想要你。想要得到你。[p]
然后，将你藏在谁也无法触及的地方。[p]
宇宙根源的秘藏......就在这双手中。现在终于可以慢慢品尝了。[p]
独占那份蜜液，唯有我能掌握银河的因果律。[p]
只要想想未来，窃笑就停不下来。来，这可如何是好。[p]
我所有的渴望，都在这女人体内。[p]
连获得终生的欢愉都轻而易举。[p]
可以成为任何存在。可以实现所有愿望。[p]
要让那些视我为垃圾践踏我过去的家伙都后悔。[p]
现在的我，没有什么不可能。是啊，只要有你在。[p]
女人看着沉迷其中的我，轻声说道：[p]
[bg  storage="27.png"  time="1000"  ]
[cg storage="27.png"]
#idea
「你的眼中，可曾见过星辰？[p]
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
;BGM消し
[stopbgm  time="1000"  fadeout="true"  ]
;背景変更
[bg  storage="ic5.png"  time="1000"  ]

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
[bg  storage="bg.png"  time="1000"  ]
[cg storage="28.png"]

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

;/////////////////////////////////////////
;2.過去編各キャラ過去エピソードとか
;メメ、ばーちゃんちでバドミントンしてた記憶
回想起来我曾是个......孩子。[p]
当能做些新事情时，总被大加赞扬。[p]
并不是什么特别了不起的事情。只是做了身为人类该做的事，帮忙时就会被更用力地称赞。说什么真是机灵的孩子啊。[p]
不断累积成功体验后，渐渐产生自己无所不能的错觉。[p]
我是英雄。是受父母宠爱的天才。甚至开始觉得自己已是勇士。[p]
但那荒唐的幻想，却在一日骤然落幕。[p]
[bg  storage="28.png"  time="1000"  ]
她，突然出现了。[p]
那个娇小的她，总是待在我身边。[p]
历经漫长时日，才明白那是无可取代的存在。[p]
自从她来到这个家，感觉家族的爱就被夺走了难以接受。[p]
搞什么，凭什么突然冒出来的家伙能得到爱？[p]
我呢？之前我才是最受宠的啊。[p]
只有她，独享着父母的全部关爱。被悉心照料着。[p]
这时第一次涌起了憎恶之情。原来对人的怨恨是这般滋味。[p]
她独占了一切......真令人不快。[p]
母亲对闹别扭的我说道：[p]
「你一直被宠爱到现在吧。这次轮到妹妹了。[p]
这种歪理谁能接受！该死的老太婆。[p]
父亲对耍脾气的我劝说：[p]
「毕竟是当哥哥的，要忍耐啊。[p]
就因为当哥哥这种荒唐借口就退让，怎么可能。[p]
多夸夸我啊。多捧捧我啊。[p]
⋯⋯[p]
那女人不过是个小偷。在她出生之前，我一直都很幸福。[p]
要是没有她......我本可以活在没有嫉妒的世界里！本来根本不需要碰触这种丑陋的感情！[p]
最初不过是微不足道的嫉妒。在幼小的心灵里滋生扭曲。这份扭曲将来会发展成何种形态？究竟是谁的错，是谁的责任？[p]
终日围着女儿转的父母。[p]
连看都不愿看我一眼。不知不觉间，我成了谁都不理会的存在。[p]
甚至开始胡思乱想，爸爸妈妈是不是早就不在乎我了。[p]
反正就算我死了，你们也不会难过吧。[p]
⋯⋯[p]
那丫头终于学会了走路。[p]
眼里只有我这个哥哥，用蹒跚的脚步在我身后追逐。[p]
烦死了。碍手碍脚的。别再跟着我。[p]
完全无法理解我的厌恶，她总是扬着笑脸缠着我撒娇。[p]
但我从未将这份心情直接表露。任由愚蠢的念头在心底慢慢腐朽。[p]
浑然不觉的女孩始终保持着天真烂漫的笑容。[p]
她开始用「哥哥」称呼我。[p]
妹妹......[p]
...妹妹到底意味着什么？兄长？哥哥这个称呼又算什么？[p]
难道兄长就一定高人一等？比妹妹更优秀吗？[p]
某天在公园里，我高傲地哼了一声，眨眼功夫就爬上了攀爬架顶。[p]
目睹这一切的她瞪圆双眼惊叹不已。[p]
#meme
「哥哥、好厉害！！！芽萌也要变得像哥哥这样！[p]
#
[stopse  time="1000"  buf="0"  ]
没错。我比你优秀。无所不能。在任何方面都更胜一筹。[p]
所以不需要像你那样向父母撒娇都可以啊。和你不同，我是坚强的...就算只有自己也不要紧...[p]
在渴望被爱的深渊里，我开始这样自我催眠。[p]
前空翻、单杠翻转、游泳...展示各种技巧。近乎卖弄地展现。[p]
每当这时，她总会雀跃欢呼。朝我绽放灿烂的笑颜。[p]
优秀的我成为了她憧憬的对象，渴望能与我并肩而行。[p]
不知不觉间，我开始以师父的身份自居。[p]
模仿功夫电影里的师徒关系。我是师父，她是弟子。我肩负着让她变强的责任。[p]
现在想来，这种设定多么愚蠢可笑啊。唯有这种儿戏，才能维持我可悲的自尊。[p]
家四周是郁郁葱葱的山林。我们兄妹常去各处玩耍。[p]
她总吵着要和我打羽毛球。[p]
虽然我和芽萌都是菜鸟，但两人嬉笑打闹也别有趣味。[p]
击打后追着四处乱窜的羽毛球成了乐趣。如今回想竟是那般温暖的日常。[p]
偶尔能多打几个回合，就兴奋地拍手庆祝。[p]
什么嘛。我这妹妹...还挺可爱的嘛。刚这么想着，球又飞向怪异的方向。[p]
最后挂在了旁边大树的枝杈上。[p]
#meme
「真是的！哥哥也太笨手笨脚啦～[p]
#
[stopse  time="1000"  buf="0"  ]
大概是想展现帅气的一面吧。[p]
我开始攀爬树干去捡羽毛球。[p]
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
;3.接触編 
...清晨。依旧闷热难耐。[p]
刺眼的阳光穿透窗帘，晃得我睁不开眼。[p]
本想多赖会床，可惜天不遂人愿。[p]
又做了这个奇怪的梦。[p]
梦境中的我伫立在犹如宇宙般绚丽、恍如万华镜的奇妙空间中。[p]
追逐着某个女性，渴望到浑身发疼⋯⋯[p]
正当以为已然擒获之际，不知从何处传来难以辨认的声线，对我提出莫名其妙的问题。[p]
然而梦中的我似乎明晰其中深意⋯⋯甚至能够一一作答。[p]
我们刚才⋯⋯究竟在讨论什么？[p]
⋯⋯不妙，完全想不起来。罢了，毕竟只是场梦而已。[p]
;変更
[chara_mod  name="idea" face="2-2"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「早安，真守大人。昨夜您似乎被梦魇缠身了。[p]
#
[stopse  time="1000"  buf="0"  ]
不过说起来⋯⋯自从这位女士到来后，我似乎就开始做这种令人忧心的、充满不安的梦。[p]
[chara_mod  name="idea" face="1-3"]
#idea
「请放心吧。有我在此陪伴。我始终是您的盾与剑。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯莫非在我沉睡期间，经历了某些难以言说之事？[p]
挣扎着甩开与伊迪雅相握的手掌，我强行撑起身躯。[p]
[chara_mod  name="idea" face="default"]
#idea
「淌了这么多汗，可是会着凉的。[p]
#
[stopse  time="1000"  buf="0"  ]
正如她所言，我的T恤已然被汗水浸透，一眼就能看出来湿淋淋的。[p]
这些全然拜那荒诞梦境所赐。换言之就是伊迪雅的责任。[p]
为了清洗被冷汗浸染的黏腻身躯，我大步流星地迈向浴室。[p]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  storage="bg15.png"  time="1000"  ]
;脱衣所
难得家中成员似乎都在酣眠。[p]
蹑足穿过阒寂无声的起居室。[p]
如同往常那般，在更衣间漫不经心地褪下衣衫。[p]
本想着这般邋遢大概又要遭芽萌斥责，但转念一想待会收拾便好。[p]
猛地推搡开浴室门扉。[p]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  storage="29.png"  time="1000"  ]
[cg storage="29.png"]
！？[p]
#meme
「哈啊？[p]
#
[stopse  time="1000"  buf="0"  ]
啊⋯⋯这、这是⋯⋯[p]
直面胞妹赤裸胴体的瞬间，我慌不择路。[p]
#meme
「哥、哥哥⋯⋯[p]
#
[stopse  time="1000"  buf="0"  ]
糟糕至极，生平最尴尬的事上演了。[p]
[bg  storage="29-2.png"  time="1000"  ]
#meme
「咿呀──！！！！！变态──！！！！[p]
#
[stopse  time="1000"  buf="0"  ]
[playse buf=2 storage="naguru.ogg"]
[quake count=5 time=300 hmax=20]
『砰！』[p]
正如所料⋯⋯面颊遭受重拳痛击。[p]
冲击之剧烈使得我在半空中划出弧度，重重跌落在地。[p]
明明是小女生竟有这般腕力。小妹确实成长了呢⋯⋯胸前山丘似乎也初具规模了。嗯，各种层面来说。大哥甚是欣慰。[p]
[playbgm  time="1000"  loop="true"  storage="wakudance.ogg"  ]
#mira
「怎么回事？！芽萌你怎样？发生什么了？被外星人袭击了吗？！[p]
#riko
「真是的～大清早就这么闹腾～究竟在搞什么？[p]
#idea
「诸君晨安。[p]
#
[stopse  time="1000"  buf="0"  ]
随着纷至沓来的脚步声，听闻异响的民宿寄宿者们聚拢而来。[p]
情况紧急，切莫凝视此刻的在下⋯⋯！浑身赤裸，各部位一览无余。[p]
#mira
「喂！真守这是闹哪出！光着身子躺地板上当心受凉啊！？[p]
#
[stopse  time="1000"  buf="0"  ]
直面全身赤裸仰面朝天的我，米菈的首次发言竟是⋯⋯这吐槽角度真是出人意料！[p]
#idea
「真没想到真守大人拥有这般趣味⋯⋯令人耳目一新呢。[p]
#
[stopse  time="1000"  buf="0"  ]
明明知道我是去淋浴的⋯⋯这么矫揉造作真是够了，多少也维护一下我啊。[p]
绝对在心底取笑我吧！表面装作扑克脸若无其事，实则内心狂笑不止对吧！[p]
#riko
「真是的ー！快收起下流的部位啦真守君！赶紧遮起来啊！[p]
#
[stopse  time="1000"  buf="0"  ]
对对这才是正确的反应！⋯⋯虽然自己说出这种话非常悲哀。唉，连璃光都目睹了这幅丑态⋯⋯[p]
⋯⋯于是乎。[p]
全身赤裸倒地不起展露胯间的我，被烙上变态印记⋯⋯此刻正跪坐于此接受审判。[p]
[bg  storage="29-3.png"  time="1000"  ]
#meme
「都说了多少次啦，臭哥哥！进浴室前一定要先确认有没有人嘛！[p]
#
[stopse  time="1000"  buf="0"  ]
虽然对芽萌感到抱歉，但你生气的样子一点都不吓人。可怕的其实是这种状况啊...这些寄居者们会对我做什么。[p]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="5sho.ks"  size="17"  target="*1"  text="对不起"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="5sho.ks"  size="17"  target="*1"  text="我有点迷糊……"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*1
;//////////////////////////////
#riko
「真是的，真守君太差劲了！就是想看可爱妹妹的裸体，然后再装成睡迷糊的样子蒙混过去对吧。就算能骗过芽萌萌的眼睛，也绝对骗不过阿璃的眼睛！[p]
#
璃光一边提出极端言论一边逼近我。呜呜呜...这种武断类型的最难缠了，就算想辩解她也不会听。[p]
#mira
「哎！？真的假的？哈哈哈！真守你这家伙，脑袋转得挺快嘛～！[p]
#
啊啊糟糕了。这家伙在的话话题会越来越混乱的。谁来阻止她啊...！[p]
#idea
「各位，差不多该适可而止了。真守大人应该也不是出于恶意。[p]
#
[stopse  time="1000"  buf="0"  ]
伊迪雅...果然厉害。今早你也说过是我的同伴呢！虽然我当时左耳进右耳出的。谢谢，实在太感谢了...[p]
#idea
「真守大人是变态这点，是既定事实。再怎么责备一辈子都不会改好的。所以这种争吵...本质上不会有结果吧。[p]
#
[stopse  time="1000"  buf="0"  ]
喂喂喂——！根本没帮到忙啊！这家伙果然是敌人！地球之敌！绝对是想贬低我吧！是来侵略地球的外星人！绝对没错！[p]
[bg  storage="29-4.png"  time="1000"  ]
#meme
「就是这样哦，哥哥啊～之前还把色情杂志藏在床底下呢。[p]
#
[stopse  time="1000"  buf="0"  ]
别一脸平静地说出这种重磅消息啊！快住口，别再说了...[p]
#riko
「哇，太典型了反而觉得悲哀哎...原来真有这样的男人啊...[p]
#mira
「喂喂！连我都知道避开床底啊！别沮丧啦真守，下次教你一个绝佳的藏匿点！[p]
#
[stopse  time="1000"  buf="0"  ]
米菈，你到底是用什么眼光看我的！而且大家的评论是不是太过分了！？[p]
简直就是审判现场。呜哇，这样的审判...太难受，太煎熬了...！快点结束吧...！求你们了。[p]

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
;4.解決編 選択肢BAD分岐
;メメが家出する。
;変更
[chara_mod  name="meme" face="2-7"]
;立ち絵表示
[chara_show  name="meme"  time="1000"  wait="true" reflect="false"  ]
#meme
「芽萌要出去冷静一段时间了！再见！[p]
#
[stopse  time="1000"  buf="0"  ]
她气呼呼地拉开玄关大门，朝着外面走远了。[p]
没想到...最后会变成这样。[p]
芽萌离家出走了。或者说她觉得算离家出走...[p]
虽然想着不能让那么小的孩子独自出门，但完全劝不住。[p]
[chara_mod  name="meme" face="1-7"]
#meme
「人家已经不是小孩子了啦～！[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="1000"  wait="true"  ]
不是这个问题。要是出事了怎么办。到头来被父母责备的可是我啊。[p]
芽萌做出这种事还是头一遭，一时让我不知所措。真够乱来的...芽萌。[p]
;変更
[chara_mod  name="riko" face="_2-6"]
;立ち絵表示
[chara_show  name="riko"  time="1000"  wait="true" reflect="false"  ]
#riko
「诶诶。芽萌萌，走了吗？[p]
;変更
[chara_mod  name="mira" face="_1-8"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「那可不得了！之后谁来洗衣服啊——！我手笨可干不来啊？[p]
#
[stopse  time="1000"  buf="0"  ]
...搞什么啊！这家伙完全没有在担心。问错人了真是。[p]
大家似乎对芽萌的离家出走毫不在意。唉...应该会在傍晚回来吧。没问题吧...应该没问题。[p]
[chara_hide_all  time="1000"  wait="true"  ]
;家でだらだら
就这样，芽萌短期出走了，伊迪雅也没给新指示，我躺在客厅沙发上玩游戏。[p]
操控叫米库里的角色，不断斩杀袭击庇护所的恶魔。[p]
这个角色冷酷寡言又神秘。水晶般巨大的耳饰，以黑白为主色调的服装，武器也是水晶雕琢的匕首设计得别具一格。[p]
简直帅到没边了...[p]
[bg  storage="30.png"  time="1000"  ]
[cg storage="30.png"]
#riko
「呐，真守君的那个是米库里传说对吧？阿璃也有一样的哦。[p]
#
[stopse  time="1000"  buf="0"  ]
璃光拿出同样的游戏机，向我发起对战邀请。[p]
按照这款游戏的设定，双人对战时2P角色会切换成名为芽绮的另一个角色。[p]
芽绮扎着马尾的青绿色长发，是个衣着暴露的女孩子。虽然使用手枪武器，但性能和米库里的小刀没差别。[p]
⋯⋯[p]
游戏玩家间的对决总是令人沉醉其中，忘却时间。[p]
璃光...不愧是我宿命的对手，技术确实厉害。[p]
好怀念啊。以前也经常和芽萌这样子玩游戏呢。[p]
因为没有能一起玩的朋友，芽萌是唯一的玩伴。[p]
明明那家伙根本不适合玩游戏。[p]
...现在会在哪里做什么呢。[p]
⋯⋯[p]
『滴答嗒啦～！滴答嗒啦～！』[p]
当沉迷游戏忘记时间时，客厅的时钟突然响起提示音。[p]
这个时钟是从可可奥雷商会收到的赠品。这奇怪的提示音到底算什么啊...[p]
已经下午三点...到了最期待的下午茶时间。平时这个时间芽萌都会吃兔子牌胡萝卜冰激凌，但今天还没回来。[p]
反正就是一时兴起吧，搞离家出走...我当时只能这样想。[p]
大概和朋友玩着玩着，就会悄悄回来吧。[p]
没错，肯定会...[p]
⋯⋯[p]
可为什么胸口堵得慌？[p]
总觉得必须去确认才行。[p]
[bg  storage="bg7.png"  time="1000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
坐立难安的我冲向玄关。[p]
环顾屋子四周，完全不见芽萌的身影。[p]
就算等了很长时间，也没有要回来的迹象。[p]
...是我太多心吗？[p]
;////////////////////////////////////////////ボイス設定
[vostop]
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="97"]
[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="92"]
[voconfig sebuf="0" name="mira" vostorage="mira/{number}.ogg"  number="179"]
[voconfig sebuf="0" name="riko" vostorage="riko/{number}.ogg"  number="117"]
[vostart]
;////////////////////////////////////////////ボイスここまで
;みんな覚えてない
[playbgm  time="1000"  loop="true"  storage="dark_nebla.ogg"  ]
[bg  storage="bg1.png"  time="1000"  ]
;変更
[chara_mod  name="mira" face="1-6"]
;立ち絵表示
[chara_show  name="mira"  time="1000"  wait="true" reflect="false"  ]
#mira
「怎么了？脸色这么难看...[p]
#
[stopse  time="1000"  buf="0"  ]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="5sho.ks"  size="17"  target="*2"  text="有没有看到芽萌？"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="5sho.ks"  size="17"  target="*2"  text="芽萌还没回来"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*2
;//////////////////////////////
[chara_mod  name="mira" face="1-8"]　
#mira
「欸...那是谁啊？[p]
#
[stopse  time="1000"  buf="0"  ]
...哈？[p]
还问是谁，刚才不是一直在一起吗？[p]
这种时候还在开玩笑吗，这混蛋。完全没意识到事态有多严重。[p]
[chara_mod  name="mira" face="2-6"]
#mira
「嗯～～～？！抱歉，完全听不懂欸。真守你脑子撞坏了吗？[p]
#
[stopse  time="1000"  buf="0"  ]
抓住米菈的肩膀质问，却只得到含糊答复。开什么玩笑。现在不是胡闹的时候，这可是大事。万一被绑架了怎么办。[p]
[chara_hide_all  time="1000"  wait="true"  ]
对了，璃光应该记得的。芽萌说过要做她的第一个朋友，明明关系那么好。[p]
;変更
[chara_mod  name="riko" face="1-6"]
;立ち絵表示
[chara_show  name="riko"  time="1000"  wait="true" reflect="false"  ]
#riko
「咦？谁啊那是...？[p]
#
[stopse  time="1000"  buf="0"  ]
璃光一脸茫然，呆滞地张大嘴，完全不像是装的。[p]
想吓唬我可没这么简单。[p]
[chara_mod  name="riko" face="2-9"]
#riko
「抱歉，实在想不起是谁。那个...是网上的朋友？[p]
#
[stopse  time="1000"  buf="0"  ]
...你们俩怎么回事？这群家伙...在戏弄我吗？[p]
[chara_hide_all  time="1000"  wait="true"  ]
面对两人暧昧的反应，我感到一阵违和，眼眶开始发热，难以抑制的愤怒与憎恶涌上心头。[p]
够了！薄情寡义的混蛋！我夺门而出。[p]
行啊，我一个人找！绝对会找到你的，芽萌...！[p]
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
[bg  storage="bg7-2.png"  time="1000"  ]
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
;夕暮れ
夕阳西沉，晚霞笼罩世界。[p]
拖着精疲力尽的双腿四处寻找。[p]
公园时钟指向六点，到了乖孩子该回家的时间了，再不回去就不行了。[p]
中途回家看过一次，玄关没有她的鞋子。[p]
为什么啊，找不到。怎么都找不到...到底去哪了？[p]
能想到的地方都找遍了，可我却觉得自己的思绪只是在徒劳空转。[p]
;変更
[chara_mod  name="idea" face="1-5"]
;立ち絵表示
[chara_show  name="idea"  time="1000"  wait="true" reflect="false"  ]
#idea
「真守大人...[p]
#
[stopse  time="1000"  buf="0"  ]
走投无路之际，伊迪雅出现在我面前。[p]
･･･对啊。这个家伙说不定会知道些什么。芽萌去了哪里，现在在什么地方做什么。[p]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="5sho.ks"  size="17"  target="*3"  text="告诉我！"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="5sho.ks"  size="17"  target="*3"  text="你一定知道吧？"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*3
;//////////////////////////////
你都知道的吧，你早就全都看到了吧。[p]
拯救地球的方法、宇宙的运行法则，所有的一切･･･你都知道的吧？[p]
那芽萌现在在哪里你也能简单地说出来吧･･･[p]
[chara_mod  name="idea" face="1-2"]
#idea
「需要确认真相。这才是本次的"目的"。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
完全辜负了我的期待。完全搞不懂啊･･･什么啊，所谓的真相。你连芽萌的所在处都不知道吗。不是说什么都知道的吗！[p]
该死，该死，该死･･･！到底去哪了，为什么要丢下我离开啊･･･！[p]
眼里噙着泪水，我瘫坐在地。[p]
蓝色长发的她俯视着这样的我，依旧面无表情。[p]
[chara_mod  name="idea" face="2-3"]
#idea
「您自己应该·･･早就知道真相了。只是需要意识到这一点。[p]
#
[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="1000"  wait="true"  ]
我甩开说着莫名其妙话语的她，开始奔跑。[p]
脑子里一团乱麻。已经搞不清谁在说什么了。[p]
拨开人潮寻找着那家伙的身影。[p]
那个头上甩着超大双马尾的家伙。[p]
曾经明明以为会一直讨厌着她，恨她恨到骨子里。[p]
她却担心没有朋友的我，总陪我玩耍。[p]
明明应该更想和女孩子朋友玩的。[p]
却不愿意･･･丢下我一个人。[p]
⋯⋯[p]
[bg  storage="bg.png"  time="1000"  ]
那时候的事，记不太清了。[p]
追寻记忆。青草气息充满胸腔。空气是那么清澈透明。[p]
怀念的风景。无处可去，哪里都不想去。这是属于我的，只属于自己的秘密基地。仿佛全世界只有这里的天空才是蓝的。[p]
拨开高密的草丛，来到开阔之处。[p]
你在那里。[p]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  storage="33.png"  time="1000"  ]
[cg storage="33.png"]
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu2_VP8.webm"  ]

[playbgm  time="1000"  loop="true"  storage="mellow_night.ogg"  ]
･･･啊。[p]
说起来，那天･･･应该是盛夏里一个大晴天吧。[p]
​在晚霞种，她向我露出笑容。[p]
芽萌･･････[p]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="5sho.ks"  size="17"  target="*4"  text="我都找过了"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="5sho.ks"  size="17"  target="*4"  text="早点回来"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*4
;//////////////////////////////
#meme
「啊，哥哥･･･[p]
#
[stopse  time="1000"  buf="0"  ]
我双手捧住她与往日无异的笑容，紧紧抱住这副娇小的身躯。说什么也不想让她再离开了。[p]
别让我再担心了。这次决不会放手了。[p]
[bg  storage="33-2.png"  time="1000"  ]
#meme
「寂寞了吗？哥哥。[p]
#
[stopse  time="1000"  buf="0"  ]
说什么废话啊你。我把脸埋进芽萌的连衣裙里，不停地点头。[p]
[bg  storage="33-5.png"  time="1000"  ]
#meme
「哎呀呀，哥哥真是･･･爱撒娇呢。[p]
#
[stopse  time="1000"  buf="0"  ]
她咯咯笑着，温柔地抚摸着我的头。[p]
[bg  storage="33-4.png"  time="1000"  ]
#meme
「很怀念吧，这里･･･是以前的，姥姥家呀。[p]
#
[stopse  time="1000"  buf="0"  ]
抬头看见熟悉的老树就在附近。[p]
祖父母留下的房子早被拆除，只残留着些许痕迹。[p]
[bg  storage="33-2.png"  time="1000"  ]
#meme
「以前我们经常在这里探险呢。经历过不少事吧。[p]
#
[stopse  time="1000"  buf="0"  ]
或许是吧。[p]
感觉两个人･･･进行了很多次探险。玩到都不想再玩了。[p]
仿佛被什么引导般，我走向老树。[p]
[bg  storage="bg7-2.png"  time="1000"  ]
;根元に花が供えられている
啊･･･[p]
老树根部供奉着鲜花。[p]
#meme
「其实･･･你早就察觉到了吧？哥哥。[p]
#
[stopse  time="1000"  buf="0"  ]
脊椎发凉。思绪停滞。[p]
被封印的记忆正在复苏。[p]
我的话･･･[p]
;///////////////////////////
;選択
;//////////////////////////////
;せんたくし
[glink  color="red"  storage="5sho.ks"  size="17"  target="*bad"  text="装作没发现"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="red"  storage="5sho.ks"  size="17"  target="*true"  text="其实我全都知道"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
;//////////////////////////////

;/////////////////////////////////////////////////
;『気づかないふりをする』BAD　引き篭もりで世界救うの諦めるエンドへ
*bad
[bg  storage="33-7.png"  time="1000"  ]
[cg storage="33.png"]

#meme
「･･･又要像这样逃避吗。[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌垂着眼睑，低着头沉默良久。[p]
我决定当作什么都没看见。[p]
[bg  storage="33-8.png"  time="1000"  ]
#meme
「･･･明白了。[p]
#
[stopse  time="1000"  buf="0"  ]
她这样说着，带着放弃的神情垂下肩膀。[p]
[bg  storage="33-2.png"  time="1000"  ]
#meme
「如果哥哥觉得这样好･･･芽萌也配合你。[p]
#
[stopse  time="1000"  buf="0"  ]
没关系。异常也没关系。别去回想。[p]
如果觉得我脑子有问题的话，就随你怎么想吧。[p]
我就是我。非常正常。无论别人怎么想，事到如今我也不会难过了。[p]
尽管在背后指指点点个够吧。[p]
[bg  storage="33-6.png"  time="1000"  ]
#meme
「回来吧，哥哥。回到我们的家。[p]
#
[stopse  time="1000"  buf="0"  ]
[bg  time="3000"  method="crossfade"  storage="32.png"  ]
[cg storage="32.png"]

我会继续做我自己。[p]
靠着支离破碎的感情继续活下去。[p]
和芽萌手牵着手，向前走去。[p]
回去吧。米菈、伊迪雅和璃光都在等着。[p]
我们共同打造的温暖家庭。[p]
回去后，大家围坐着一起吃晚饭吧･･･[p]
[vostop]
;BAD END「永遠に」

@layopt layer=message0 visible=false

[free_layermode  ]
[bg  time="3000"  method="crossfade"  storage="bg.png"  ]

;非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]

[wait time="2000"]

;バッド表示
[layopt layer=0 visible=true]
[mtext text="BAD END「永遠に」" layer="0" x="30" y="560" size="40" in_effect="fadeIn" time="5000" color="white" fadeout="true" name="mtext" out_effect="rollOut"]
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



;/////////////////////////////////////////////////
;『思い出す』死んでいるメメ。
*true

其实我都知道･･･全都想起来了。[p]
只是不愿去理解。因为我深知直面这个真相意味着什么･･･[p]
因为那样我的心･･･会崩溃･･･[p]

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
[bg  storage="28.png"  time="1000"  ]
[cg storage="28.png"]

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
[voconfig sebuf="0" name="idea" vostorage="idea/{number}.ogg"  number="100"]
[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="84"]

; [vostart]
; 上記の〈設定〉をもとに、連番ファイルの再生を開始します。
[vostart]
;////////////////////////////////////////////ボイスここまで
家四周是郁郁葱葱的山林。我们兄妹常去各处玩耍。[p]
她总吵着要和我打羽毛球。[p]
虽然我和芽萌都是菜鸟，但两人嬉笑打闹也别有趣味。[p]
击打后追着四处乱窜的羽毛球成了乐趣。如今回想竟是那般温暖的日常。[p]
偶尔能多打几个回合，就兴奋地拍手庆祝。[p]
什么嘛。我这妹妹...还挺可爱的嘛。刚这么想着，球又飞向怪异的方向。[p]
最后挂在了旁边大树的枝杈上。[p]
#meme
「真是的！哥哥也太笨手笨脚啦～[p]
#
[stopse  time="1000"  buf="0"  ]
大概是想展现帅气的一面吧。[p]
我开始攀爬树干去捡羽毛球。[p]
[voconfig sebuf="0" name="meme" vostorage="meme/{number}.ogg"  number="102"]
#meme
「哥哥，等等我啦ー。[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌学我的样子，用不熟练的姿势往树上爬。[p]
我提醒说危险让她在下面等，可她完全没要听的意思。[p]
#meme
「芽萌也要去！[p]
#
[stopse  time="1000"  buf="0"  ]
我也来劲儿了，一个劲往更高的地方攀。[p]
怀着不想被较劲的她追上的心情。[p]
说些「能爬到这里算你厉害了」「你肯定不行吧」之类的挑逗话。[p]
芽萌一边着急，一边拼命追赶。[p]
然后･･･[p]
[bg  storage="aka.png"  time="1000"  ]
脚下一滑摔在地上的芽萌･･･再也不动了。[p]
;棺桶
[bg  storage="bg.png"  time="1000"  ]
･･･好冰凉。[p]
躺在棺柩中的你，肌肤苍白而透明。[p]
明明一直都在我身旁。[p]
明明那么努力地追随在我身后。[p]
明明那样欢快地活蹦乱跳过。[p]
此刻却静静躺着･･･[p]
「真守。芽萌之后要･･･去到比云彩･･･还要高的天上。[p]
奶奶红肿着眼圈，挤出声音告诉我。[p]
⋯⋯[p]
是嘛。芽萌要去比云还高的天上啊。[p]
已经･･･不在我身边了么。[p]
听到围栏外窃窃私语的声音。[p]
「这么年轻就･･･真可怜･･･[p]
妈妈听到这话后更加消沉，缩成一团瘫坐在床。[p]
爸爸默默地注视着这一切。虽然没哭，但一定在强忍着。[p]
;送り火
装着芽萌的棺柩转眼就被烧成了灰。[p]
用筷子捡起遗骨。[p]
总是捡不起来。[p]
所有人都在哭泣。[p]
也许是悲哀的事。[p]
搞不懂。"死"是･･･什么？[p]
;からっぽ
[bg  time="3000"  method="crossfade"  storage="31.png"  ]
[cg storage="31.png"]

「真守！都怪你没看好，芽萌才会･･･！！[p]
葬礼结束后回到家，妈妈突然冲我吼骂起来。也许一直压抑到现在。[p]
「都是你･･･都怪你･･･要不是你让芽萌去爬什么树──！[p]
像要溅出血似的对我咆哮。[p]
爸爸没有制止。我挨打也装没看见。[p]
「真守！是你杀的！杀人犯！！[p]
从那天起我就成了空壳。[p]
尽管曾经是天不怕地不怕的调皮鬼。[p]
现在连出门走走都觉得厌恶。[p]
毕竟﹐再没有人一起玩耍了吧。[p]
就算走出去，也再没人追在身后了吧？[p]
「要是死的是你就好了･･･[p]
失落感笼罩了整个胸腔。[p]
心里破开了个大窟窿，谁都填不满。[p]
[bg  storage="34.png"  time="1000"  ]
[cg storage="34.png"]

;///////////////////////////////
空虚感满溢而出。[p]
被我封印的记忆。[p]
因内心某处曾有过的憎恨。[p]
因为想过『希望你死掉』『消失掉』。[p]
所以诅咒具现化了。[p]
感觉就算她怎样了也不会悲伤。[p]
所以那时，一滴眼泪都没流下。[p]
或许妈妈说得对。[p]
和我亲手杀的也差不了多少。[p]
⋯⋯[p]
我･･･不知从何时起，开始抹杀记忆。[p]
将那天发生的所有事情亲手抹杀，终结。[p]
芽萌没有死･･･还活着啊！妈妈你在说什么？[p]
妈妈用看垃圾般的眼神狠狠瞪着我。不明白她为何如此动怒。[p]
芽萌不可能死。我什么也没看见。[p]
那么可爱的妹妹，怎么可能轻易死去。我没有杀害任何人。[p]
芽萌不是好好地活着吗？像现在这样･･･在我身边保持着那天的模样。[p]
･･･快看，此时此刻･･･她依然在喊著「哥哥」，笑盈盈地跟在我身后。[p]
什么都没改变。我什么都没失去･･･[p]
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
[layermode_movie  mode="color-dodge"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="garasu_VP8.webm"  ]

;/////////////////////////////////////////////////
;背景変更
[bg  storage="33-5.png"  time="1000"  ]
[cg storage="33.png"]

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
;夕日の中に消えていく
#meme
「芽萌啊，一直好想再像这样和哥哥一起玩喔。[p]
#
[stopse  time="1000"  buf="0"  ]
她的微笑在夕阳中渐渐朦胧。[p]
[bg  storage="33-2.png"  time="1000"  ]
#meme
「于是呢，就见到啦。是哥哥呼唤我的对吧？[p]
[bg  storage="33-9.png"  time="1000"  ]
#meme
「为什么呀？这其中深意･･･恐怕是不该深究的吧。[p]
#
[stopse  time="1000"  buf="0"  ]
･･･不要。不愿承认。一旦承认的话，我就...[p]
视野逐渐被涟漪般的泪水模糊。[p]
[bg  storage="33-10.png"  time="1000"  ]
#meme
「和哥哥在一起的日子啊，总是闪闪发光呢。[p]
[bg  storage="33-13.png"  time="1000"  ]
#meme
「开心到不禁笑出来。每一天都转瞬即逝。[p]
[bg  storage="33-14.png"  time="1000"  ]
#meme
「芽萌在想，能这样永远不变就好了呢。[p]
[bg  storage="33-9.png"  time="1000"  ]
#meme
「如果什么都没改变的话，我们肯定...还能和大家在一起吧。[p]
[bg  storage="33-12.png"  time="1000"  ]
#meme
「也不会像现在这样...让芽萌和哥哥感到悲伤了...[p]
#meme
「对不起...哥哥...真的很抱歉...[p]
#
晶莹的泪珠沿着她的脸颊吧嗒吧嗒坠落。[p]
[bg  storage="33-15.png"  time="1000"  ]
#meme
「现在的芽萌，一定和伊迪迪是同样的存在。是多年前就燃烧殆尽的生命之光啊。[p]
[bg  storage="33-10.png"  time="1000"  ]
#meme
「...哥哥也明白其中的含义吧？[p]
#
[stopse  time="1000"  buf="0"  ]
不明白。根本不想明白...这种事...谁要接受啊...[p]
我强忍即将夺眶而出的泪水，剧烈地摇头否认。[p]
[bg  storage="33-13.png"  time="1000"  ]
#meme
「...不可以这样。[p]
[bg  storage="33-11.png"  time="1000"  ]
#meme
「哥哥必须...清醒过来了。[p]
#
[stopse  time="1000"  buf="0"  ]
芽萌的身姿，不过是遥远往日的幻影。[p]
与那天完全相同的模样。永远都不会长大的稚嫩容颜...[p]
[bg  storage="33-14.png"  time="1000"  ]
#meme
「芽萌可是始终伴随哥哥左右喔。虽然可能隔着遥远距离，但就在触手可及之处。即使目不可及，也一定近在咫尺。[p]
#
[stopse  time="1000"  buf="0"  ]
仿佛原谅了所有过错般，芽萌轻拍着我的头顶。[p]
[bg  storage="33-13.png"  time="1000"  ]
#meme
「芽萌最喜欢哥哥了。[p]
#
[stopse  time="1000"  buf="0"  ]
呐，你会原谅吗？这样的我･･･曾经怨恨着你的我。[p]
[bg  storage="33-10.png"  time="1000"  ]
#meme
「谢谢喔，哥哥。[p]
#
[stopse  time="1000"  buf="0"  ]
觉得与其被夺走爱不如消失算了的･･･罪孽深重的我。[p]
[bg  storage="33-15.png"  time="1000"  ]
#meme
「此刻芽萌的存在，或许是虚假的。[p]
#
[stopse  time="1000"  buf="0"  ]
不要离开啊芽萌...[p]
[bg  storage="33-13.png"  time="1000"  ]
#meme
「不过就算是这样的奇迹･･･也值得珍惜对吧？[p]
#
[stopse  time="1000"  buf="0"  ]
晚霞渐渐溶解了她的笑靥。[p]
;メメ消える。夕暮れに解ける。
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
[bg  storage="35.png"  time="1000"  ]
[cg storage="35.png"]
[layermode_movie  mode="screen"  speed="1"  volume="100"  loop="true"  time="1000"  wait="true"  video="hosi_VP8.webm"  ]

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

;//////////////////////////////////////////
;5.夜の会話　イデア
#idea
「真守大人。欢迎回来。[p]
#idea
「看来此次也顺利完成了任务呢。[p]
#
[stopse  time="1000"  buf="0"  ]
沉默片刻后草草应付回答。[p]
心绪纷乱如麻却不形于色。[p]
现在若有人说错话，怒火恐怕会立即爆发。[p]
[bg  storage="35-3.png"  time="1000"  ]
#idea
「您正处于情绪波动中呢。[p]
#
[stopse  time="1000"  buf="0"  ]
仍面无表情地说出仿佛洞悉我内心的言语。[p]
搞什么。摆出一副全知全能的姿态。[p]
为何我必须承受这种心情。[p]
归根结底全都怪伊迪雅强加予我这命运不是吗？[p]
要是她不曾出现在我们面前...我就无需经受这一切苦痛。[p]
若你不选我当救世主...我根本...根本...[p]
[bg  storage="35-2.png"  time="1000"  ]
#idea
「您憎恨着我吗，真守大人？[p]
#
[stopse  time="1000"  buf="0"  ]
明明没有说出口，却仿佛被读心了一般。[p]
伊迪雅温柔地微笑着安慰我。[p]
[bg  storage="35-3.png"  time="1000"  ]
#idea
「很痛苦吧？内心在隐隐作痛吗？这正是人类应有的情感啊。[p]
[bg  storage="35-4.png"  time="1000"  ]
#idea
「但若退一步想…您应该能明白这是正确之选。[p]
#idea
「为避免地球面临的灭亡，拯救这个星球上的所有生命。为了这个目标付出必要的牺牲…仅此而已。而最终，您拯救了万千生命。真守大人…您是英雄啊。[p]
#
[stopse  time="1000"  buf="0"  ]
我知道啊…可、可是…[p]
[bg  storage="35.png"  time="1000"  ]
#idea
「在迷茫吗？究竟值不值得为此杀害他人也要拯救这个世界…您陷入迷惘了。[p]
#idea
「您感到后悔吗？[p]
[bg  storage="35-2.png"  time="1000"  ]
#idea
「…您怨恨我吗？[p]
#
[stopse  time="1000"  buf="0"  ]
明明清楚该怎么做，心里却在呐喊不能接受。[p]
[bg  storage="35-3.png"  time="1000"  ]
#idea
「您可以爱上我哦。真守大人…如果这样能让您释怀的话。[p]
#
[stopse  time="1000"  buf="0"  ]
⋯⋯[p]
不，我并不想那样做。[p]
现在的我只想找人迁怒好让自己好受些。[p]
…还是算了。总觉得责备她是不对的。[p]
;//////////////////////////////
;せんたく
[glink  color="white"  storage="5sho.ks"  size="17"  target="*se"  text="抱歉･･･"  x="42"  y="503"  width=""  height=""  _clickable_img=""  ]
[glink  color="white"  storage="5sho.ks"  size="17"  target="*se"  text="我会冷静下来的"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
[s]
*se
;//////////////////////////////
[bg  storage="35-4.png"  time="1000"  ]
#idea
「…没关系哦。[p]
#
[stopse  time="1000"  buf="0"  ]
用那副惯常无表情的脸…她轻轻拥住了我。[p]
[bg  storage="35-2.png"  time="1000"  ]
#idea
「无论发生什么，我都会站在您这边。永远支持您。[p]
#
[stopse  time="1000"  buf="0"  ]
相贴的肌肤感受不到温度。仿佛她根本不存在体温的概念。[p]
她…究竟是怎样的存在？[p]
[bg  storage="35-4.png"  time="1000"  ]
#idea
「所有生命都在拼尽全力完成与生俱来的使命。[p]
#idea
「无论在这个过程中拥有多么卓越的天赋…具备何等非凡的才能…最终的归宿…都是一样的。[p]
[bg  storage="35-3.png"  time="1000"  ]
#idea
「那就是『虚无』。[p]
#idea
「『情感』实在是个麻烦的东西。正是这种飘渺不定的概念，令您迷失了真正的目标。[p]
[bg  storage="35-2.png"  time="1000"  ]
#idea
「让人们误入歧途，甚至产生即便宇宙间微不足道的意念也具备意义这种错觉。[p]
[bg  storage="35.png"  time="1000"  ]
#idea
「只为作为零件，履行职责的使命…纯粹为此而存在。[p]
#idea
「我深信…正是因为人类这种生命体怀有『情感』，方能从迈向『虚无』的『过程』中寻得意义…[p]
[bg  storage="35-4.png"  time="1000"  ]
#idea
「您的感情…您的内心，必将拯救这颗星球。[p]
#
[stopse  time="1000"  buf="0"  ]
;////////////////////////////////////////////
;////////////////////////////////////////////
;////////////////////////////////////////////
[free_layermode  ]

[vostop]

;次の章へ飛ぶ
[jump  storage="6sho.ks"  target="*first"  ]