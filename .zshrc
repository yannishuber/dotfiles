# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /users/yannis/.restic-config

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "eendroroy/zed-zsh"
zplug "plugins/pass", from:oh-my-zsh

zplug load

