# $Id: xmodmap-ja.sh.in,v 1.1.1.1 2005/04/07 12:31:26 aida_s Exp $
: ${xinitrc_xmodmap_ja_enable=YES}
case "x$xinitrc_xmodmap_ja_enable" in
    x[Yy][Ee][Ss])
    xmodmap -e "keycode 101 = backslash bar"
    xmodmap -e "keycode 66 = Meta_L" -e "remove mod1 = Mode_switch" -e "add mod2 = Meta_L"
    ;;
esac
