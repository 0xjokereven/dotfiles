# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# default
# ZSH_THEME="robbyrussell"
ZSH_THEME="steeef"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# network
host_ip=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
port=7890
PROXY_SOCK5="socks5://${host_ip}:${port}"
export all_proxy="${PROXY_SOCK5}"

# nw.sh
alias nw="${HOME}/script/nw.sh"

# unset
alias uset='unset all_proxy'

# ~/.zshrc
alias sz='source ~/.zshrc'
alias vz='vim ~/.zshrc'
alias cz='cat ~/.zshrc'

# history
alias h='history'
alias hc='history -c'

# clear
alias c='clear'

# ===== set g environment variables =====
export GOROOT="${HOME}/.g/go"
# export PATH="${HOME}/bin:${HOME}/.g/go/bin:$PATH"
export G_MIRROR=https://golang.google.cn/dl/
unalias g

# go
export GOPATH="${HOME}/go"
export GOROOT="${HOME}/.g/go"
export GO_BIN="${GOPATH}/bin:${GOROOT}/bin"
export GOPROXY="https://goproxy.cn,direct"
export GO111MODULE=on

# enable system environment
alias gs='genie -s'
alias gi='genie -i'

# docker
alias std='systemctl start docker'
alias spd='systemctl stop docker'
alias ssd='systemctl status docker'
alias srtd='systemctl restart docker'

# lazydocker
alias lzd='lazydocker'

# nvm ls remote
alias nlr='nvm ls-remote'

# npm
alias nlg='npm list -g --depth 0'
alias ns='npm start'

# windows path
alias cdc='cd /mnt/c/'
alias cdd='cd /mnt/d/'
alias cdw='cd ${HOME}/Desktop/github.com/jokereven'
alias tailf='tail -f'

# other
alias ne='neofetch'
# rm -rf
alias rmf='rm -rf'

# clear my arch
# zcompdump of zsh
alias rfz='rm -rf ~/.zcompdump*'
# 清楚安装包缓存 & 清楚独立软件包 & 清楚日志
alias psc='sudo pacman -Scc & sudo pacman -Rns $(pacman -Qtdq) & journalctl --vacuum-size=50M'
# easy call
alias cl='rfz'

# tool
VSCODE_BIN="/mnt/d/install/Microsoft VS Code/bin"
PROTOC_BIN="$HOME/Download/protoc/bin"

# system
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH"
export PATH="/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$PATH"

# add `c/WINDOWS/system32` path is in order to use the support `vscode's` `remote-wsl`
export PATH="/mnt/c/WINDOWS/system32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/System32/Wbem:/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0/:/mnt/c/WINDOWS/System32/OpenSSH:$PATH"

# PATH
export PATH=$VSCODE_BIN:$PROTOC_BIN:$GO_BIN:$PATH

# neovim
alias vim='nvim'
alias vi='vi'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
