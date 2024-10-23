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
__conda_setup="$('/home/shuvojit/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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

# Direnv
eval "$(direnv hook zsh)"

# Alias
alias hs='cd /home/shuvojit/Workspace/healthi.in/healthi2.0-services/';

# PATH
export PATH=/home/shuvojit/Apps/scripts/:$PATH

#export COMPOSE_DOCKER_CLI_BUILD=1
#export DOCKER_BUILDKIT=1


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Android Sdk
export ANDROID_HOME=/home/shuvojit/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator

# JMETER_BIN
export JMETER_BIN=/home/shuvojit/Apps/apache-jmeter-5.4.3/bin/
export PATH=$PATH:$JMETER_BIN

# Flutter
export FLUTTER_BIN=/home/shuvojit/Apps/flutter_linux_3.7.0-stable/flutter/bin/
export PATH=$PATH:$FLUTTER_BIN

# AzCopy
export AZCOPY_BIN=/home/shuvojit/Apps/azcopy_linux_amd64_10.22.2
export PATH=$PATH:$AZCOPY_BIN


# Gopath
export GOPATH=/home/shuvojit/go/
export PATH=$PATH:$GOPATH/bin/
export PATH=$PATH:/usr/local/go/bin/


alias kc=kubectl

alias ljenkins="source /home/shuvojit/Workspace/scratchfolder/healthi-cli-go/.envrc.jenkins-healthi"

alias lg=lazygit

alias dk=docker
alias dkc=docker-compose

alias v="unset SERVER_PORT && nvim"

alias kpr="kubectl -n preprod"

# Kafka CLI Tools
export PATH=$PATH:/home/shuvojit/Apps/kafka_cli/bin/

# Chrome Web Driver
export PATH=$PATH:/home/shuvojit/Apps/chromedriver_linux64/

