source ~/.config/zsh/plugins/zsh-snap/znap.zsh
# znap source marlonrichert/zsh-autocomplete
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

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
plugins=(
	git
	zsh-autosuggestions
)

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

alias vi='nvim'
#alias vi='gvim'
#alias r='ranger'

alias so='source ~/.zshrc'
alias tso='tmux source-file ~/.tmux.conf'
alias tl='tmux list-sessions'
alias ta='tmux attach -d'
alias trn='tmux rename-window -t${TMUX_PANE} '
alias trns='tmux rename-session '

alias qmkf='qmk flash -kb hhkb/ansi -km anhdo'

alias vz='vi ~/.zshrc'
alias va='vi ~/.bash_aliases'
alias vh='vi ~/.skhdrc'
alias vs='vi ~/.ssh/config'
alias vt='vi ~/.tmux.conf'
alias vhhkb='vi /Users/anh/qmk_firmware/keyboards/hhkb/ansi/keymaps/anhdo/keymap.c'

alias ys='yabai -m space --layout bsp'
alias bstart='brew services start'
alias bsl='brew services list'
alias bstop='brew services stop'
alias brestart='brew services restart'
alias bi='brew install'
alias bu='brew uninstall'
alias bs='brew search'

alias lmk='latexmk -pdf'

alias anhssh='cp ~/.ssh_anh/id_rsa ~/.ssh_anh/id_rsa.pub ~/.ssh/'
alias thaossh='cp ~/.ssh_thao/id_rsa ~/.ssh/'

alias bernese='ssh bernese'
alias bernesex='ssh -X bernese'
alias tb6_bernese='ssh -N -L 6006:localhost:6006 bernese'
alias tb7_bernese='ssh -N -L 6007:localhost:6007 bernese'
alias tb8_bernese='ssh -N -L 6008:localhost:6008 bernese'
alias tb9_bernese='ssh -N -L 6009:localhost:6009 bernese'
alias nb_bernese='ssh -N -L 8889:localhost:8888 bernese'
alias scp_bernese_conf='scp bernese:/home/ado8/backup.tar.gz /Users/anh/Downloads'
alias bsync='rsync -av ado8@bernese.cs.jhu.edu:/home/ado8/ai-safety-challenge/tanksworld/tmp/ /Users/anh/Downloads/tmp/ --delete'
alias p2b='rsync -av /Users/anh/Documents/pplectures2022/ ado8@bernese.cs.jhu.edu:/scratch/ado8/pplectures2022/ '
alias l2b='rsync -av /Users/anh/Documents/ai-safety-challenge/tanksworld/ ado8@bernese.cs.jhu.edu:/home/ado8/ai-safety-challenge/tanksworld/'
alias syncroller='rsync -av ado8@bernese.cs.jhu.edu:/scratch/ado8/roller/ /Users/anhdo/Documents/RollerAI/Assets/result_server/'

alias jl='jupyter lab'

alias fs='grep -rnw . -e '

alias cdd='cd ~/Downloads'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias cd4='cd ../../../..'
alias cd5='cd ../../../../..'
alias cdo='cd ~/Documents'
alias docs='cd ~/Documents/docs'
alias cdtw='cd /Users/anh/Documents/ai-safety-challenge/tanksworld'
alias keymap='vi /home/anhdd14/qmk_firmware/keyboards/handwired/dactyl_manuform_carbonfet/5x7/keymaps/ferris/keymap.c'
alias qmkflash='qmk flash -kb handwired/dactyl_manuform_carbonfet/5x7 -km '

alias untar='tar -zxvf'
alias compress='tar -cvf'


alias gcl='git clone'
alias gc='git commit -m'
alias ga='git add'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gcr='git checkout -- '
alias gm='git merge'
alias grt='git remote'
alias grs='git reset'
alias gp='git push origin'
alias gfp='git add -u . && git commit -m "update" && git push origin'
alias gso='git remote show origin'
alias gs='git status'
alias gpl='git pull '
# alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gl="git log --graph --pretty='%C(yellow) %h %C(blue) %ar %C(red) %d %C(green) %an %C(reset)  %s' --date=short --decorate"


alias catw='conda activate tanksworld6'
alias ca2='conda activate py2'
alias ca='conda activate'
alias cde='conda deactivate'
alias cel='conda env list'
alias ci='conda install'
alias cs='conda search'
alias cu='conda uninstall'
alias clg='conda list|grep'

alias pi='pip install'
alias pu='pip uninstall'

alias jhupwd='echo "C2@UTeQsb7TzPiP"|xclip -sel clip'
alias cpdir='pwd|xclip'

alias bk='tar cvf backup.tar.gz .skhdrc .zshrc .zprofile .vim .bash_aliases .tmux.conf .vimrc .tex.snip .python.snip .ssh .config/ranger'

alias shdwn='sudo shutdown -P 0'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/anhdo/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/anhdo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/anhdo/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/anhdo/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
