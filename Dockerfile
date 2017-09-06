from base/archlinux
#run pacman -Syu --quiet --noconfirm > /dev/null
#run pacman -S --noconfirm archlinux-keyring
run pacman -Syu --quiet --noconfirm gcc cmake make autoconf automake boost pkg-config guile2.0 guile git ninja gtest gmock sqlite3 webkit2gtk swig gwenhywfar aqbanking intltool libxslt libdbi libdbi-drivers > /dev/null
run echo en_US.UTF-8 UTF-8 >> /etc/locale.gen
run echo en_GB.UTF-8 UTF-8 >> /etc/locale.gen
run echo fr_FR.UTF-8 UTF-8 >> /etc/locale.gen
run locale-gen
copy testscript /
run chmod +x /testscript
entrypoint /testscript
