# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
plugins=(git zsh-autosuggestions thefuck docker npm flutter)

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
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias rpc='shutdown -r now'
alias bgtheme='py /usr/local/bin/setBackground.py'
alias bgl='bgtheme light;clear'
alias bgd='bgtheme dark; clear'
alias bat='upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage"'
alias theme='bash -c  "$(wget -qO- https://git.io/vQgMr)"'
alias doc='cd ~/Documents/; clear'
alias dow='cd ~/Downloads/;clear'
alias bac='cd ../;clear'
alias androg='cd /home/alireza/.local/share/TalesOfAndrogyny;clear'
alias nconf='cd ~/.config/nvim && nvim'
alias updt='sudo nala update && sudo nala upgrade -y'
alias py='python3'
alias clip='xclip -selection clipboard'
alias notes='cd ~/Documents/Notes_obs/;nvim'
alias exp='nautilus . &;clear'
alias p='pwd | clip;clear'
alias c='clear'
alias s='tmux a'
alias n='nvim'
alias i='sudo nala install'
alias conf='nvim ~/.zshrc'
alias load='source ~/.zshrc && clear'
alias num='seq -f "%g."'
alias start-ssh='sudo systemctl start ssh;sudo systemctl enable ssh'
alias stop-ssh='sudo systemctl stop ssh;sudo systemctl disable ssh'
alias status-ssh='sudo systemctl status ssh'
alias srch='cd $(find ~/ -type d | fzf) && clear'
alias srcd='cd $(find . -type d | fzf) && clear'
alias srcn='nvim $(fzf)'
alias wifi='nmcli connection up id'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

PATH=~/.console-ninja/.bin:$PATH
eval $(thefuck --alias)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Custom function to change directory using fzf
function cdfzf() {
  srch
}

function nvfzf() {
  cd ~/
  local file
  file=$(fzf)
  if [[ -n "$file" ]]; then
    cd "$(dirname "$file")"
    nvim "$file"
  fi
}

function run_program(){
  if [[ -f "./run.sh" ]]; then 
    if [[ ! -x "./run.sh" ]]; then
      chmod +x ./run.sh
      echo "Executable permissions granted to run.sh"
    fi
    ./run.sh
  else 
    echo "run.sh not found"
  fi
}

# Bind Alt+f to the cdfzf function
bindkey -s '^[f' 'nvfzf\n'
bindkey -s '^[d' 'cdfzf\n'
bindkey -s '^[e' 'clear && la\n'
bindkey -s '^[r' 'run_program\n'
bindkey -s '^[n' 'notes\n'
bindkey -s '^[b' 'bac\n'
bindkey -s '^[a' 'c;neofetch\n'
