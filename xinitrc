#!/bin/sh

feh --bg-scale ~/Pictures/silly/vladstudio_nocturnal_1024x768.jpg

[[ -e ~/.Xresources ]] && xrdb -merge ~/.Xresources

[[ -z "$(pidof xcompmgr)" ]] && xcompmgr &            # Compositing for artificial transparency if desired
#[[ -z "$(pidof nm-applet)" ]] && nm-applet &           # NetworkManager applet for dwm systray (requires patch).
#[[ -z "$(pgrep apmd)" ]] && apmd &                      # Start apmd
[[ -z "$(pgrep syndaemon)" ]] && syndaemon -i 1 -k &    # Disables mouse whilst typing - very useful on laptops!
[[ -z "$(pgrep fetchmail)" ]] && fetchmail &            # start fetchmail
#[[ -z "$(pidof ssh-agent)" ]] && ssh-agent &           # Start ssh-agent to avoid having to enter pw each time
#[[ -z "$(pidof gpg-agent)" ]] && gpg-agent &           # Start gpg-agent
#[[ -z "$(pidof skyped)" ]] && skyped &                 # Start Skype Interface daemon for bitlbee
autocutsel -fork &                                    # autocutsel config for cut/paste
autocutsel -selection PRIMARY -fork &                 # autocutsel for cut/paste
[[ -z "$(pgrep dwmstatus)" ]] && dwmstatus &            # dwmstatus info for dwm statusbar
#[[ -z "$(pgrep emacs)" ]] && emacs --daemon &           # start emacs daemon
xmodmap ~/.xmodmaprc &
#exec dwm                                                # Run dwm, my preferred WM... at the moment.
#exec i3
#exec stumpwm
exec spectrwm
