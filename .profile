# add the flatpak binaries to the desktop directories path
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/wilson/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"

# xrandr configuration
xrandr --output DP-2 --mode 2560x1440 --rate 120 --rotate right --pos 0x0
xrandr --output DP-0 --mode 3440x1440 --rate 120 --primary --pos 1440x560
