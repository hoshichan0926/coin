
@bg storage="cointoss.jpg" 
[wait time="300"]


;[glink x="150" y="100" text="序章" target="*introduction" color="btn_01_white" width="300"]
;[glink x="150" y="180" text="コインゲーム" target="*coingame" color="btn_01_white" width="300"]
;[glink x="150" y="260" text="憲兵と盗賊" target="*kenpeitotouzoku" color="btn_01_white" width="300"]
;[glink x="150" y="340" text="憲兵と修道女" target="*kenpeitoshudoujo" color="btn_01_white" width="300"]
;[glink x="150" y="420" text="憲兵と庭師" target="*kenpeitoniwashi" color="btn_01_white" width="300"]
;[glink x="150" y="500" text="COIN" target="*coindekimeru" color="btn_01_white" width="300" ]
;[glink x="150" y="580" text="エピローグ" target="*epilogue" color="btn_01_white" width="300"]

*start
[freeimage layer="1" ]

[glink x="150" y="360" text="TAP TO START" target="*volume_warning" color="btn_01_white" width="300"]
[glink x="250" y="850" text="クレジット" target="*credit" width="200"]


[s]

*volume_warning
[ptext layer="1" x="150" y="300" text="この先、音が出ます。" size="35" ]
[glink x="150" y="360" text="OK" target="*introduction" color="btn_01_white" width="300"]
[glink x="150" y="500" text="戻る" target="*start" color="btn_01_white" width="300"]

[s]

*introduction
[freeimage layer="1" ]
[jump storage="mainscene/introduction.ks"]

*credit
[image layer="1" y="200" storage="../image/credit.png" width="640"  ]
[glink x="250" y="850" text="戻る" target="*start"  width="200"]
[s]

*coingame
; [jump]
; ジャンプします。
[jump storage="mainscene/playcoin.ks"]

*kenpeitotouzoku
[jump storage="mainscene/scene002.ks"]

*kenpeitoshudoujo
[jump storage="mainscene/scene003.ks"]

*kenpeitoniwashi
[jump storage="mainscene/scene004.ks"]
*coindekimeru
[jump storage="mainscene/scene005.ks"]
*epilogue
[jump storage="mainscene/epilogue.ks"]
[s]
