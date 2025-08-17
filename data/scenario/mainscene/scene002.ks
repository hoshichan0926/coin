;憲兵と盗賊


[mask effect="fadeIn" time=1000 folder="bgimage" graphic="../bgimage/blackbg.jpg"  ]

;メッセージウィンドウのサイズ調整
[position top=700 width=600 height=200 layer=message0 vertical=false]

;文字スピード調整
;[delay speed=30]
;[cm]

;メッセージボックスを非表示にする
;@layopt layer=message0 page=fore visible=false
@bg storage=bgsample.jpg

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;コインの表示レイヤー
[layopt layer="1" visible="true"]

;コインの表示レイヤー
[layopt layer="2" visible="true"]


;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" shadow="0x000000" size=28 bold=true x=20 y=650]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
;[playbgm storage="maou_bgm_healing12b.mp3" volume="30" restart="false" ]
[cm]


[mask_off time="1000" wait="true"]

# 
翌日[p]

[playbgm storage="icecoffeedecafede.mp3" volume="30" restart="false"]


#マスター
いらっしゃいませ[p]

[chara_show name="kenpei" time="500" ]

#kenpei:default
よお、いつものを頼む。[p]


#
・・・[p]

;karan_bgm

#
カラン[p]

[playse storage="グラスに水を注ぐ.mp3" ]

[wait time="2000" ]

;画像を出す。
[image layer="1" storage="../image/glass/full.png" name="fullglass"]


#マスター
お待たせしました。[p]

#
ウィスキーをロックで差し出すと、
[playse storage="飲む.mp3" ]
#
彼はそれを一気に飲み干した。[p]

;gokugoku_bgm


[free layer="1" name="fullglass"]
[image layer="1" storage="../image/glass/empty.png" name="emptyglass"]

#マスター
お客さん……この前みたいにカウンターで寝ないでくださいね。[p]

#kenpei:handsdown_normal_yosomi
ああ、わかってるよ。[p]

#kenpei:handsdown_niya
……なぁ、今日も１ゲームどうだ？[p]

#マスター
はぁ……では、私が勝ったらこれまでのツケを払ってくださいね。[p]

#kenpei:handsdown_smile
わかった、わかった。[p]
さぁ、始めよう。[p]

;コインゲームをはさむ

[cm]
;1ゲームだけスタート
[cm]
[chara_mod name=kenpei face=default cross=false]

#
どちらを選ぶ？[p]

[button graphic="coin/coinomote.png" x=30 y=350 target="*result_omote" ]
[button graphic="coin/coinura.png" x=300 y=350 target="*result_ura" ]
[s]

[chara_mod name=kenpei face="handsdown_niya" cross=false]

*result_omote
[cm]
[iscript]
f.isOmoteSelected = true
[endscript]

#憲兵
アンタは表、オレは裏だな。[p]

[jump target="*game_result"]

*result_ura
[cm]
[iscript]
f.isOmoteSelected = false
[endscript]
#憲兵
アンタは裏、オレは表だな。[p]
[jump target="*game_result"]

*game_result
[cm]

;コイントスの画像
[playse storage="チーン2" loop="false" ]
[image layer="2" storage="../bgimage/cointoss.jpg" time="1000" name="cointoss" ]
;[playse storage="coin-flip-37787.mp3" loop="false" ]

[iscript]
    f.randNum = Math.random();
    f.isCoinOmote=false;
    if(f.randNum >= 0.5)
    {
        f.isCoinOmote=true;
    }    
    f.isMasterWin = false;
    if(f.isCoinOmote == f.isOmoteSelected)
    {
        f.isMasterWin = true;
    }
    else
    {
        // 何もしない
    } 
[endscript]

#
...[p]

[free layer="2" name="cointoss" ]
[image layer="1" x="160" y="350" storage="../image/coin/coinomote.png" cond="f.isCoinOmote==true" time="500" name="coinomote"]
[image layer="1" x="160" y="350" storage="../image/coin/coinura.png" cond="f.isCoinOmote==false" time="500" name="coinura"]

#
...[p]
[if exp="f.isMasterWin==true"]

    #kenpei:handsdown_normal_yosomi
    ……アンタの勝ちだ。[p]
[else]
    #kenpei:handsdown_smile
    フッ、オレの勝ちだ。[p]
[endif]
;[ptext layer="2" name="kenpeimoney" x="150" y="30" size="40" shadow="0x000000" text="&f.money+' ORDO'" overwrite="true"]
[free layer="1" name="coinomote" ]
[free layer="1" name="coinura" ]


[cm]

*game_finished
[freeimage layer="2" ]
[cm]

;ゲーム終了

#kenpei:handsdown_w
悪い、今あまり持ち合わせがないんだ。[p]
絶対に今度払うから。な？[p]

#マスター
そのセリフを聞いたのは今日で10回目です。[p]

#
この男のツケは膨れ上がる一方だが、私はあえて取り立てずにいる。[p]
力をもつ者には恩を売っておく。それがこの世界で生きるための私なりの知恵だ。[p]

#マスター
全く……次はないですからね。[p]


;pause
[fadeoutbgm time="1000" ]
[wait time="1000" ]
;盛り上がる曲
[playse storage="../bgm/Waiter_Blues.mp3" ]

;BJの時間
#???
さぁ、次のゲームを始めるわよ。[r][l]
参加希望者はこっちに集まりなっ！[p]

[chara_mod name=kenpei face="handsdown_normal" cross=false]
[chara_mod name=kenpei face="handsdown_normal_yosomi" cross=false]
[wait time=500]
[chara_mod name=kenpei face="handsdown_normal" cross=false]


#
ここは酒場であると同時に賭場でもある。[p]
バカラ、ポーカー、ブラックジャック……[r][l]
このカウンター以外でも、いくつかの卓でゲームが行われていた。[p]
向こうのカウンターで、ディーラーの女が新しい参加者を集め始めたようだ。[p]

[chara_mod name=kenpei face="handsdown_normal_yosomi" time=1000]
[chara_mod name=kenpei face="handsdown_niya" cross=false]

[stopse]
[playbgm storage="icecoffeedecafede.mp3" volume="30" restart="false"]
[wait time="500" ]
#kenpei:default
盛り上がってるみたいだな。[p]

;play

[chara_mod name=kenpei face="handsdown_normal" cross=false]

#
憲兵は女が配るカードをチラチラみている。[p]
参加したくて体が疼いているようだが、憲兵の持ち金は最低賭け金に達していないはずだ。[p]
ふと、憲兵は隣の客に視線を向けた。[r][l]

[chara_mod name=kenpei face="handsdown_normal_yosomi" cross=false]

#
そして、ニヤリと笑って[p]

[chara_mod name=kenpei face="handsdown_niya_yosomi" cross=false]

[wait time="1500" ]
#kenpei:handsup_smile
なあ、アンタ……[p]

#
隣席の女性に声をかけた。[p]

#憲兵
金貸してくれよ。[r][l]
すぐ返すからさぁ……[p]


[chara_mod name=kenpei face="handsup_w_yosomi" cross=false]

#
女性は突然声をかけられ、しばらく困惑した表情を浮かべていたが、[p]
この男の甘い笑みに耐えられなかったのだろうか[r][l]
徐にORDO札を憲兵に手渡した。[p]

#kenpei:handsup_smile
こっちで面白い”ゲーム”をやるんだ。隣でみていてくれよ。[p]

[chara_hide name=kenpei time=1500]

#
憲兵は女性を連れて、向こうのカウンターにいってしまった。[p]

;左に動かす。

[wait time="1500" ]

#マスター
やれやれ……[p]

#
憲兵はいつも、この酒場の客たちに金を借りながら、ギャンブルに興じている。[p]
だが、そのわりにギャンブルの才能は持ち合わせていないのだろう。[p]
多額の借金を背負っているという噂だ。[p]
腐ってもお役人、元軍人のはずなのだが、信用は地の底。[p]
街の住民からは白い目で見られている。[p]

#マスター
何も起きなければよいのだが……[p]
[wait time="2000" ]
[stopbgm]


[quake count=2 time=200 hmax=0 vmax=30 wait="false" ]
#ディーラーの女
お客さぁん、これじゃ足りないねぇ？[p]
持ってるもん出しなぁ！[p]

;不穏な音楽
[playbgm storage="殺人鬼の気配.mp3" volume="30" restart="false"]

#
ディーラーの女の怒号が聞こえる。[p]
何かトラブルだろうか[p]
憲兵が渋々ポケットをあさって手当たり次第にテーブルの上に置いていくのが見える。[p]
ORDOコイン１枚、２枚、……[r][l]
ん？あの小瓶は……[p]

#???
コイツの分はアタシが肩代わりする。[p]

#
突然、憲兵と同じ卓でゲームに参加していた女が立ち上がった。[p]
妖しい黒装束に身を包んだその女の顔は険しく、
札束をディーラーの女に押し付けたかと思うと、[p]
憲兵を引っ張って外へ出ていってしまった。[p]

[fadeoutbgm time="1000" ]

#ディーラーの女
(アイツなんなの？なんでアレを持っているの？)[p]

#
と言いたげに、ディーラーの女がこちらに視線を送ってくる。[p]
#マスター
(私にもわからない。)[p]
私は小さく首を振った。[p]
ここは色々な素性の者が集まる酒場、[r][l]
情報を得るための要所である。[p]
私の見間違いでなければ、あの小瓶が憲兵の手元にあるのは非常に厄介な状況だ。[p]
今度、あの憲兵が来たら探りをいれてみよう。[p]

#
TO BE CONTINUED...[p]

[chara_hide_all]
[free layer="1" name="emptyglass"]
;タイトルにジャンプする
@jump storage="first.ks" 

