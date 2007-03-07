# Sample ~/.bashrc in buildbox
# $Id: buildbox.bashrc,v 1.1 2006/03/15 12:49:11 shinra Exp $
if test x${PS1+set} = xset; then
    PS1='\h(buildbox):\w \u\$ '
    shopt -s checkwinsize
fi
