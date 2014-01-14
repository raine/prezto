alias gdc='git diff --cached'
alias gst='git status -s' # git >1.7.0
compdef _git gst=git-status
alias glr='git pull --rebase'
compdef _git glr=git-pull
alias gl='git pull'
compdef _git gl=git-pull
alias gp='git push'
compdef _git gp=git-push
alias gd='git diff'
alias gc='git commit -v'
alias gC='git commit -c HEAD -v'
# alias gca='git commit -v -a'
alias gca='git commit --amend'
alias gb='git branch'
compdef _git gb=git-branch
alias gba='git branch -a'
compdef _git gba=git-branch
alias gap='git add --patch'
alias glg="git log --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
compdef _git glg=git-log
alias gsa='git stash apply'
compdef _git gsa=git-stash
alias gs='git stash'
compdef _git gs=git-stash
alias gcp='git cherry-pick'
alias gco='git checkout'
compdef _git gco=git-checkout
alias ga='git add'
compdef _git ga=git-add
alias gai='git add -i'
compdef _git gai=git-add
alias gspp='git stash && git pull --rebase && git push && git stash apply'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gr='git rebase'
alias gf='git fetch'
compdef _git gf=git-fetch

alias gclm='echo -n $(git log -1 --format="%B")'
alias gpsu='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'

alias gpr='git pull-request'

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
