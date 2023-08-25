export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Enable vi mode
bindkey -v
# Remap <C-R> to invoke recursive history search
bindkey "^R" history-incremental-search-backward

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/shuvojit/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/shuvojit/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/shuvojit/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/shuvojit/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export GOPATH="/home/shuvojit/go"
export PATH=$PATH:$GOPATH/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export FLUTTER_HOME="/home/shuvojit/apps/flutter"
export FLUTTER_BIN="$FLUTTER_HOME/bin"
export PATH="$PATH:$FLUTTER_BIN"

# Conda cli tool path
export PATH="$PATH:/home/shuvojit/.local/bin"

alias lg=lazygit

# Custom Binaries
export PATH="$PATH:/home/shuvojit/apps/bin"

alias dk=docker
alias dkc=docker-compose
alias os="cd /home/shuvojit/Workspace/shuvojit/opensource"
alias scr="cd /home/shuvojit/Workspace/scratchfolder"
alias v=nvim
