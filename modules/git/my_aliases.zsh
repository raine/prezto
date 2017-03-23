# enable single alias for both git add -p and grep + git add -p
function git-add-patch; {
  if (( $# == 0 )); then
    git add -p
  else
    git grep-add-patch $1
  fi;
}

alias gdc='git diff --cached'
alias gst='git status -s' # git >1.7.0
alias glr='git pull --rebase'
alias gl='git pull'
alias gp='git push'
alias gphm='git push heroku master'
alias gd='git diff'
alias gc='git commit -v'
alias gclm='git commit -c HEAD -v'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gcal='git commit -a --amend --no-edit'
alias gcur='git add README.md && git commit -m "update README"'
alias gcar='git add README.md && git commit --amend --no-edit && git push -f'
alias gb='git branch'
alias gba='git branch -a'
alias gap='git-add-patch'
alias gapc='git-add-patch && git commit -v'
alias gapca='git-add-patch && git commit -v --amend --no-edit'
alias gga='git grep-add'
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
alias gri='git rebase --interactive --autosquash'
alias garc='git add . && git rebase --continue'

alias gf='git fetch'

alias glcm='echo -n $(git log -1 --format="%B")'
alias gpuo='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gpur='git push -u raine $(git rev-parse --abbrev-ref HEAD)'

alias gpd='git push --delete --no-verify'
alias gpr='git pull-request'

alias gclf='git clean -fd'

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
# Previous branch
alias gmFF='git merge --no-ff --no-edit "@{-1}"'
alias gmFFF='git checkout develop && git pull --rebase && git merge --no-ff --no-edit "@{-1}" && git push && git checkout -'
alias gmFFX='git checkout develop && git pull --rebase && git merge --no-ff --no-edit "@{-1}" -X theirs && git push && git checkout -'
alias gma='git merge --abort'
alias gmt='git mergetool'
alias gmr='gitlab-merge-request'

alias greH='git reset --hard'
alias gre='git reset'
