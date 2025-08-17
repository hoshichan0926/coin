
[mask effect="fadeIn" time=1000 folder="bgimage" graphic="../bgimage/blackbg.jpg"  ]

;メッセージウィンドウのサイズ調整
[position top=700 width=600 height=200 layer=message0 vertical=false]

;文字スピード調整
;[delay speed=30]
;[cm]

;メッセージボックスを非表示にする
;@layopt layer=message0 page=fore visible=false
@bg storage=bgsample.jpg time=500

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;コインの表示レイヤー
[layopt layer="1" visible="true"]

;コインの表示レイヤー
[layopt layer="2" visible="true"]


;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" shadow="0x000000" size=28 bold=true x=20 y=650]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
;[chara_config ptext="chara_name_area"]
;[chara_new  name="kenpei"  storage="chara/kenpei/handsdown_normal.png" jname="憲兵" ]
;[chara_face name="kenpei" face="sleeping" storage="chara/kenpei/sleeping.png" ] 
[chara_mod name="kenpei" face="sleeping" cross=false]
[chara_show  name="kenpei"  ]

[image layer="1" storage="../image/glass/empty.png" name="emptyglass"]
[playbgm storage="maou_bgm_healing12b.mp3" volume="30" restart="false" ]

;[playbgm storage="maou_bgm_healing12b.mp3" volume="30" restart="false" ]

[mask_off time="1000" wait="true"]

[cm]

#マスター
……お客さん[p]

#憲兵
……[p]

#マスター
……[l][r]
お客さん、起きてください。[p]

#kenpei:sleeping
……[l][r]
むにゃむにゃ……[p]

#マスター
ダメだ。今日も起きそうにない。[p]

#
カウンターですやすやと寝息をたてている男はこの街の憲兵だ。[p]
数ヶ月前に戦場から帰還し、現在は憲兵としてこの街を警邏している。[p]
だが、街の風紀を維持する立場のはずのこの男は、
毎日酒に溺れ、ギャンブルに明け暮れている。[p]
最近、この憲兵はここをよく訪れるようになった。[p]
いつもウィスキーを数杯一気に流し込み、[r][l]
気がつくと腕を枕にして眠り込んでいる。[p]
これで何度目だろうか。[p]
深い眠りに酔い落ちたこの男が、ただ声をかけただけでは起きないことは、
今日までの接客で身に染みて理解している。[p]

#
そろそろ、閉店の時間だ……[r][l]
店内に客はこの男しか残っていない。[p]
#
どうにかしてこの男を起こさなければ……[p]

#
[link target="*yasashii"]<A> 私はやさしく憲兵の身体を揺った。[endlink][r]
[link target="*hageshii"]<B> 私は無言で憲兵の背中を叩いた。[endlink][r]
[s]

*yasashii
[cm]
#マスター
お客さん、閉店の時間ですよ。[p]
[quake count=1 time=500 hmax=30 vmax=0 wait="false" ]

;[anim name=kenpei left="-=10" time=1500 ]

@jump target="mezame" 

*hageshii
[cm]
#マスター
………[p]
[playse storage="ビシッとツッコミ2.mp3" ]
[quake count=3 time=500 hmax=30 vmax=0 wait=false]
#
バチーーーーーンッ[p]

#
平手で憲兵の背中を引っ叩いた音が店内に響き渡った。[p]

@jump target="mezame" 

*mezame

#憲兵
ん………[p]
[chara_mod name="kenpei" face="handsdown_normal_yoi_closedeye" time=2000 ]
[chara_mod name="kenpei" face="handsdown_normal_yoi" ]

ああ……[p]
悪い……もうこんな時間か[p]

#
体を起こしてはくれたが、まだ意識が朦朧としているようだ。[p]

#マスター
本日のお会計はこちらでございます。[p]

#kenpei
ああ……[p]

[chara_mod name="kenpei" face="handsdown_normal_yoi_yosomi" ]

[playse storage="財布にお金を入れる2.mp3" ]
#
ゴソゴソ[p]
#
……憲兵はポケットをまさぐっているが、どうも様子がおかしい。[p]
……まさか[p]

@jump storage="mainscene/playcoin.ks" target="scenestart" 
[s]
