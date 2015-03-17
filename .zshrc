# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"
DEFAULT_USER="stjohn3D"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git-remote-branch gitfast brew npm osx pip colorize colored-man compleat)

source $ZSH/oh-my-zsh.sh
#options
# export PROMPT="%(0?.%{%{%}%}.%{%{%}%})%{%{%}%}%30<..<${vcs_info_msg_0_%%.}%<<%(!.❯❯❯.❯)%{%{%}%}%{%{%}%}"
setopt CSH_NULL_GLOB

# source ~/.git-completion.zsh

eval `ssh-agent -s`
# Example aliases
alias zshrc="$EDITOR ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias git='hub'
eval "$(hub alias -s)"
alias gup='git smart-pull'
alias gl='git smart-log'
alias gm='git smart-merge'
alias gs='git status'
alias gss='git status --short'
alias gc='git commit'
alias grh='git reset --hard'
alias gfp="git fetch -p; git pull; git smart-pull; git status"
alias gb="git branch | cut -c 3- | pick"
alias a-s="cd ~/Projects/asset-server"
alias r-t="cd ~/Projects/readytraining"
alias pr="cd ~/Projects"
alias s.="sublime ."
alias ~="cd ~/"
alias back="cd"
alias setBack='alias back="cd $(pwd)"'
alias cd..='cd ..'
alias cx="chmod +x build"
alias prefs="sublime ~/.zshrc"
alias update="dfm add -A; dfm commit -m'update'; dfm push"
alias refresh="source ~/.zshrc"
alias h="echo '+--------------------------------------------------------------------+
|      - git commands -     |             - short cuts -             |
+--------------------------------------------------------------------+
|  gup - git smart-pull     |  a-s     - cd ~/Projects/asset-server  |
|  gl  - git smart-log      |  r-t     - cd ~/Projects/readytraining |
|  gm  - git smart-merge    |  pr      - cd ~/Projects               |
|  gs  - git status         |  s.      - sublime .                   |
|  gss - git status --short |  ~       - cd ~/                       |
|  gc  - git commit         |  back    - cd to current BACK          |
|  grh - git reset --hard   |  setBack - alias back to cd to pwd     |
|  gfp - git fetch -p;      |  cd..    - cd ..                       |
|         git pull;         |  cx      - chmod +x build              |
|          git smart-pull   |                                        |
|            git status     |                                        |
|  gb  - List branches(pick)|                                        |
+--------------------------------------------------------------------+
|                        - Config Commands -                         |
+--------------------------------------------------------------------+
| h       - Shows this help window                                   |
| prefs   - sublime ~/.zshrc                                         |
| refresh - source ~/.zshrc                                          |
| update  - dfm add -A;                                              |
|            dfm commit -m update;                                   |
|              dfm push                                              |
+--------------------------------------------------------------------+'"

alias tmux="TERM=screen-256color-bce tmux"
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

source ~/.profile

# Customize to your needs...
export HAXE_STD_PATH="/usr/local/lib/haxe/std"
export EDITOR=sublime
export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
# export GOPATH=$HOME/Projects/go
# export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
# export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
export HOMEBREW_GITHUB_API_TOKEN=6ca2d6ebb00fa7d3ba76a439497b2424175f900c

export PATH=$PATH:/usr/local/heroku/bin:/usr/local/share/npm/bin:/usr/local/lib/node_modules:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin
export PATH=$PATH:$HOME/Projects/go/bin
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:.
export ASSET_CLIENT_DATABASE_URI=http://192.168.59.103:7474
export ASSET_CLIENT_STORAGE=~/Projects/assetsPileOfDisks

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(/usr/local/share/zsh-completions $fpath)

eval "$(direnv hook $0)"
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


compinit

PERL_MB_OPT="--install_base \"/Users/sjpeaster/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/sjpeaster/perl5"; export PERL_MM_OPT;

PERL_MB_OPT="--install_base \"/Users/sjpeaster/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/sjpeaster/perl5"; export PERL_MM_OPT;
