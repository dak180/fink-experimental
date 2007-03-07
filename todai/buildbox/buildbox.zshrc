# Sample ~/.zshrc in buildbox
# $Id: buildbox.zshrc,v 1.1 2006/03/15 12:49:12 shinra Exp $
if test x${PS1+set} = xset; then
    PS1='%m(buildbox) %~%# '
    bindkey -e
fi
