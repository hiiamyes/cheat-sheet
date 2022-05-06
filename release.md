所以 我的認知是，release strategy 只有分兩種
1. 一次只能 release 一個 PR：
  1. 不管什麼 flow/infra 都是得排隊上 staging 做 testing
  2. 不然只要 staging 上的狀況是 master + PR1 + ... + PRn, PR1 到 PRn-1 永遠都會是單獨 release PRn 時的 side effect
2. 一次可以 release 多個 PR：
  1. 不用排隊，可以同時上 staging
  2. 一定要有 cut-off time，cut-off 後的 test 才算數
  3. 可以等所有 PR 都測完才 release?
    1. 不可以 -> 要 revert 沒測完的 PR
    2. 可以 -> 不用 revert 還沒測完的 PR
  4. 有 bug 的 PR release 前還是得 revert
*hotfix 不算 release，hotfix 要直接 merge 進 master 然後再把 master merge 回 staging (edited) 


Yes Lee  20 minutes ago
其實我們新的 release strategy (上面的 2) 或許可以 apply 上面寫的 2-3-1 or 2-3-2，這樣可以減少很多沒測完所以要 revert 的 case，或把 cut-off time 跟 release time 中間的 buffer 拉長 (edited) 

Yes Lee  14 minutes ago
example 1 (apply 2-3-1)
09:00 cut-off time：不能再進 PR 到 release candidate
11:00 release time：2小時測不完的 PR 只能先 revert
15:00 cut-off time
17:00 release time
example 2 (apply 2-3-2)
09:00 cut-off time：不能再進 PR 到 release candidate
  - candidate 上 PR 都測完才 release
  - 超過下一個 cut-off time 的話 cut-off 就順延
(15:00 cut-off time 可能順延到 09:00)
類似這樣
cc@tony (edited) 

tony  10 minutes ago
可以，這個方向滿可行的，因為人數和功能變多的狀況下 release strategy 2 才有機會解決排隊的問題，而 cut-off time 的機制要抓在固定佈署前某個時間內就不能在 merge master，雖然 release time 會少一次，但新功能每天固定佈署兩次算是足夠的，如果是針對小功能 i18n 或 SEO 的調整，還是可以搭配其他時段，影響應該不大 (edited) 


---


Alan Feng  18:34
我提一個想法，現在的問題是 staging 只有一台，進了 staging 基本上是單行道就會進去 production (有問題需 revert 除外)，這樣會遇到的問題有：
1. 大家只要進去 staging commit 就都疊再一起，但是還沒驗收完的都有可能會有問題要額外 commit 或 revert，但這個時候我要開發卻從 staging checkout ..  所以有些時候會拿到有問題的程式碼 (在我 checkout 後的某個時間點才發現程式有問題) 可能導致我的程式或其他 staging 一起掛掉，變成要很頻繁的 rebase staging 解決其他人造成的錯誤
2. 部署的時候變成要一起部署，但因為 release 太頻繁了會增加大家需要進進出出的工作量以及驗收的時間壓力，假如我驗收到一半還沒驗完，但是其他人要上版了，變成我要先退出 (或者 cherry-pick 要進去的)，等他上完版我在重進一次 staging 繼續測試 .. 遇到下個 release cycle 沒測完又要再退出一次
要解決以上問題目前想到的做法是：
Checkout from master to feature branch, 因為 master 是相對穩定的 branch 出問題的機率比較低
PR to master for code review, PR to staging for testing (after code review)，驗收完畢的才 merge master，假如驗收有問題的話就從 staging 退出，修正完 -> master PR code review -> 重新 PR to staging -> merge for validation
這樣做的好處是：
要上版的時候定時從 master 部署，一定是已驗收過的程式 (也可以透過像 Viney 說的打 tag 來決定要部署的範圍)
checkout 的時候從 master checkout，一定是已驗收過的程式
沒有排隊上程式的問題，進去 staging 也不代表一定要部署
壞處是：
如 wayne 所說的可能有一些 commit 會在上面留很久 <- 但目前其他 staging 環境也會發生，所以常常會需要洗一洗，我們可以定義每週定期洗一次 qa staging (例如每週五晚上 23:59) 或者有特殊需要就洗一下，應該可以維持內容的整潔度
請其他人補壞處 …
以上一點想法


Yes Lee  02:47
這種就是一次 release 可以包含的多個 PR 的做法，這種做法就是不用排隊，但要 get rid of somehow reverting because QA haven’t finished 的話就得
設定一個 cut-off time (時間到了之後不能再 merge 進 master)
而且，要所有 merge 進 master 的 PR 都 test done 才能 deploy
當然 PR 有 bug 還是得 revert
(edited)
Alan Feng
You’re totally right if we reset it anytime not considering the consequences.  What you address is a process issue, if we could make it mostly sync with master with the enforced process flow, and we can get rid of queuing and somehow reverting because QA haven’t finished, do you think there are other problems we need to take into consideration?


---

---

Viney  16:16
每天早上都拿 master 最新的 commit 打一個 tag 上版，這應該沒有問題吧。當天第二次上版時間一到，把 tag + 特定的 commit 嘗試 merge 在一起，發現 conflict 等問題就修，經驗中 cherry-pick 引發問題相對來說比較少，頂多漏掉東西而不是 conflict，然後再打第二個 tag 上第二版
隔天週而復始
所有東西都進去 main (master) 每天都從它挑最新的打一個 tag, （這個想法當中就沒有 qa），然後頂多就是 cherry-pick 挑幾個 commit 在合併成第二個 tag,  上線
