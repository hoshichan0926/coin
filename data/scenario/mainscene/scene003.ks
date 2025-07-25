;憲兵と修道女
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
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=20 y=650]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
[chara_new  name="kenpei"  storage="chara/kenpei/normal.png" jname="憲兵" ]
[chara_show  name="kenpei"  ]
;[playbgm storage="maou_bgm_healing12b.mp3" volume="30" restart="false" ]
[cm]

#
数日後[p]

#kenpei:default
なぁ、マスター[p]

#kenpei
修道女はよくここに来るのか？[p]

#
修道女…[p]
あの方の指示のもと動いている女。[p]
憲兵の口から彼女の話がでるなんて……[p]
一体あの女は何をやらかしたのだろう。[p]

#マスター
私は見かけたことがありませんが……[p]
何かあったんですか？[p]

#憲兵
いや、知らないならいいんだ。[p]

#
修道女と憲兵の間で何かあったのかは気になるが、深追いすれば怪しまれるかもしれない。[p]
ここは様子見るとしよう。[p]

#マスター
ところで、先日ウチの従業員と揉めていたようですが[p]

#憲兵
ちょっと手持ちが足りなかっただけだよ。[p]
必要な分は回収できてるからいいだろ？[p]

#マスター
あまりトラブルを起こされては私も庇いきれませんので、ほどほどにお願いしますね。[p]
お金を肩代わりしていたあの女性はお知り合いですか？[p]

#憲兵
まぁ、ちょっとね……[p]
……わりぃ、これから街を巡回するんだ。[p]

#
（アナタが？）[p]
思わず飛び出そうになった言葉をグッと飲み込んだ。[p]

#マスター
……そうですか、お気をつけて。[p]

#憲兵
最近、街で盗難事件が多発しているからな。[r][l]
アンタも戸締り気をつけろよ。[p]

[chara_hide name="kenpei" time="1000"]

#
あのいつも飲んだくれている憲兵が真面目に巡回するなんて……[p]
なにか事件の手掛かりでも掴んだのだろうか。[p]