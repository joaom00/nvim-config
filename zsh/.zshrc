export ZSH="/home/joaom/.oh-my-zsh"
export PATH=$HOME/.local/bin:$PATH
# source /usr/share/autojump/autojump.sh
# export PATH="$HOME/.miniconda/bin:$PATH"  # commented out by conda initialize

export GREENLIGHT_DB_DSN='postgres://greenlight:pa55word@localhost/greenlight'

setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef
zle_highlight=('paste:none')

unsetopt BEEP

autoload -Uz compinit
compinit -i
zstyle ':completion:*' menu select
_comp_options+=(globdots)

autoload -Uz colors && colors


export GO111MODULE='on'
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin
export ANDROID_HOME=/home/joaom/Android
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)
export ADB_SERVER_SOCKET=tcp:$WSL_HOST:5037

export EDITOR='nvim'

export DOTFILES=$HOME/.dotfiles
export PROJECTS_DIR=$HOME/dev
export JS_PROJECTS=$HOME/dev/js-projects
export RCT_PROJECTS=$HOME/dev/rct-projects
export GO_PROJECTS=$HOME/dev/golang

export GPG_TTY=$(tty)

ZSH_THEME="spaceship"

alias rank='sort | uniq -c | sort -nr | head'

alias vi='nvim'
alias vim='nvim'
# alias tmux='TERM=screen-256color-bce tmux'

# GIT ALIAS
alias gs='git status'
alias gc='git commit'
alias gpush='git push'
alias gpull='git pull'
alias gd='git diff'
alias gl='git lg'
alias ga='git add'
alias gadd='git add .'
alias gweb='gh repo view --web'

alias dots='cd $DOTFILES'

__new_branch() {git checkout -b $1}
alias gbn=__new_branch

__del_branch() {git branch -d $1}
alias gbd=__del_branch

alias ai='sudo apt install'
alias au='sudo apt update && sudo apt-get upgrade'

alias ya='yarn add'
alias yad='yarn add -D'
alias ni='npm install'
alias nid='npm install -D'

alias upgo='sh ~/update-golang.sh'

source ~/.zsh-nvm/zsh-nvm.plugin.zsh

__take() {
  mkdir $1;
  cd $1;
}

alias take=__take


plugins=(ssh-agent gpg-agent F-Sy-H zsh-autosuggestions zsh-completions)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
#  package       # Package version
  node          # Node.js section
  rust          # Rust section
  golang        # Go section
  docker        # Docker section
  conda         # conda virtualenv section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
# export DISPLAY=172.26.192.1:0.0

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/joaom/.miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/joaom/.miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/joaom/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/joaom/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

bindkey "^K" end-of-line
bindkey -s '^F' 'cd ~/dev/$(ls -p ~/dev | fzf)\n'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="/home/joaom/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
