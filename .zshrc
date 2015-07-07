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
alias gfp="git fetch -p; git smart-pull; git status"
alias gb="git branch | cut -c 3- | pick"
alias a-s="cd ~/Projects/asset-server"
alias r-t="cd ~/Projects/readytraining"
alias c-d="cd ~/Projects/creating-deftly"
alias scripts="cd ~/Projects/_scripts"
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
alias rSH="killall Screenhero; sleep 2; open /opt/homebrew-cask/Caskroom/screenhero/latest/Screenhero.app"
alias Qbuild="r-t; bundle exec rake flash:qbuild"
alias DesktopBuild="r-t; cd build_course; bin/build_course --server http://localhost:2778 ~/Desktop/BUILD_COURSE_FOLDER --output-dir ../Build/Public --force --verbose; cd ..;"
alias RTbuild="r-t; cd build_course; bin/build_course --server http://localhost:2778 ~/Projects/Syncthing/Tech_Data_Course_Definition/TechData_comp_law_239_migrateXml --output-dir ../Build/Public --force --verbose; cd ..; bundle exec rake flash:qbuild; cd -"
alias RTserver="~/Projects/readytraining; node fake_riptide_server.js"
alias ASserver="scripts; startServer"
alias 4commit="for a in *; asset commit \$a --author \"St. John\""
alias notes="echo '+--------------------------------------------------------------------+
| Push to a different branch:                                        |
|   git push origin HEAD:<target-branch> -f                          |
| Testing the catalog, first:                                        |
|   export ASSET_CATALOG_TEST_STORE=192.168.59.103:27017/catalog     |
| Testing testing-deftly:                                            |
|   mocha; mocha --require blanket -R html-cov > coverage.html;      |
|   open coverage.html                                               |
+--------------------------------------------------------------------+'"
alias h="echo '+--------------------------------------------------------------------+
|      - git commands -     |             - short cuts -             |
+--------------------------------------------------------------------+
|  gup - git smart-pull     |  a-s     - cd ~/Projects/asset-server  |
|  gl  - git smart-log      |  r-t     - cd ~/Projects/readytraining |
|  gm  - git smart-merge    |  pr      - cd ~/Projects               |
|  gs  - git status         |  scripts - cd ~/Projects/_scripts      |
|  gss - git status --short |  s.      - sublime .                   |
|  gc  - git commit         |  ~       - cd ~/                       |
|  grh - git reset --hard   |  back    - cd to current BACK          |
|  gfp - git fetch -p;      |  setBack - alias back to cd to pwd     |
|         git smart-pull    |  cd..    - cd ..                       |
|          git status       |  cx      - chmod +x build              |
|  gb  - List branches(pick)|  rSH     - kills & restarts SH         |
|                           |  Qbuild  - Does a R-t quick build      |
|                           |  RTbuild - Does a full R-t build       |
|                           |  RTserver- Starts the r-t server       |
|                           |  ASserver- Starts the a-s server       |
|                           |  4commit - Commits all assets in .     |
+--------------------------------------------------------------------+
|                        - Config Commands -                         |
+--------------------------------------------------------------------+
| h       - Shows this help window                                   |
| notes   - Shows helpful notes                                      |
| prefs   - sublime ~/.zshrc                                         |
| refresh - source ~/.zshrc                                          |
| update  - dfm add -A;                                              |
|            dfm commit -m update;                                   |
|              dfm push                                              |
+--------------------------------------------------------------------+'"
alias help='h'

alias tmux="TERM=screen-256color-bce tmux"
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

source ~/.profile
source /usr/local/share/zsh/site-functions/_aws

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
