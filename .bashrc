# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Terminal Prompt Customization
orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]\n";
PS1+="\[${orange}\]\u";   # username
PS1+="\[${white}\]@";
PS1+="\[${yellow}\]\h:";   # host
PS1+="\[${green}\]\W";    # working directory
PS1+="\n";
PS1+="\[${green}\]\\$ \[${reset}\]";  # '$' (and reset color)
export PS1;

# Some alias I use
alias cat="bat"
alias sysu="sudo dnf upgrade"
alias vim="nvim"
alias brave='/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=brave --file-forwarding com.brave.Browser'
afetch
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
