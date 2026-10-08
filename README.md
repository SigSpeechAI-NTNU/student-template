# 〔名字〕_〔題目簡稱〕

> 這是 SigSpeechAI-NTNU 的學生研究 repo 範本。從 GitHub 的 **Use this template** 建立自己的 repo，命名 `〔名字〕_〔題目簡稱〕`（例：`Kai-Jun_CtxBias`），設 private，把教授加為 collaborator，然後把這段提示刪掉、填下面的欄位。
> 教材在 [Lab-Hub](https://github.com/SigSpeechAI-NTNU/Lab-Hub)；這個 repo 的每個資料夾對應那裡的一站。

## 目的

**題目**：〔一句話〕
**主張**：〔第 2 站的一句話主張；審過之後填〕
**設計文件**：`design/〔題目〕_design_〔日期〕.md`
**partner**：〔名字〕　**目標會議與截稿日**：〔教授定〕

## 安裝

```
〔conda create -n xxx python=3.xx〕
pip install -r requirements.txt
〔toolkit 的安裝或 submodule〕
```

環境：Python 〔版本〕、CUDA 〔版本〕、PyTorch 〔版本〕、〔toolkit 與版本〕、GPU 〔型號〕。
資料與 checkpoint 不進 git，放在 `〔機器上的路徑〕`；資料集版本〔　〕、切分檔〔md5 或行數〕。

## 怎麼跑

```
scripts/run.sh configs/<run_id>.yaml
```

| 要跑什麼 | config |
|---|---|
| 復現 baseline | `configs/〔run_id〕.yaml` |
| 主實驗 | `configs/〔run_id〕.yaml` |

## 目前結果（更新：〔YYMMDD〕）

〔Table 1 的現況，從 results/results.csv 抄；還沒跑的格子留 —；和論文數字的對照寫在表下〕

| Method | 〔Dataset〕 〔metric〕 | 〔Dataset〕 〔metric 2〕 |
|---|---|---|
| 〔baseline〕（論文 〔數字〕） | — | — |
| Ours | — | — |


## 結構

| 資料夾 | 放什麼 | 對應教材 |
|---|---|---|
| `research/` | Deep Research 的報告：`<題目>_r1_<日期>_checked.md`、`<題目>_r2_<路線>_<日期>.md` 與其 CSV、`one_pager_<日期>.md` | 第 0、1 站 |
| `design/` | 實驗設計：Table 1、消融表、method figure、決策紀錄；教授審過才開始寫程式 | 第 2 站 |
| `configs/` | 每個 run 一個 config，檔名＝run_id（`YYYYMMDD_<短名>_s<seed>`） | 第 3＋4 站 |
| `scripts/` | 訓練、評測、資料準備 | 第 3＋4 站 |
| `results/` | `results.csv`（一行一個 run，不刪列）、`error_analysis.csv` | 第 3＋4 站 |
| `notes/` | `log.md` 日誌、`reproduce.md` 復現紀錄、`idea_log.md`、`papers/` 論文核對紀錄與 `reading_log.md` 淺讀 | 第 1b、3＋4 站、論文報告 |
| `reports/` | 每週進度與論文報告的 `.qmd` 與 render 出的 `.html`；`figs/` 放圖 | 第 5 站、論文報告 |
| `.github/ISSUE_TEMPLATE/` | 週報 Issue 與問題 Issue 的模板 | 第 5 站 |

## 第一天要做的

0. 這個 repo 在第 0 站（拿到題目）就建；Deep Research 的報告直接存進 `research/`
1. 建三個 label：`progress`、`question`、`prof`（Issues → Labels）
2. 確認教授是 collaborator
3. `.gitignore` 看一眼，資料路徑與 checkpoint 路徑不要進 git
4. README 的「目的」「安裝」兩段第一個 run 之前填好；「目前結果」每週和週報一起更新
5. 把 `reports/_template_progress.qmd` 複製成 `reports/progress_〔YYMMDD〕.qmd`（開會日期，例 `progress_261008.qmd`），第一週就用

## 命名規則（照教材）

| 東西 | 命名 |
|---|---|
| Deep Research 報告 | `<題目>_r1_<日期>.md` → 核對後 `<題目>_r1_<日期>_checked.md`；`<題目>_r2_<路線>_<日期>.md` |
| 設計文件 | `<題目>_design_<日期>.md` |
| run | `YYYYMMDD_<短名>_s<seed>`；config、log 同名 |
| 週報 | `reports/progress_<YYMMDD>.qmd`（開會日期）；Issue 標題 `<YYMMDD> 進度` |
| 論文報告 | `reports/<會議>_<年份>_<第一作者的姓>.qmd`，全小寫（例 `icassp_2026_lee.qmd`；arXiv 用 `arxiv_2026_lee`）；核對紀錄同名放 `notes/papers/` |
| idea card | `C<兩位數編號>`，全部在 `notes/idea_log.md` |
