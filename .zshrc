# Clear screen before showing taskbook
alias tb="clear; tb"

alias c="clear"

# USED FOR THE EMBEDDED SYSTEMS LECTURE
export LMIBASE=/home/yannis/workspace/se12/tp
export PATH="/opt/gnu-mcu-eclipse/arm-none-eabi-gcc/7.3.1-1.1-20180724-0637/bin:/home/yannis/flutter/bin:$PATH"

# FIX CURSOR IN SNAP APPS
export XCURSOR_PATH=$RUNTIME/usr/share/icons

export ZSH="/home/yannis/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

source $HOME/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo
fi

zplug load
export EDITOR=/usr/bin/vim

# added by travis gem
[ -f /home/yannis/.travis/travis.sh ] && source /home/yannis/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:/usr/local/go/bin


export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/yannis/.sdkman"
[[ -s "/home/yannis/.sdkman/bin/sdkman-init.sh" ]] && source "/home/yannis/.sdkman/bin/sdkman-init.sh"

export TERM=xterm-256color
