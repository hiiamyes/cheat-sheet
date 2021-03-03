[alias]
ac = !git add . && git commit
acn = !git add . && git commit -n
wip = !git add . && git commit -m wip && git poh
fdr = !git fetch origin develop:develop && git rebase -i develop
poh = !git push origin HEAD
pohf = !git push origin HEAD -f
