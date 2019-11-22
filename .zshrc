alias c="clear"

# Used for the embedded systems lecture
#export LMIBASE=/home/yannis/workspace/se12/tp
#export PATH="/opt/gnu-mcu-eclipse/arm-none-eabi-gcc/7.3.1-1.1-20180724-0637/bin:$PATH"

# Update path for flutter
#export PATH="/home/yannis/flutter/bin:$PATH"

#export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:/home/yannis/Documents/PRIVATE/code/scripts"
export PATH="$PATH:/opt/node-v12.13.0-linux-x64/bin"
export PATH="$PATH:/opt/Visual_Paradigm_15.2/"
export PATH="$PATH:/opt/protoc-3.10.1/bin/"
export PATH="$PATH:/opt/"

# FIX CURSOR IN SNAP APPS
export XCURSOR_PATH=$RUNTIME/usr/share/icons/

export ZSH="/home/yannis/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
  git
  sudo
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

source $HOME/.zplug/init.zsh

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

# added by travis gem
#[ -f /home/yannis/.travis/travis.sh ] && source /home/yannis/.travis/travis.sh
