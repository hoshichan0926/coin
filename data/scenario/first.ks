[cm]
@wait time=200

;メッセージウィンドウのサイズ調整
;[position top=700 width=600 height=200 layer=message0 vertical=false]

; [title]
; タイトルバーに表示されるテキストを変更します。
[title name="COIN"]

*title


;文字スピード調整
;[delay speed=30]
;[cm]

;メッセージボックスを非表示にする
@layopt layer=message0 page=fore visible=false
@bg storage=cointoss.jpg

[call target="*Sub_SetLayer"]

[clearfix]
[wait time="1000"]
[glink x="200" y="220" text="序章" target="*introduction" color="white" ]
[glink x="200" y="320" text="コインゲーム" target="*coingame" color="white" ]

;[glink x="230" y="310" text="画家チュートリアル" target="*tutorial_gaka" color="white" ]

[s]

*introduction
[jump storage="mainscene/introduction.ks"]

*coingame
; [jump]
; ジャンプします。
[jump storage="mainscene/playcoin.ks"]




; ~~サブルーチン~~
; ----------------------------------------------------------
*Sub_SetLayer
; ----------------------------------------------------------



; レイヤーの表示非表示などを設定するラベルです。
; このラベルは、[call]タグによってジャンプしてくるラベル
; (このようなラベルをサブルーチンと言います。また、サブルーチンにジャンプすることを
;「サブルーチンを呼ぶ」とか「サブルーチンをコールする」とか言います。）
; ですので、終わったら[return]タグでもとの場所に帰ります。



; [layopt][hidemenubutton]
; すべてのメッセージレイヤーとメニューボタンを隠します。
; (なお、メニューボタンについては、Config.tjsで設定を変更することで、
; first.ksで[hidemenubutton]を使わずとも、初期状態を非表示にすることができます。
; configVisible … 初期状態でメニューボタンを表示するか？)
[layopt layer="message" visible="false"]
[hidemenubutton]

; [layopt]
; 逆に通常レイヤー０,１,２は表示してあげます。
; (初期状態では非表示なので注意が必要。
; モノが映らない!!と思ったらレイヤー自体が非表示になっているケースは多いです。)
[layopt layer="0" visible="true"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]

; [return]
; [call]タグで呼ばれたところに帰ります。
[return]