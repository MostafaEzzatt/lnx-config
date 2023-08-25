#!/bin/bash

# Source : https://gitlab.com/dwt1/dotfiles/-/commit/e4bf2d9d637a64e83b1050f5bc8bcf86164d680b

dte(){
  dte="$(date +"%A, %B %d - %H:%M")"
  echo -e " $dte"
}

# upd(){
#   upd=`checkupdates | wc -l`
#   echo -e "⟳ $upd updates"
# }

mem(){
  mem=`free | awk '/Mem/ {printf "%d MiB/%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
  echo -e " $mem"
}

cpu(){
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  # echo -e "💻 $cpu% cpu"
  echo -e " $cpu% cpu"
}

while true; do
    # xsetroot -name "` date +"%b %e, %Y - %R" `"
    # sleep 1m    # Update time every minute
    # xsetroot -name "$(cpu) | $(mem) | $(upd) | $(dte)"
    xsetroot -name "$(cpu) | $(mem) | $(dte)"
    sleep 1s    # Update time every ten seconds
done &

xcompmgr&
xrandr -s 1920x1080
feh --bg-scale ./bg.jpg


