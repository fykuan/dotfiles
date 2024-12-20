cd "$HOME"

# 設定$PATH
PATHDIRS=(
    /opt/local/bin
    /opt/local/sbin
    /usr/local/sbin
    /usr/local/bin
    /usr/sbin
    /sbin
)
path=($path $PATHDIRS)

# 自己用的順手的alias
alias c="clear"
alias cd..="cd .."
alias cd...="cd ../.."
alias cls="clear"
alias g="grep --color=auto"
alias ssh="ssh -4 -C -e none"
alias vi="vim"
alias yh="ypcat hosts"
alias qotd="curl -s http://wowquote.tw/quote/random\?json\=1 | jq '.celebrity.name + \"：\" + .quote[0]' | cowsay -f www -d -n"
alias lock="i3lock -i ~/arch-wallpapers/wallhaven-333506.png"
alias rainbowstream="~/venv/bin/python ~/venv/bin/rainbowstream"
alias bb="byobu"
alias tmux="tmux attach || tmux"
alias sshhosts="find ~/.ssh/ -type f -name '*config*' | xargs sed -rn 's/^\s*Host\s*(.*)/\1/p' | sort"
alias tg="terragrunt"
alias tf="terraform"
alias pbc="pbcopy"
alias pbp="pbpaste"
alias grep="rg"

# 環境變數
export EDITOR VISUAL HOME
export BLOCKSIZE="k"
export EDITOR="vim"
export GIT_PAGER="less"
export LESS="-EfmrSwX"
export LSCOLORS="gxfxcxdxbxegedabagacad"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/sbin:/usr/sbin:/sbin:/sbin:/bin:/usr/sbin:/usr/local/bin:/usr/bin:/usr/games:/usr/local/sbin:/home/allenkuan/bin:$HOME/.local/bin:$HOME/Library/Python/3.9/bin:$PATH"
export PERL_CPANM_OPT="--mirror http://cpan.nctu.edu.tw/ --mirror http://cpan.cpantesters.org/"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export HOMEBREW_NO_ANALYTICS=1
export STARSHIP_CONFIG=~/.starship.toml
export AWS_DEFAULT_REGION="ap-northeast-1"

if command -v most &> /dev/null; then
    export PAGER="most"
    alias more="most"
else
    export PAGER="less"
    alias more="less"
fi

if command -v nvim &> /dev/null; then
    alias vim="nvim"
fi

if command -v bat &> /dev/null; then
    alias cat="bat -p --theme=TwoDark"
fi

if command -v eza &> /dev/null; then
    alias ls="eza -g"
fi

# 讓iterm2的tab名稱顯示：@${HOSTNAME.*}: ${PWD/#$HOME/~
HOSTNAME="`hostname`"
function precmd {
    echo -n "]0;@${HOSTNAME%%.*}: ${PWD/#$HOME/~}"
}
# 拿掉oh-my-zsh的AUTO_TITLE，否則上面設定的tab名稱會一直被蓋掉
DISABLE_AUTO_TITLE=true

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Support pip install --user
if [ -d $HOME/Library/Python/2.7/bin   ]; then
   export PATH=$HOME/Library/Python/2.7/bin:$PATH
fi

plugins=(git zsh-autosuggestions history copydir autojump)

if command -v pyenv &> /dev/null; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
fi

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
eval "$(/opt/homebrew/bin/brew shellenv)"
