
@bg storage="cointoss.jpg" 
[wait time="1000"]


[glink x="150" y="100" text="序章" target="*introduction" color="btn_01_white" width="300"]
[glink x="150" y="180" text="コインゲーム" target="*coingame" color="btn_01_white" width="300"]
[glink x="150" y="260" text="憲兵と盗賊" target="*kenpeitotouzoku" color="btn_01_white" width="300"]
[glink x="150" y="340" text="憲兵と修道女" target="*kenpeitoshudoujo" color="btn_01_white" width="300"]
[glink x="150" y="420" text="憲兵と庭師" target="*kenpeitoniwashi" color="btn_01_white" width="300"]
[glink x="150" y="500" text="COIN" target="*coindekimeru" color="btn_01_white" width="300" ]
[glink x="150" y="580" text="エピローグ" target="*epilogue" color="btn_01_white" width="300"]

;[glink x="230" y="310" text="画家チュートリアル" target="*tutorial_gaka" color="white" ]

[s]

*introduction
[jump storage="mainscene/introduction.ks"]

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
