#prompt

PROMPT='%F{green}%m%f:%F{green}%~%f__'

export PYTHONPATH=$PYTHONPATH:/usr/local/lib/pyhton3.7/dist-packages:/home/akio/lsnl/work/gcn-multi-src/tool/
export PYTHONPATH=$PYTHONPATH:/home/akio/lsnl/work/gcn-multi-src/module/
export PATH="$PATH:/home/akio/lsnl/work/gcn-multi-src/tool:"
export PATH="$PATH:/home/akio/bin:"
export PATH="$PATH:/home/akio:"
export PATH="$PATH:/home/akio/.tex:"
export PATH="$PATH:/home/akio/.emacs.d"
export TEXINPUTS="$TEXINPUTS:/path/fserv/ohsaki/inputs//"
export BIBINPUTS="$BIBINPUTS:/path/fserv/ohsaki/bib/"
export TEXINPUTS=.:~/lib/texmf//:/usr/share/texlive/texmf-dist//:/etc/texmf// 
export PATH=$PATH:/usr/local/go/bin
if [ -d $HOME/.tex/inputs ]; then
    export TEXINPUTS="$TEXINPUTS:$HOME/.tex/inputs/"
    export TEXINPUTS="$TEXINPUTS:$HOME/.tex/inputs/ieicejsp/"
fi


#alias

alias ls='ls --color'
alias vi='vim'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias vv='vim ~/.vimrc'
alias ve='vim ~/.emacs'
alias vz='vim ~/.zshrc'
alias ez='emacs ~/.zshrc&'
alias ee='emacs ~/.emacs&'
alias vr='vim ~/.config/awesome/rc.lua'
alias er='emacs ~/.config/awesome/rc.lua&'
alias c='clear'
alias cd=cdls
alias alsa="alsamixer"
# alias xbacklight='vim /sys/class/backlight/intel_backlight/brightness'
alias bl='vim /sys/class/backlight/intel_backlight/brightness'
alias left='xrandr --output eDP-1 --auto --left-of HDMI-1'
alias right='xrandr --output HDMI-1 --mode 1920x1080'
alias sz='source ~/.zshrc'
alias se='source ~/.emacs'
alias shutdown='systemctl poweroff'
alias ifup='sudo ifup wlp2s0'
alias ifdown='sudo ifdown wlp2s0'
alias open='mupdf'
alias scr='xfce4-screenshooter -r -s ~/Pictures'
alias scw='xfce4-screenshooter -w -s ~/Pictures'
alias python='python3'
alias pip='pip3'
alias mend='mendeleydesktop'
# alias field='~/bin/field'
alias llwc='ls -l | wc -l'
alias chrome='google-chrome > /dev/null 2>&1'

# function

function cdls() {
	\cd "$@" && ls
}
# ??ʸ????ʸ????̵?뤷???䴰????
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
# ?虜?虜??ʸ???????Ϥ??????Ͼ?ʸ???θ??????䴰???ʤ?
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'


# color

autoload -Uz compinit && compinit

# capital letter

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# compinit

setopt correct
setopt nolistbeep

# history

HISTFILE=~/.zsh/.zsh_history
HISTSIZE=100000
HISTFILESIZE=200000
setopt extended_history
setopt hist_ignore_dups
setopt share_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_verify
setopt hist_no_store
setopt hist_expand
setopt inc_append_history
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
function history-all { history -E 1 }

# if [ -e ~/.ssh ];then
#     eval "$(ssh-agent -s)"
#     export SSH_ASKPASS=/usr/bin/ssh-askpass
#     keychain -q ~/.ssh/id_rsa ~/.ssh/lsnl2_key
#     source ~/.keychain/$HOST-sh
#     unset  SSH_ASKPASS
# fi

typeset -U path PATH

PATH=$PATH":/home/user/zsh"
PATH="/home/akio/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/akio/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/akio/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/akio/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/akio/perl5"; export PERL_MM_OPT;

