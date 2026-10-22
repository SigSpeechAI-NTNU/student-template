# paper/

> 論文的一切都在這裡。怎麼用見 Lab-Hub 第 6 站 [`guides/paper_writing/table1_to_paper.md`](https://github.com/SigSpeechAI-NTNU/Lab-Hub/blob/main/guides/paper_writing/table1_to_paper.md)。主實驗與消融跑完、截稿前約 6 週（長論文）開始。

1. 填 `venue.md`（投稿規定表）。把這一屆的 paper kit 解壓到這裡，範例 `.tex` 改名 `main.tex`，拆成 `sections/` 一節一檔、`tables/` 一表一檔
2. 填 `plan.md`（主張–證據表、篇幅預算、術語表），給教授審；檔尾審核紀錄沒有教授的一行之前不寫正文
3. `main.tex` 的 preamble 最後（`\begin{document}` 前一行）加 `\input{placeholders}`
4. 由內往外寫：每節先用 `%` 註解寫段落大綱，再請 AI 起草、你逐句核對；每個數字記進 `results/index.md`；每次用 AI 記一行 `ai_use.md`
5. 編譯：在這個資料夾跑 `latexmk -pdf -interaction=nonstopmode -outdir=build main.tex`（`build/` 不進 git）
6. AI 冷讀放 `reviews/self-1/review.md`、partner 盲讀放 `reviews/partner-1/review.md`，處理表 `reviews/triage-1.md`
7. 截稿前 10 天交教授（日期由教授定）
