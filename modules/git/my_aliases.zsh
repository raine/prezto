alias gdc='git diff --cached'
alias gst='git status -s' # git >1.7.0
alias glr='git pull --rebase'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gC='git commit -c HEAD -v'
# alias gca='git commit -v -a'
alias gca='git commit --amend'
alias gcal='git commit -a --amend --no-edit'
alias gb='git branch'
alias gba='git branch -a'
alias gap='git add --patch'
alias gapc='git add --patch && git commit'
alias glg="git log --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gsa='git stash apply'
alias gs='git stash'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias ga='git add'
alias gai='git add -i'
alias gspp='git stash && git pull --rebase && git push && git stash apply'

alias gr='git rebase'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gri='git rebase --interactive'

alias gf='git fetch'

alias gclm='echo -n $(git log -1 --format="%B")'
alias gpsu='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'

alias gPr='git pull-request'

function get_commit_message; {
  echo -n $(git show "$@" --format="%B" | head -1)
}

alias gCl='git status | sed -n "s/^.*both [a-z]*ed: *//p"'
alias gCa='git add $(gCl)'
alias gCe='git mergetool $(gCl)'
alias gCo='git checkout --ours --'
alias gCO='gCo $(gCl)'
alias gCt='git checkout --theirs --'
alias gCT='gCt $(gCl)'

# Merge (m)
alias gme='git merge'
alias gmC='git merge --no-commit'
alias gmF='git merge --no-ff --no-edit'
alias gma='git merge --abort'
alias gmt='git mergetool'

alias greh='git reset --hard'
alias gre='git reset'
