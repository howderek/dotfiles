# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

if hash zsh 2>/dev/null; then
        # User specific aliases and functions
        alias z="zsh"
        screen -D -R -S howderek -m zsh
fi

exit
