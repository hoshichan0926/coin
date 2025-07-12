@wait time=200

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
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=20 y=650]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
[chara_new  name="kenpei"  storage="chara/kenpei/normal.png" jname="憲兵" ]
[chara_show  name="kenpei"  ]

[l]

[cm]

#マスター
……お客さん[p]

#憲兵
……[p]

#マスター
……[l][r]
お客さん、起きてください。[p]

#憲兵
……[l][r]
むにゃむにゃ……[p]

#マスター
ダメだ。今日も起きそうにない。[p]

#
カウンターですやすやと寝息をたてている男はこの街の憲兵だ。[p]
数ヶ月前に戦場から帰還し、現在は憲兵としてこの街を警邏している。[p]
だが、街の風紀を維持する立場のはずのこの男は、
毎日酒に溺れ、ギャンブルに明け暮れている。[p]
最近、この憲兵はこの酒場をよく訪れるようになった。[p]
いつもウィスキーを数杯一気に煽り、[r][l]
気がつくと腕を枕にして眠り込んでいる。[p]
今日で何度目だろうか。[p]
深い眠りに酔い落ちたこの男が、ただ声をかけただけでは起きないことは、
ここ数回の接客で身に染みて理解している。[p]

#マスター
そろそろ、閉店の時間だ……[r][l]
店内に客はこの男しか残っていない。[p]
どうにかしてこの男を起こさなければ……[p]

#
[link target="*yasashii"]A. 私はやさしく憲兵の身体を揺った。[endlink][r]
[link target="*hageshii"]B. 私は無言で憲兵の背中を叩いた。[endlink][r]
[s]

*yasashii
[cm]
#マスター
お客さん、閉店の時間ですよ。[p]

@jump target="mezame" 

*hageshii
[cm]
#マスター
………[p]

#
バチーーーーーンッ[p]
平手で憲兵の背中を引っ叩いた音が店内に響き渡った。[p]

@jump target="mezame" 

*mezame
#憲兵
ん………[p]
ああ、マスター……[p]
悪い……もうこんな時間か[p]

#マスター
本日のお会計はこちらでございます。[p]

#憲兵
わかった。[p]

#
ゴソゴソと憲兵はポケットをまさぐっているが、どうも様子がおかしい。[p]
これはもしかして……[p]

@jump storage="mainscene/playcoin.ks" 
[s]
