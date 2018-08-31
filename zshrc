# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/ubuntu/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git, vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim' 
# if [[ -n $SSH_CONNECTION ]]; then                                                                                                                                                                                                                                                                                    
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Sid's aliases
alias coloDev='ssh ubuntu@10.0.65.104'
alias coloDev2='ssh ubuntu@10.0.66.70'
alias co='git checkout'
alias br='git branch'
alias st='git status'
alias cleanbuildall='CLEAN_ALL=1 ./src/scripts/dev/buildAll.sh'
alias buildjava='SKIP_PANTS=1 SKIP_CPP=1 SKIP_GO=1 SKIP_WIN=1 SKIP_LINUX=1 SKIP_AGENT=1 SKIP_WEB=1 CLEAN_JAVA=1 ./src/scripts/dev/buildAll.sh'
alias vmid="echo 'Local Dev VM'"
alias buildall='./src/scripts/dev/buildAll.sh'
alias stunnel='ssh siddharth.bidasaria@supporttunnel.colo.rubrik.com'
alias zshrc='vim ~/.zshrc'
alias bashrc='vim ~/.bashrc'
alias tu='ssh siddharth.bidasaria@supporttunnel.colo.rubrik.com'
alias genj='./tools/bzl_tools/build/gen_intellij_deps.sh'
function placeOrder() { ~/sdmain/lab/bin/bodega place order 'rktest_yml(location=COLO, platform='"$1"')';}
function gd() { git diff "@"; }
function cluster() { ~/sdmain/deployment/cluster.sh "$1" "$2"; }
function ipv6() { cat ~/sdmain/conf/"$1" | grep _ipv6;}
function bodega() { ~/sdmain/lab/bin/bodega "$@"; }
function dker() { ./deployment/docker/dev/"$@";}
function bootstrap() { RKTEST_YML=conf/"$1" src/scripts/tests/cluster_bootstrap_tool.py; }
function bootstrapProd() { RKTEST_YML=conf/"$1" src/scripts/tests/cluster_bootstrap_tool.py --mode prod; }
function bpo() { ~/sdmain/lab/bin/bodega place order 'rktest_yml(location=COLO, platform='"$1"') -t 1d';}
function beo() { ~/sdmain/lab/bin/bodega extend order "$@"; }
function bco() { ~/sdmain/lab/bin/bodega consume order "$@"; }
function bls() { ~/sdmain/lab/bin/bodega list orders; }

# Docker Aliases
alias stop4.1='~/workspaces/4.1/sdmain/deployment/docker/dev/stop.sh'
alias stop4.2='~/workspaces/4.2/sdmain/deployment/docker/dev/stop.sh'
alias stopmaster='~/workspaces/master/sdmain/deployment/docker/dev/stop.sh'

alias start4.1='~/workspaces/4.1/sdmain/deployment/docker/dev/start.sh'
alias start4.2='~/workspaces/4.2/sdmain/deployment/docker/dev/start.sh'
alias startmaster='~/workspaces/master/sdmain/deployment/docker/dev/start.sh'

alias exec4.1='~/workspaces/4.1/sdmain/deployment/docker/dev/exec.sh'
alias exec4.2='~/workspaces/4.2/sdmain/deployment/docker/dev/exec.sh'
alias execmaster='~/workspaces/master/sdmain/deployment/docker/dev/exec.sh'

alias status4.1='~/workspaces/4.1/sdmain/deployment/docker/dev/status.sh'
alias status4.2='~/workspaces/4.2/sdmain/deployment/docker/dev/status.sh'
alias statusmaster='~/workspaces/master/sdmain/deployment/docker/dev/status.sh'

alias go4.1='stopmaster && stop4.2 && start4.1 && exec4.1'
alias go4.2='stopmaster && stop4.1 && start4.2 && exec4.2'
alias gomaster='stop4.1 && stop4.2 && startmaster && execmaster'

function portforward() {
ssh -L$3:localhost:$3 siddharth.bidasaria@supporttunnel03.colo.rubrik.com -t /opt/rubrik/src/scripts/infra/tunnel/tunnel.py forward $1 $2 --local_port $3 --node_port $4
}

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/lib/arcanist/arcanist_wrapper:/usr/local/lib/eclipse:/usr/local/lib/zinc-0.3.5/bin:/usr/local/lib/byteman-download-3.0.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/lib/arcanist/arcanist_wrapper:/usr/local/lib/eclipse:/usr/local/lib/zinc-0.3.5/bin:/usr/local/lib/byteman-download-3.0.6/bin:/usr/local/lib/node-v8.4.0-linux-x64/bin/node:/usr/local/lib/node-v8.4.0-linux-x64/bin/:$PATH 

