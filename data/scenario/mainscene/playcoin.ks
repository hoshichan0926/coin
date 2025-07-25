
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
;[chara_config ptext="chara_name_area" time=800] 
;[chara_new  name="kenpei"  storage="chara/kenpei/handsdown_normal.png" jname="憲兵" ]
;[chara_face name="kenpei" face="handsdown_smile" storage="chara/kenpei/handsdown_smile.png" ]
;[chara_face name="kenpei" face="handsdown_w" storage="chara/kenpei/handsdown_w.png" ]
;[chara_face name="kenpei" face="sleeping" storage="chara/kenpei/sleeping.png" ] 


[chara_show  name="kenpei"  ]
;[playbgm storage="maou_bgm_healing12b.mp3" volume="30" restart="false" ]

*scenestart
[cm]

;タイトル画面のために一旦非表示にしたメッセージレイヤを再表示
;@layopt layer=message0 page=fore visible=false

;BGMの再生
;[playbgm storage="hanabi.ogg"]

#kenpei:handsdown_w_yoi
なぁ、アンタ……[l][r]
コイツで勝負しないか？[p]

#
いたずらっ子のような笑みを浮かべながら、憲兵はこちらを見つめる[p]
手持ちの金が足りないとき、決まってこちらにギャンブルを持ちかけてくるのだ。[p]
普通の店なら断るところだが、[r][l]
この酒場は賭場も兼ねており、朝から晩まで客と従業員が”ゲーム”に興じている。[p]
戦時下の世の中、この街で許された唯一の娯楽場だ。
そのマスターとして、誘いを断るわけにはいかない。[p]

#マスター
わかった。１回だけだぞ。[p]

;コインゲーム初期設定
[eval exp="f.money=30000"]

[ptext layer="2" name="kenpeiname" x="30" y="30" size="40" text="憲兵："]
[ptext layer="2" name="kenpeimoney" x="150" y="30" size="40" text="&f.money+' ORDO'"]

[cm]
;1ゲームスタート
*game_start
[cm]
[chara_mod name=kenpei face=handsdown_normal_yoi cross=false]

#
どちらを選ぶ？[p]

[button graphic="coin/coinomote.png" x=30 y=350 target="*result_omote" ]
[button graphic="coin/coinura.png" x=300 y=350 target="*result_ura" ]
[s]

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
[image layer="1" storage="../bgimage/cointoss.jpg" time="1000"]
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
        f.money = f.money - 10000;
    }
    else
    {
        f.money = f.money + 10000;
    } 
[endscript]

#
...[p]

[freeimage layer="1" ]
[image layer="1" x="160" y="350" storage="../image/coin/coinomote.png" cond="f.isCoinOmote==true" time="500"]
[image layer="1" x="160" y="350" storage="../image/coin/coinura.png" cond="f.isCoinOmote==false" time="500"]

#
...[p]
[if exp="f.isMasterWin==true"]

    #kenpei:handsdown_normal_yoi_yosomi
    ……アンタの勝ちだ。[p]
[else]
    #kenpei:handsdown_smile_yoi
    フッ、オレの勝ちだ。[p]
[endif]
[ptext layer="2" name="kenpeimoney" x="150" y="30" size="40" text="&f.money+' ORDO'" overwrite="true"]
[freeimage layer="1" ]

[cm]
[if exp="f.money<=0"]
    #
    憲兵はこれ以上手持ちの金がないようだ……[p]

    [jump target="*game_finished" ]
[elseif exp="f.money>=50000"]
    #
    手持ちの金がなくなってしまった……[p]
    #kenpei:handsdown_smile
    またやろうな[p]
    [jump target="*game_finished" ]
[else]
    #kenpei:handsdown_w_yoi
    もう一回やろうぜ？[l][r]
    [link target="*game_start"]A. しょうがないな……[endlink][r]
    [link target="*game_finished"]B. もう十分だろ[endlink][r]
    [s]
[endif]

*game_finished
[freeimage layer="2" ]
[cm]

[if exp="f.money<=20000"]
    #kenpei:handsdown_normal_yoi
    今日はツケにしといてくれ……[p]
[endif]

#kenpei:handsdown_smile_yoi
じゃあ、また来るよ。[p]


;文字スピードを遅くする
;[delay speed=120]

;@playbgm storage="zankou.ogg"

;@bg storage=akushu.png time=7000 


;[wait time=5000]


[chara_hide_all]

#
to be continued[l][cm]
;タイトルにジャンプする
@jump storage="first.ks" 

; =======MEMO========
; [emb] 変数 f.xxx の中身をメッセージとして取り出します。
;[emb exp=f.xxx]
;変数の種類は全部で3種類あるの。[p]
;「sf.」が「システム変数」、「f.」が「ゲーム変数」、「tf.」が「一時変数」。[p]
;「システム変数」というのは、そのゲーム全体でただ一つしか存在しない変数。[p]
;どのセーブデータでも共通・共有の値となるもので、たとえばコンフィグ設定なんかが該当する。[p]
;「一時変数」は一時的に使うためだけの変数。[p]
;本当に一時的にしか保存されないので、クリックをまたいで使うのはやめたほうがよいでしょう。[p]
; [bg] time="&f.xxx + 1000" に着目しよう。
;[bg storage="room.jpg" time="&f.xxx + 1000"]
