# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# Which plugins would you like to load?
plugins=(
    git
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

############################## User configuration ##############################

# Common Personal Aliases
alias ll='ls -lah'
alias reload='source ~/.zshrc'
alias cnt='wc -l'

############################## git ##############################
alias g='git'
alias gb='git --no-pager branch -v'
alias gba='git branch -a'
alias gbD='git branch -D'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcssm='git commit -S -s -m'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout $(git_main_branch)'
alias gcd='git checkout $(git_develop_branch)'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gd='git diff'
alias gl='git --no-pager log --pretty=oneline --abbrev-commit -n 10'
alias glg='git log --stat'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'"
alias glols="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat"
alias glod="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"
alias glods="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glp="_git_log_prettily"
alias gm='git merge'
alias gps='git push'
alias gpd='git push --dry-run'
alias gpf='git push --force-with-lease'
alias gpf!='git push --force'
alias gpv='git push -v'
alias gpl='git pull'
alias gpr='git pull --rebase'
alias grb='git rebase'
alias gs='git status'
alias gsb='git status -sb'
alias gsh='git show'
alias gss='git status -s'

function acp() {
  git add .
  git commit -m "$1"
  git push
}
