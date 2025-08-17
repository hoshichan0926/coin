








[cm]

;メッセージウィンドウのサイズ調整
;[position top=700 width=600 height=200 layer=message0 vertical=false]

; [title]
; タイトルバーに表示されるテキストを変更します。
[title name="COIN"]

*title


;文字スピード調整
;[delay speed=30]
;[cm]
[loadcss file="./data/others/css/glink.css"]
 
;メッセージボックスを非表示にする
@layopt layer=message0 page=fore visible=false


[call target="*Sub_SetLayer"]
[stopbgm]

;キャラ定義
[chara_config ptext="chara_name_area" time="0"] 
[chara_new  name="kenpei"  storage="chara/kenpei/handsdown_normal.png" jname="憲兵" ]

[chara_face name="kenpei" face="handsdown_niya_yoi_closedeye" storage="chara/kenpei/handsdown_niya_yoi_closedeye.png" ]
[chara_face name="kenpei" face="handsdown_niya_yoi" storage="chara/kenpei/handsdown_niya_yoi.png" ]
[chara_face name="kenpei" face="handsdown_niya" storage="chara/kenpei/handsdown_niya.png" ]
[chara_face name="kenpei" face="handsdown_niya_yosomi" storage="chara/kenpei/handsdown_niya_yosomi.png" ]


[chara_face name="kenpei" face="handsdown_normal_yoi_closedeye" storage="chara/kenpei/handsdown_normal_yoi_closedeye.png" ]
[chara_face name="kenpei" face="handsdown_normal_yoi_yosomi" storage="chara/kenpei/handsdown_normal_yoi_yosomi.png" ]
[chara_face name="kenpei" face="handsdown_normal_yosomi" storage="chara/kenpei/handsdown_normal_yosomi.png" ]

[chara_face name="kenpei" face="handsdown_normal_yoi" storage="chara/kenpei/handsdown_normal_yoi.png" ]
[chara_face name="kenpei" face="handsdown_normal" storage="chara/kenpei/handsdown_normal.png" ]

[chara_face name="kenpei" face="handsdown_smile_yoi" storage="chara/kenpei/handsdown_smile_yoi.png" ]
[chara_face name="kenpei" face="handsdown_smile" storage="chara/kenpei/handsdown_smile.png" ]

[chara_face name="kenpei" face="handsdown_w_yoi" storage="chara/kenpei/handsdown_w_yoi.png" ]
[chara_face name="kenpei" face="handsdown_w" storage="chara/kenpei/handsdown_w.png" ]

[chara_face name="kenpei" face="handsup_smile" storage="chara/kenpei/handsup_smile.png" ]
[chara_face name="kenpei" face="handsup_w_yosomi" storage="chara/kenpei/handsup_w_yosomi.png" ]

[chara_face name="kenpei" face="sleeping" storage="chara/kenpei/sleeping.png" ] 


[clearfix]
@jump storage="title.ks" 


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