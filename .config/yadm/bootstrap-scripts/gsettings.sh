run_gsettings() {
    echo "Disable default background"
    gsettings set org.gnome.gnome-flashback.desktop draw-background false

    echo "Disable default screensaver"
    gsettings set org.gnome.gnome-flashback.screensaver false
}

run_gsettings
