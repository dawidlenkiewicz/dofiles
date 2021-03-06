# Path to your oh-my-zsh installation.
export ZSH=/Users/dawidlenkiewicz/.oh-my-zsh
export CODE="$HOME/workspace"
# export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
export EDITOR="nvim"
export GOPATH=~/workspace/go
export PATH=$PATH:$GOPATH/bin
export FPATH="$FPATH:$HOME/.zsh/completions"

 #Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dawida"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby gem history history-substring-search terminalapp brew )

# User configuration

function d {
  cd "$CODE/$1"
}

# export PATH="/Users/dawidlenkiewicz/.rvm/gems/ruby-2.2.0/bin:/Users/dawidlenkiewicz/.rvm/gems/ruby-2.2.0@global/bin:/Users/dawidlenkiewicz/.rvm/rubies/ruby-2.2.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/dawidlenkiewicz/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
# alias vim="nvim"
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
# alias migrate="bundle exec rake db:migrate && RAILS_ENV=test bundle exec rake db:migrate"
# alias rollback="bundle exec rake db:rollback && RAILS_ENV=test bundle exec rake db:rollback"
alias migrate="rails db:migrate && rails db:rollback && rails db:migrate && RAILS_ENV=test rails db:migrate"
alias rollback="rails db:rollback && RAILS_ENV=test rails db:rollback"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ga='git add'
alias gcmsg='git commit -m'
alias gl='git pull'
alias gp='git push'
alias grb='git rebase'
alias c='clear'
alias solr='bundle exec rake sunspot:solr:start'
alias glop='git log -p'
alias gr='git reset'
alias gf='git fetch'
alias gst='git status -s'
alias glo='git log --pretty=format:"%C(yellow)%h %Creset%s%Cred [%cn]"'
alias garbi='git commit --all --amend --no-edit'
alias gwip='git commit -m "WIP"'
alias l='lsp -s'
alias plog='powder applog'
alias pr='powder restart'
alias parp='bundle exec rake parallel:prepare'
alias pars='bundle exec rake parallel:spec'
alias q='exit'
alias :q='exit'
alias b='bundle'
alias be='bundle exec'
alias safe="cd ~/workspace/safe-backend"
alias est="cd ~/workspace/estymator"
alias veh="cd ~/workspace/vehiculum"
alias lu="cd ~/workspace/vehiculum-luna"
alias off="cd ~/workspace/vehiculum-offers-app"
alias prun="git remote prune origin"
alias rb=rubocop

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
