alias cd..="cd .."
alias cls="clear"

alias g="git"
alias ga="git add"
alias gap="git add -p"
alias gc="git commit"
alias co="git checkout"
alias gp="git push"
alias gs="git status"
alias grb="git rebase -i"
alias grbc="git rebase --continue"
alias grba="git rebase --abort"
alias grbm="git rebase master"
alias gcp="git cherry-pick"
alias gd="git diff"
alias gclean="git clean -fd"
alias gb="git branch"
alias gcan="git commit --amend --no-edit"
alias gup=$'git pull --rebase && git remote update origin --prune && git fetch -p && for branch in $(git for-each-ref --format \'%(refname) %(upstream:track)\' refs/heads | awk \'$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}\'); do git branch -D $branch; done'
alias gbail="git reset --hard HEAD@{upstream} && git clean -fd"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative"
alias save="git add . && git commit -m f && git push"
gh() {
  git remote -v | head -n 1 | awk -F "@" '{print $2}' | awk -F " " '{print $1}' | sed 's/:/\//g' | sed 's/.git$//g' | awk '{print "http://"$1}' | xargs start
}
gnew() {
  local branchName=$1
  git checkout -b $branchName
  git push --set-upstream origin $branchName
}

alias c="code ."

alias depclean="rm -rf node_modules yarn.lock && yarn install"

alias ls="ls --color=auto -alhX"
