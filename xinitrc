# !/bin/sh

xrdb ~/.Xresources                                   # Load Xresources for console config

# [[ -z "$(pidof xcompmgr)" ]] && xcompmgr &           # Compositing for artificial transparency if desired
#[[ -z "$(pidof nm-applet)" ]] && nm-applet &         # NetworkManager applet for dwm systray (requires patch).
#[[ -z "$(pidof syndaemon)" ]] && syndaemon -i 1 -k & # Disables mouse whilst typing - very useful on laptops!
#fetchmail &                                          # Start fetchmail, configured to run as a daemon
#[[ -z "$(pidof ssh-agent)" ]] && ssh-agent &         # Start ssh-agent to avoid having to enter pw each time
#[[ -z "$(pidof gpg-agent)" ]] && gpg-agent &         # Start gpg-agent
#[[ -z "$(pidof skyped)" ]] && skyped &               # Start Skype Interface daemon for bitlbee
# autocutsel -fork &                                      # autocutsel config for cut/paste
# autocutsel -selection PRIMARY -fork &                   # autocutsel for cut/paste
#[[ -z "$(pidof dwmstatus)" ]] && dwmstatus &         # dwmstatus info for dwm statusbar

exec i3 # Run dwm, my preferred WM at the moment
