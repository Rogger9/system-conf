#!/bin/bash
# Example Bar Action Script for Linux.
# Requires: acpi, iostat, lm-sensors, aptitude.
# Tested on: Debian Buster(with newest spectrwm built from source), Debian Bullseye, Devuan Chimaera, Devuan Ceres
# This config can be found on github.com/linuxdabbler



mem() {
  mem=`free | awk '/Mem/ {printf "%dM/%dM\n", $3 / 1024.0, $2 / 1024.0 }'`
  echo -e "$mem"
}


cpu() {
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "CPU: $cpu%"
}


SLEEP_SEC=4

while :; do
  echo "$(cpu) | $(mem) |"
	sleep $SLEEP_SEC
done
