export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
alias c="clear"
alias ez="vim $HOME/.zshrc"
alias server="python -m SimpleHTTPServer"
alias socks="ssh -vND 8888 kim"
alias dpsa="docker ps -a"
alias dcup="docker-compose up"
alias dcupd="docker-compose up -d"

alias u="cd .."
alias grep='grep --color=auto'
alias h='history'
alias j='jobs -l'
alias now='date +"%T"'
alias now='date +"%T"'

alias jlab='python3 -m jupyter lab'
alias wpm='python -m wpm'

alias py='ipython --TerminalInteractiveShell.editing_mode=vi'
bindkey 'kj' vi-cmd-mode

# Aliases
alias g='git'
alias gst='git status'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gcm='git checkout master'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias glg='git log --stat --max-count=5'
alias glgg='git log --graph --max-count=5'
alias gss='git status -s'
alias ga='git add'
alias gm='git merge'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'

alias gsr='git svn rebase'
alias gsd='git svn dcommit'

plugins=(vi-mode git tig docker docker-compose golang pip)
plugins+=( history history-substring-search httpie sudo vagrant postgres )
plugins+=( osx lein node npm jump gulp mosh )
plugins+=( zsh-autosuggestions )
plugins+=( zsh-syntax-highlighting )

export EDITOR=vim

export PATH="$HOME/.poetry/bin:$PATH"

export PATH="/Users/twardy/Library/Python/3.8/bin/:$PATH"

eval "$(pyenv init -)"

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fd() {
  DIR=`find * -maxdepth 4 -type d -print 2> /dev/null | fzf-tmux` \
    && cd "$DIR"
}

fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

source /Users/twardy/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/twardy/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f "/Users/twardy/.ghcup/env" ] && source "/Users/twardy/.ghcup/env" # ghcup-env

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/twardy/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/twardy/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/twardy/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/twardy/google-cloud-sdk/completion.zsh.inc'; fi

export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
