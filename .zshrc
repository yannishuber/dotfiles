alias c="clear"

export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:/home/yannis/Documents/PRIVATE/code/scripts"
export PATH="$PATH:/opt/"

export GOROOT="/usr/local/go"
export GOPATH="/home/yannis/go"

export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:/home/yannis/Documents/HEIA-FR/s6/semester-project/tinygo/build"
export PATH="$PATH:/opt/kendryte-toolchain/bin"

export FZF_DEFAULT_COMMAND='fd --type f'
export ZSH_TMUX_AUTOSTART=false


# FIX CURSOR IN SNAP APPS
export XCURSOR_PATH=$RUNTIME/usr/share/icons/

export ZSH="/home/yannis/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
  git
  sudo
  docker
  docker-compose
  fzf
  tmux
)

source $ZSH/oh-my-zsh.sh

source $HOME/.zplug/init.zsh

source $HOME/.restic-config

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "eendroroy/zed-zsh"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "plugins/pass", from:oh-my-zsh
zplug "felixr/docker-zsh-completion"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo
fi

zplug load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR=/usr/bin/vim
#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
#export PATH_TO_FX=/usr/share/java
export LD_LIBRARY_PATH=".:$LD_LIBRARY_PATH:$JAVA_HOME"

#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  tmux attach || exec tmux new-session
#fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/yannis/.sdkman"
[[ -s "/home/yannis/.sdkman/bin/sdkman-init.sh" ]] && source "/home/yannis/.sdkman/bin/sdkman-init.sh"

